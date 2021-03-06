#!/bin/bash
#SBATCH -A project00490
#SBATCH -J vipsM_gc
#SBATCH --mail-type=ALL
# Bitte achten Sie auf vollständige Pfad-Angaben:
#SBATCH -e /home/j_arenz/jobs/vipsERM_gc.err.%j
#SBATCH -o /home/j_arenz/jobs/vipsERM_gc.out.%j
#
#SBATCH -n 6     # Anzahl der MPI-Prozesse
#SBATCH -c 4    # Anzahl der Rechenkerne (OpenMP-Threads) pro MPI-Prozess
#SBATCH --mem-per-cpu=1000   # Hauptspeicher pro Rechenkern in MByte
#SBATCH -t 2-00:00:00     # in Stunden, Minuten und Sekunden, oder '#SBATCH -t 10' - nur Minuten

srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/1", num_threads=4);'  &
srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/2", num_threads=4);'  &
srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/3", num_threads=4);'  &
srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/4", num_threads=4);'  &
srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/5", num_threads=4);'  &
srun -n1 -c4 --time=2-00:00:00 --mem-per-cpu=1000 python3 -c 'from experiments.VIPS.german_credit import *; run_on_cluster("explorative40", "VIPS_german_credit_mt/explorative/6", num_threads=4);'  &


wait
