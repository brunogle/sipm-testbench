import subprocess
import matplotlib.pyplot as plt
import numpy as np
import sys
import rp_host

def group_bins(data, group_size):
    """Group the histogram bins by averaging every group_size consecutive values."""
    n = len(data)
    grouped = [
        sum(data[i:i + group_size]) / group_size
        for i in range(0, n, group_size)
    ]
    return grouped


def plot_hist(filename, group_size):
    with open(filename, 'r') as f:
        data = [int(line) for line in f if line.strip()]

    if group_size > 1:
        data = group_bins(data, group_size)

    x = range(len(data))

    # Fast plotting
    
    plt.figure(figsize=(10, 4))
    plt.step(x, data, where='mid')
    plt.xlabel(f"Bin (grouped by {group_size})")
    plt.ylabel("Value")
    plt.title("Histogram (Grouped)")
    plt.tight_layout()
    plt.yscale("log")
    plt.grid()
    plt.show()

def run_get_hist(integration_time, remote_samples_file):
    command = rp_host.bin_dir + "gethist"

    result = subprocess.run(
        ["ssh", rp_host.host, command, remote_samples_file, str(integration_time)],
        capture_output=True,
        text=True
    )    

    print(result.stdout)
    print(result.stderr)

def get_remote_temp_file():

    result = subprocess.run(
        ["ssh", rp_host.host, "mktemp", "hist.XXXXXXX"],
        capture_output=True,
        text=True
    )    
    return result.stdout.rstrip("\n")

def read_samples_file(remote_samples_file, local_samples_file):

    subprocess.run([
        "scp",
        f"{rp_host.host}:{remote_samples_file}",
        local_samples_file
    ], check=True)

if __name__ == "__main__":

    if(len(sys.argv) > 1):
        integration_time = sys.argv[1]
    else:
        print("Specify integration time in ms")
        exit()

    if(len(sys.argv) > 2):
        group_size = sys.argv[2]
    else:
        group_size = 1



    remote_samples_file = get_remote_temp_file()
    run_get_hist(integration_time, remote_samples_file)
    read_samples_file(remote_samples_file, "./hist.txt")
    plot_hist("./hist.txt", group_size)