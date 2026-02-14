#!/bin/bash

cd ~/.vim/

wget https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.56.0/jdt-language-server-1.56.0-202601291528.tar.gz -o jdtls.tar.gz

tar xf jdtls.tar.gz -C jdtls

rm jdtls.tar.gz
