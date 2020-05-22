# nf-LO
## Nextflow LiftOver pipeline

## Introduction
*nf-LO* is a nextflow implementation of the UCSC liftover pipeline. It comes with a series of presets, allowing alignments of genomes depending on their distance (near, medium and far). It also supports three different aligner ([lastz](https://github.com/UCSantaCruzComputationalGenomicsLab/lastz), [blat](https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/) and [minimap2](https://github.com/lh3/minimap2)), therefore providing different-species (lastz), same-species (blat) and ultra-fast liftovers from a source to a target genome.  

## Dependencies
### Nextflow
Nextflow needs to be installed and in your path to be able to run the pipeline. 
To do so, follow the instructions [here](https://www.nextflow.io/)

### Containers
We are working on a docker and singularity builds shipping all the dependencies neede for the pipeline. 
Once this will be ready, this will be the recommended mode of use of the software.

### Manual installation
In the case the system doesn't support docker/singularity, it is possible to download them all through the script install.sh.
This script will download a series of software and save them in the ./bin folder, including:
 1. [lastz](https://github.com/UCSantaCruzComputationalGenomicsLab/lastz)
 2. [blat](https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/)
 3. [minimap2](https://github.com/lh3/minimap2)
 4. Several [kent tools](https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/)
 5. maf-convert from [last](http://last.cbrc.jp/)
Remember to add the ```bin``` folder to your path with the command:
```
export PATH=$PATH:$PWD/bin
```

Now you're ready to go!


## Running the pipeline
To run the pipeline locally, simply copy ```main.nf``` in the folder where you want to run the analysis and type:
```
nextflow run main.nf \
    --source $PWD/test/JZEF01.1.fsa_nt \
    --target $PWD/test/JZEG01.1.fsa_nt \
    --outdir $PWD/test/OUTPUT_NEW \
    --distance medium \
    --aligner minimap2 \
    --tgtSize 1000000 \
    --srcSize 500000 \
    --srcOvlp 100000 
```
This will run the pipeline on the two toy genomes provided and return a liftover. It will perform the analysis chunking the target in 1Mb windows, and the source in 500Kb, with 100Kb extra bytes as overlaps (600Kb long in total). The aligner will be minimap2 and the distance set to medium (asm10). The whole process should take few minutes to complete. Using other aligners will likely increase the run time, but should still be reasonably low.

If you want to run the pipeline using the docker container, you can add ```-with-docker tale88/nf-lo``` at the end of your command line, and this should run the pipeline downloading the docker container specified inclusive of all the dependencies.

