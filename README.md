# 4-area-network
This repository contains the 4-area network for relaibility studies in MATPOWER and pandapower formats. The network is described in an [article](https://www.sciencedirect.com/science/article/pii/S2352340920313779) and avaiable at a [zenodo repository](https://zenodo.org/record/3491916#.YV65FflBzFc).

![Four area test network](4-area/4_area.jpg)

## Conversion code
There are two scripts for conversion.
  * convert_to_mat.m reads in csv files and saves mpc struct in a mat file.
  * convert_from_matpower_to_pp.ipynb reads in the mat file and saves the network in a pandapower json file.

## Case files
In the folder 4-area there is a mat file containing the network in the MATPOWER case format and a json file containing the network in the pandapower format.
