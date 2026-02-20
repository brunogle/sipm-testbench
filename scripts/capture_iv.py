import subprocess
import matplotlib.pyplot as plt
import numpy as np
import sys
import rp_host

def plot_iv(filename):


    data = np.loadtxt(filename)
    voltage = data[:, 0]
    current = data[:, 1]

    plt.figure()
    plt.plot(voltage, current, marker='o')
    plt.xlabel("Voltaje (V)")
    plt.ylabel("Corriente (nA)")
    plt.title("Curva I-V")
    plt.grid(True)


    plt.show()


    return voltage, current

def run_iv_curve(vmin, vmax, deltav, remote_samples_file):
    command = rp_host.bin_dir + "ivcurve"

    # result = subprocess.run(
    #     ["ssh", rp_host.host, command, remote_samples_file, str(vmin), str(vmax)],
    #     capture_output=True,
    #     text=True
    # )    

    process = subprocess.Popen(
        ["ssh", rp_host.host, command, remote_samples_file, str(vmin), str(vmax), str(deltav)],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,          # Decode bytes to string
        bufsize=1           # Line-buffered
    )
    # Print output in real time
    for line in process.stdout:
        print(line, end="")  # Already contains newline

    process.stdout.close()
    return_code = process.wait()

    #print(result.stdout)
    #print(result.stderr)

def get_remote_temp_file():

    result = subprocess.run(
        ["ssh", rp_host.host, "mktemp", "ivcurve.XXXXXXX"],
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

    vmin = sys.argv[1]
    vmax = sys.argv[2]
    deltav = sys.argv[3]

    remote_samples_file = get_remote_temp_file()
    run_iv_curve(vmin, vmax, deltav, remote_samples_file)
    read_samples_file(remote_samples_file, "./ivcurve.txt")
    plot_iv("./ivcurve.txt")
