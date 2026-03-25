provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "openfaas_function" {
  manifest = {
    apiVersion = "openfaas.com/v1"
    kind       = "Function"

    metadata = {
      name      = "myfunc"
      namespace = "openfaas-fn"
    }

    spec = {
      name  = "myfunc"
      image = "sarannnnn12/myfunc:latest"
    }
  }
}
