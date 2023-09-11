[![Build Status](https://dev.azure.com/nhatquang8009/udacity-building-cicd-pipeline/_apis/build/status%2Fnhatquang80.udacity-building-cicd-pipeline?branchName=main)](https://dev.azure.com/nhatquang8009/udacity-building-cicd-pipeline/_build/latest?definitionId=1&branchName=main)

[![Python application test with Github Actions](https://github.com/nhatquang80/udacity-building-cicd-pipeline/actions/workflows/main.yml/badge.svg)](https://github.com/nhatquang80/udacity-building-cicd-pipeline/actions/workflows/main.yml)

# Overview

This guide outlines the steps to set up a Continuous Integration/Continuous Deployment (CI/CD) pipeline using Azure and GitHub Actions. This pipeline automates the build and deployment process, ensuring that our application is consistently tested and deployed whenever changes are made.

## Project Plan

* Trello board for the project [link](https://trello.com/invite/b/NN9D5O2j/ATTI9738af344b05049c5464112661faa22408CF8796/building-ci-ci-pipeline)
* Project management [spreadsheet](/project-management.xlsx)

## Instructions

### Prerequisites
- An Azure account: [Create an Azure account](https://azure.com/free)

- A GitHub repository: [Create a GitHub repository](https://docs.github.com/en/github/getting-started-with-github/quickstart/create-a-repo)


### Architectural Diagram

![architecture](/architecture.drawio.png)

### Deploy the app on Azure Cloud Shell

* In Azure Cloud Sheel, clone the repo
    ```bash
    git clone git@github.com:nhatquang80/udacity-building-cicd-pipeline.git
    ```
* Sceenshot
    ![alt](/screenshots/clone-git-repo.png)

* Change to the project directory and create virtual environemnt
    ```bash
    cd udacity-building-cicd-pipeline
    make setup
    source ~/.udacity-devops/bin/activate 
    ```

* Install dependencies and run test
    ```bash
    make all 
    ```
    ![alt](/screenshots/make-all-success.png)

* Run the application on Cloud Shell
    ```bash
    python app.py 
    ```
    ![alt](/screenshots/start-app-success.png)

* Open another Cloud Shell session and run test
    ```bash
    ./make_prediction.sh 
    ```
    ![alt](/screenshots/run-app-success.png)

### Deploy the app on Azure App Service

* Execute `commands.sh`
    ```bash
    ./commands.sh 
    ```
    ![alt](/screenshots/deploy-appservice.png)

* Check deployment on Azure Portal
    ![alt](/screenshots/azure-appservice-running.png)

* Create new pipeline in Azure Pipeline
    ![alt](/screenshots/pipeline-sucess.png)

* Check successful deploy of the project in Azure Pipeline
    ![alt](/screenshots/pipeline-running.png)

* Test the application running on Azure App Service deployed automatic by Azure Pipeline
    ```bash
    ./make_predict_azure_app.sh 
    ```
    ![alt](/screenshots/test-appservice.png)

* Output of streamed log files from deployed application
    ![alt](/screenshots/appservice-log.png)

## Enhancements

* Implementing Terraform enables the management of infrastrucure through code, providing an efficient and scalable approach to resoruce provisioning and management.

* The code should be seperated into different branches for each feature.

## Demo 

Link to screencast: [Youtube](https://youtu.be/sbDb-0ZrgEQ)


