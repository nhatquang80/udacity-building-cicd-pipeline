[![Build Status](https://dev.azure.com/nhatquang8009/udacity-building-cicd-pipeline/_apis/build/status%2Fnhatquang80.udacity-building-cicd-pipeline?branchName=main)](https://dev.azure.com/nhatquang8009/udacity-building-cicd-pipeline/_build/latest?definitionId=1&branchName=main)

[![Python application test with Github Actions](https://github.com/nhatquang80/udacity-building-cicd-pipeline/actions/workflows/main.yml/badge.svg)](https://github.com/nhatquang80/udacity-building-cicd-pipeline/actions/workflows/main.yml)

# Overview

This guide outlines the steps to set up a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Azure and GitHub Actions. This pipeline automates the build and deployment process, ensuring that our application is consistently tested and deployed whenever changes are made.

## Project Plan

* Trello board for the project [link](https://trello.com/invite/b/NN9D5O2j/ATTI9738af344b05049c5464112661faa22408CF8796/building-ci-ci-pipeline)
* Project management [spreadsheet](/project-management.xlsx)

## Instructions

* Architectural Diagram
![architecture](/architecture.drawio.png)

* Project running on Azure App Service

* Project cloned into Azure Cloud Shell

* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application


## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

Link to screencast: [Youtube](https://youtu.be/sbDb-0ZrgEQ)


