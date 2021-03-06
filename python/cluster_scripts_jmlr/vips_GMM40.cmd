#!/bin/bash
#SBATCH -A project00790
#SBATCH -J vips_gmm40
#SBATCH --mail-type=ALL
# Bitte achten Sie auf vollständige Pfad-Angaben:
#SBATCH -e /work/scratch/j_arenz/jobs_jmlr/vipsgmm40.err.%j
#SBATCH -o /work/scratch/j_arenz/jobs_jmlr/vipsgmm40.out.%j
#
#SBATCH -n 6      # Anzahl der MPI-Prozesse
#SBATCH -c 1     # Anzahl der Rechenkerne (OpenMP-Threads) pro MPI-Prozess
#SBATCH --mem-per-cpu=4096   # Hauptspeicher pro Rechenkern in MByte
#SBATCH -t 2-00:00:00     # in Stunden, Minuten und Sekunden, oder '#SBATCH -t 10' - nur Minuten

srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/1/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &
srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/2/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &
srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/3/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &
srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/4/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &
srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/5/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &
srun -N1 -n1 -c1 --time=2-00:00:00 --mem-per-cpu=4096 python3 -c 'from experiments.VIPS.Target_GMM import *; run_on_cluster("default", "VIPS_GMM40/default/init1/6/", num_dimensions=40, num_initial=1, rate_of_dumps=10);'  &


wait
