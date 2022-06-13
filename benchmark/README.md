## Folder contents

This folder contains `benchmark_result.zip` and some shell scripts `*.sh.`

## Before test

Before testing the program, please download and extract files from <a href="http://www.drive5.com/bench/bench.tar.gz" download="bench.tar.gz">`bench.tar.gz`</a>.

```bash
wget http://www.drive5.com/bench/bench.tar.gz
tar xvf bench.tar.gz
mv bench1.0 dataset # The shell script use dataset folder for further test
```

## Configuring the test program

See [here](https://github.com/malabz/WMSA#readme) for configuring `WMSA`.

(Optional) For testing `MAFFT`, we recommended use `conda` configuration. The command of configuration like this:

```bash
conda create -n mafft
conda activate mafft
conda install mafft
mafft --help
```

## Configuring the shell scripts

If the `wmsa` and `MAFFT` program is configured by `conda`, the scripts can be directly used for testing the results. Otherwise, change line 6 ( `program_name` ) in order to specify the location of the program.

## Run shell scripts

```bash
bash *.sh dataset_name
```

For exapmle, running `wmsa` on dataset `bali2dna` in threshold `0.8` by typing:

```bash
bash run.wmsa.0.8.sh bali2dna
```

The result file is located in `dataset/bali2dna/wmsa.0.8.txt` .

## Results

The file `benchmark_result.zip` contains folders, each folder contains five test results: `MAFFT-FFT-NS-1 (mafft.fftns1.txt)`, `MAFFT-FFT-NS-2 (mafft.fftns2.txt)`, `WMSA-0.8 (wmsa.0.8.txt)`, `WMSA-0.9 (wmsa.0.9.txt)` and `WMSA-0.95 (wmsa-0.95.txt)` .
