#!/usr/bin/env bash

az webapp up --name flask-sklearn-webapp-quang --resource-group udacity-rg --location eastus --sku F1 --runtime "PYTHON:3.9"