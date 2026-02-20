import subprocess
import matplotlib.pyplot as plt
import numpy as np
import sys
import rp_host

def plot_samples(filename, sample_rate_hz=125e6):
    # Read samples from file
    with open(filename, 'r') as f:
        signal_raw = np.array([-int(line.strip()) for line in f if line.strip()], dtype='float64')

    N = len(signal_raw)
    sample_indices = np.arange(N)
    time_us = sample_indices / sample_rate_hz * 1e6  # Convert to microseconds

    # Plot setup
    fig, ax1 = plt.subplots(figsize=(10, 4))
    ax1.plot(sample_indices, -signal_raw/8.192, marker=None)
    #ax1.set_yscale('log')
    ax1.set_xlabel('Muestra')
    ax1.set_ylabel('Amplitud (mV)')
    ax1.grid(True)

    # Create synchronized top axis
    ax2 = ax1.secondary_xaxis('top', functions=(
        lambda x: x / sample_rate_hz * 1e6,      # index to time (µs)
        lambda t: t * sample_rate_hz / 1e6       # time (µs) to index
    ))
    ax2.set_xlabel('Tiempo (µs)')

    ax3 = ax1.secondary_yaxis('right', functions=(
        lambda c: c * 8.192,      # index to time (µs)
        lambda v: v / 8.192       # time (µs) to index
    ))


    ax3.set_ylabel('Amplitud (Cuentas de ADC)')

    plt.title(f'Lectura ADC')
    ax1.legend(loc='upper right')
    plt.tight_layout()
    plt.show()

def run_sample_adc(samples, remote_samples_file):
    command = rp_host.bin_dir + "sampleadc"

    result = subprocess.run(
        ["ssh", rp_host.host, command, remote_samples_file, str(samples)],
        capture_output=True,
        text=True
    )    

    print(result.stdout)
    print(result.stderr)

def get_remote_temp_file():

    result = subprocess.run(
        ["ssh", rp_host.host, "mktemp", "adcsamples.XXXXXXX"],
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

    samples = sys.argv[1]

    remote_samples_file = get_remote_temp_file()
    run_sample_adc(samples, remote_samples_file)
    read_samples_file(remote_samples_file, "./samples.txt")
    plot_samples("./samples.txt")
