FROM dynverse/dynwrap:bioc

RUN R -e 'devtools::install_cran("monocle")'

LABEL version 0.1.5

ADD . /code

ENTRYPOINT Rscript /code/run.R
