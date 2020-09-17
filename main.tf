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

module "k8s" {
    source = "./modules/aks-autoscale"
    prefix = "test"
    location = "westeurope"
    kubernetes_version = "1.18.8"
    orchestrator_version = "1.18.8"
}