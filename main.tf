terraform {
    required_version = ">= 0.13"
    backend "local" {
        path = "./test.tfstate"
    }
}

provider "azurerm" {
    version = ">= 2.26"
    features {}
}

## Local module source
module "k8s" {
    source = "./modules/aks-autoscale"
    prefix = "test"
    location = "westeurope"
    kubernetes_version = "1.18.8"
    orchestrator_version = "1.17.9"
}

## Remove module source
module "k8s-remote" {
    source = "github.com/tjololo/terraform-modules.git?ref=0.0.2/aks"
    prefix = "test-remote"
    location = "westeurope"
    kubernetes_version = "1.18.8"
}