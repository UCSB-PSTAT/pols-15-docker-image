FROM ucsb/r-base:v20210120.1
 
LABEL maintainer="Patrick Windmiller <windmiller@pstat.ucsb.edu>"

USER root

RUN R -e "install.packages(c('WDI', 'faraway', 'boot', 'car', 'pscl', 'vcd', 'stargazer', ‘foreign’))"

USER $NB_USER
