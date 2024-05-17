# Ensemble-Methods-and-Time-to-Event-Analysis-Models

Paper:

Fernandez, C., Chen, C.S., Gaillard, P. and Silva, A. (2024). Experimental Comparison of Ensemble Methods and Time-to-Event Analysis Models Through Integrated Brier Score and Concordance Index. [arXiv preprint arXiv :2403.07460.](https://arxiv.org/abs/2403.07460)


The simulation section presents three experiments of simulated data and we simulate this data with three different techniques.

We used coxed library and simsurv library implemented in R. 

## Coxed Library

* coxed_numfeatures: the script used to generate the data of the decreasing number of features experiment.
* coxed_numsamples: the script used to generate the data of the increasing number of samples experiment.
* coxed_percensorship: the script used to generate the data of the increasing percentage of censorship experiment.

## Simsurv Library

* simsurv_numfeatures: the script used to generate the data of the decreasing number of features experiment.
* simsurv_numsamples: the script used to generate the data of the increasing number of samples experiment.
* simsurv_percensorship: the script used to generate the data of the increasing percentage of censorship experiment.

## Python Experiments

* numfeatures_generate_data: the script used to generate the data of the decreasing number of features experiment.
* numsamples_generate_data: the script used to generate the data of the increasing number of samples experiment.
* percensorship_generate_data: the script used to generate the data of the increasing percentage of censorship experiment.
