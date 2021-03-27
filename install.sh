#!/bin/bash

if [ ! -e ./bin ]; then 
    mkdir ./bin; 
fi
cd bin

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    #CYGWIN*)    machine=Cygwin;;
    #MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo ${machine}

if [ ${machine} == "Linux" ]; then
    if [ -e axtChain ]; then rm axtChain; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/axtChain 
    if [ -e axtToMaf ]; then rm lavToPsl; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/axtToMaf
    if [ -e blat ]; then rm blat; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/blat
    if [ -e gfClient ]; then rm gfClient; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/gfClient
    if [ -e gfServer ]; then rm gfServer; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/blat/gfServer
    if [ -e chainAntiRepeat ]; then rm chainAntiRepeat; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainAntiRepeat
    if [ -e chainMergeSort ]; then rm chainMergeSort; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainMergeSort
    if [ -e chainNet ]; then rm chainNet; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainNet
    if [ -e chainPreNet ]; then rm chainPreNet; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainPreNet
    if [ -e chainStitchId ]; then rm chainStitchId; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainStitchId
    if [ -e chainSplit ]; then rm chainSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainSplit
    if [ -e chainToAxt ]; then rm lavToPsl; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/chainToAxt 
    if [ -e faSplit ]; then rm faSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faSplit
    if [ -e faSize ]; then rm faSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faSize
    if [ -e faToTwoBit ]; then rm faToTwoBit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/faToTwoBit
    if [ -e lavToPsl ]; then rm lavToPsl; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/lavToPsl
    if [ -e liftOver ]; then rm liftOver; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/liftOver
    if [ -e liftUp ]; then rm liftUp; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/liftUp
    if [ -e netChainSubset ]; then rm netChainSubset; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/netChainSubset
    if [ -e netSyntenic ]; then rm netSyntenic; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/netSyntenic
    if [ -e twoBitInfo ]; then rm twoBitInfo; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/twoBitInfo
elif [ ${machine} == "Mac" ]; then
    if [ -e axtChain ]; then rm axtChain; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/axtChain
    if [ -e axtToMaf ]; then rm chainToAxt; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/axtToMaf
    if [ -e blat ]; then rm blat; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/blat/blat
    if [ -e gfClient ]; then rm gfClient; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/blat/gfClient
    if [ -e gfServer ]; then rm gfServer; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/blat/gfServer
    if [ -e chainAntiRepeat ]; then rm chainAntiRepeat; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainAntiRepeat
    if [ -e chainMergeSort ]; then rm chainMergeSort; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainMergeSort
    if [ -e chainNet ]; then rm chainNet; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainNet
    if [ -e chainPreNet ]; then rm chainPreNet; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainPreNet
    if [ -e chainStitchId ]; then rm chainStitchId; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainStitchId
    if [ -e chainSplit ]; then rm chainSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainSplit
    if [ -e chainToAxt ]; then rm chainToAxt; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/chainToAxt
    if [ -e faSplit ]; then rm faSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/faSplit
    if [ -e faSize ]; then rm faSplit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/faSize
    if [ -e faToTwoBit ]; then rm faToTwoBit; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/faToTwoBit
    if [ -e lavToPsl ]; then rm lavToPsl; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/lavToPsl
    if [ -e liftOver ]; then rm liftOver; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/liftOver
    if [ -e liftUp ]; then rm liftUp; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/liftUp
    if [ -e netChainSubset ]; then rm netChainSubset; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/netChainSubset
    if [ -e netSyntenic ]; then rm netSyntenic; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/netSyntenic
    if [ -e twoBitInfo ]; then rm twoBitInfo; fi; wget https://hgdownload.soe.ucsc.edu/admin/exe/macOSX.x86_64/twoBitInfo
fi

# Install lastz
if [ -e lastz ]; then rm lastz; fi 
git clone https://github.com/UCSantaCruzComputationalGenomicsLab/lastz.git && \
    mv lastz lastz-src && \
    cd lastz-src && \
    make && \
    cp src/lastz ../ && \
    cp tools/build_fasta_hsx.py ../ && \
    cp tools/hsx_file.py ../ && \
    cp tools/hassock_hash.py ../ && \
    cd .. && \
    rm -rf ./lastz-src

# Install maf-converter from last
if [ -e maf-convert ]; then rm maf-convert; fi; 
wget http://last.cbrc.jp/last-1061.zip && unzip last-1061.zip && \
    cd ./last-*/ && \
    make && \
    cd src/ && \
    cp lastdb8 lastdb lastal8 lastal last-split8 last-split last-pair-probs last-merge-batches ../../ && \
    cd .. && \
    mv scripts/* ../ && cd ../ && \
    rm -r ./last-*

# Install GSAlign
git clone https://github.com/hsinnan75/GSAlign.git && \
    mv GSAlign GSAlign_src && \
    cd GSAlign_src && \
    make all && \
    cp bin/* ../ && \
    cd ../ && \
    rm -r GSAlign_src

# Install crossmap
pip install CrossMap

# Install minimap2
if [ ${machine} == "Linux" ]; then
    if [ -e minimap2 ]; then rm minimap2 paftools.js k8; fi
    wget https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17_x64-linux.tar.bz2 && \
        tar -xvf minimap2-2.17_x64-linux.tar.bz2 && \
        mv minimap2-2.17_x64-linux/minimap2 ./ && mv minimap2-2.17_x64-linux/paftools.js ./ && mv minimap2-2.17_x64-linux/k8 ./ && \
        rm -rf ./minimap2-*
elif [ ${machine} == "Mac" ]; then
    wget https://github.com/lh3/minimap2/releases/download/v2.17/minimap2-2.17.tar.bz2 && \
        tar -xvf minimap2-2.17.tar.bz2 && \
        cd minimap2-2.17 && \
        make && \
        mv minimap2 ../ && mv misc/paftools.js ../ && \
        curl -L https://github.com/attractivechaos/k8/releases/download/v0.2.4/k8-0.2.4.tar.bz2 | tar -jxf - && \
        cp k8-0.2.4/k8-`uname -s` ../k8 && \
        cd ../ && \
        rm -rf ./minimap2-*
fi

# Clean-up
cd ../
chmod a+x ./bin/*