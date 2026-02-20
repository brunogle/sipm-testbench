import subprocess
import matplotlib.pyplot as plt
import numpy as np
import sys
import rp_host

def run_setvsipm(vsipm):
    command = rp_host.bin_dir + "setvsipm"

    result = subprocess.run(
        ["ssh", rp_host.host, command, str(vsipm)],
        capture_output=True,
        text=True
    )    

    print(result.stdout)
    print(result.stderr)

if __name__ == "__main__":

    vsipm = sys.argv[1]

    run_setvsipm(vsipm)
