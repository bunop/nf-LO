nextflow LiftOver workflow
##########################

*nf-LO* is a `nextflow`_ workflow for generating genome alignment files compatible with the `UCSC liftOver`_ utility for converting genomic coordinates between assemblies. 
It can automatically pull genomes directly from `NCBI`_ or `iGenomes`_ (or the user can provide fasta files) and supports
four different aligners (`lastz`_, `blat`_, `minimap2`_, `GSAlign`_). 
Together these provide solutions for both different-species (lastz and minimap2) as well as same-species alignments (blat and GSAlign), 
with both standard and ultra-fast algorithms from a source to a target genome. 
It comes with a series of presets, allowing alignments of genomes depending on their genomic distance (near, medium and far). 

Updates
==================
**UPDATE 14/12/2022**: Now the NCBI/iGenomes accession have to be provided in the `--source`/`--target` field, and then use the appropriate `--igenomes_source`/`--ncbi_source` and `--igenomes_target`/`--ncbi_target` as a modifier.  

**UPDATE 08/06/2022**: fixed a bug in which lastz would not align small fragmented genomes, as well as small contigs, in the source assembly. Anyone interested in these small contigs should discard the previous version of `nf-LO` using `nextflow drop evotools/nf-LO`, and repeat the analyses.  

**UPDATE 07/06/2022**: Added the possibility of providing customized conservation scores in the q-format via the `--qscores` flag.  


.. _nextflow: https://www.nextflow.io/
.. _iGenomes: https://emea.support.illumina.com/sequencing/sequencing_software/igenome.html
.. _lastz: https://github.com/UCSantaCruzComputationalGenomicsLab/lastz
.. _blat: https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/
.. _GSAlign: https://github.com/hsinnan75/GSAlign
.. _minimap2: https://github.com/lh3/minimap2
.. _NCBI: https://www.ncbi.nlm.nih.gov/datasets/
.. _UCSC liftover: https://genome.ucsc.edu/cgi-bin/hgLiftOver

Quick start
==================
.. toctree::
  :maxdepth: 1
  :caption: Step-by-step example
  
  step
  

User guide
==================
.. toctree::
  :maxdepth: 1
  :caption: Installation
  
  install
  customconf

.. toctree::
  :maxdepth: 0
  :caption: Components

  inputs
  resources
  alignments
  chain
  liftover
  output
  reports
  citations


Release notes
==================
.. toctree::
  :maxdepth: 0
  :caption: Notes 

  notes