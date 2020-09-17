variable "prefix" {
  description = "A prefix used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be provisioned"
}

variable "kubernetes_version" {
    description = "Set the desired version of kubernetes"
}

variable "orchestrator_version" {
    description = "Set the desired version of kubernetes agents"
    default = ""
}