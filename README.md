# Real datasets

## Human mitochondrial genomes

Files in `mt` folder is composed of 672 sequences with the longest length of 16,578 bp and the shortest length of 16,556 bp, which is highly similar to each other (>99%), which named `mt1x` in `mt` folder. The duplicated dataset, which was duplicated 20, 50 and 100 times to test the performance of WMSA on larger scale data. The duplicated mtDNA datasets are named mt20x, mt50x and mt100x in `mt` folder.

```bash
# download
git clone https://github.com/malabz/WMSA-dataset.git

cd mt

# decompress mt1x file for example
unzip mt1x.zip
```

## Respiratory syndrome coronavirus 2 genomes

Respiratory syndrome coronavirus 2 (SARS‑CoV‑2) is an RNA virus, which causes coronavirus disease 2019  and is responsible for the COVID-19 pandemic. Its sequences are all recorded in the form of DNA for the convenience of sequencing and recording. SARS-CoV-2 genomes in high quality (without ambiguous nucleotides) were download from GISAID website (https://www.gisaid.org, updated on October 12, 2020).

Files in `SARS-COV-2` folder contains three files: `Complete156` has 156 sequences with the longest length of 29,857 bp and the shortest length of 29,409 bp, which is highly similar to each other (>99%); `Complete24t` has 24,310 sequences with the longest length of 29,919 bp and the shortest length of 29,146, which is highly similar to each other (>99%). `Mix1t` has 1,020 sequences with the longest length of 29,981 bp and the shortest length of 64 bp, which is not highly similar to each other.

```bash
# downlaod
git clone https://github.com/malabz/WMSA-dataset.git

cd mt

# decompress Complete156 file for example
unzip Complete156.zip
```

## Benchmark from www.drive5.com/bench

<a href="http://www.drive5.com/bench/bench.tar.gz" download="bench.tar.gz">`bench.tar.gz`</a> is a collection of protein sequence alignment benchmarks including BALIBASE v3, PREFAB v4, OXBENCH, and SABRE. These have been converted to a standard FASTA format that is convenient for further analysis.

```bash
# download
wget http://www.drive5.com/bench/bench.tar.gz
```

See `README.md` in `benchmark` folder to get more information.
