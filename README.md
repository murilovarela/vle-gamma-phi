# Gamma-phi vapor-liquid equilibrium (VLE) formulation
This is a package of fortran code to generate vapor-liquid equilibrium predicition points using the gamma-phi formulation. 
You can learn more about VLE calculation with this [article](http://medium.com). 
# Features
There are code to evaluate bulble and dew points fixing pressure or temperature.  
  - BULB-P
  - DEW-P
  - BULB-T
  - DEW-T
# Installation
### Compiler
You may need to download a fortran compiler. I recommend gfotran.
```sh
$ sudo apt-get install gfortran
```
### Running the code
```sh
$ git clone git@github.com:sergiomurilovarela/vle-gamma-phi.git
$ cd vle-gamma-phi
$ gfortran BULBP.f90 -o BULBP
$ ./BULBP
```
Then open the output.txt file generated in the root-pragram folder. 
