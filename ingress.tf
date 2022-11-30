data "aws_eks_cluster" "cluster" {
  name = var.cluster_name
}

data "aws_eks_cluster_auth" "cluster_auth" {
  name = var.cluster_name
}

provider "helm" {  
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority[0].data)
    token                  = data.aws_eks_cluster_auth.cluster_auth.token
  }
}


resource "helm_release" "nginx-ingress" {
  name       = var.ingress_chart_name
  chart      = var.ingress_chart_repo
  namespace  = var.ingress_namespace
  version    = var.ingress_chart_version
  create_namespace  = "true"
  cleanup_on_fail   = "true"
 
  set {
    name = "controller.image.registry"
    value = var.ingress_controller_image_registry
  }

  set {
    name = "controller.image.image"
    value = var.ingress_controller_image_image
  }

  set {
    name = "controller.image.digest"
    value = var.ingress_controller_image_digest
  }

  set {
    name = "controller.image.tag"
    value = var.ingress_controller_image_tag
  }

  set {
    name = "controller.admissionWebhooks.patch.image.digest"
    value = var.ingress_controller_admissionWebhooks_patch_image_digest
  }

  set {
    name = "controller.admissionWebhooks.patch.image.image"
    value = var.ingress_controller_admissionWebhooks_patch_image_image
  }

  set {
    name = "controller.admissionWebhooks.patch.image.tag"
    value = var.ingress_controller_admissionWebhooks_patch_image_tag
  }

  set {
    name =  "controller.admissionWebhooks.patch.image.registry"
    value = var.ingress_controller_admissionWebhooks_patch_image_registry
  }

  set {
    name = "defaultBackend.image.image"
    value = var.ingress_defaultBackend_image_image
  }

  set {
    name = "defaultBackend.image.registry"
    value = var.ingress_defaultBackend_image_registry
  }
  
  set {
    name = "defaultBackend.image.tag"
    value = var.ingress_defaultBackend_image_tag
  }

  set {
	  name = "controller.autoscaling.enabled"
	  value = true
  }
  
  set {
    name = "controller.autoscaling.minReplicas"
    value = var.ingress_controller_autoscaling_minReplicas
  }

  set { 
      name = "controller.autoscaling.maxReplicas"
      value = var.ingress_controller_autoscaling_maxReplicas
  }

  set {
	  name = "controller.autoscaling.targetMemoryUtilizationPercentage"
	  value = var.ingress_controller_autoscaling_targetMemoryUtilizationPercentage
  }
  
  set {
    name = "defaultBackend.enabled"
    value = true
  }

  set {
    name = "defaultBackend.autoscaling.enabled"
    value = true
  }

  set {
    name = "defaultBackend.autoscaling.targetMemoryUtilizationPercentage"
    value = var.ingress_defaultBackend_autoscaling_targetMemoryUtilizationPercentage
  }
  
  set {
    name = "controller.ingressClassResource.name"
    value = var.ingres_controller_ingressClassResource_name
  }
  
  set {
    name = "controller.ingressClass"
    value = var.ingress_controller_ingressClass
  }
  
  set {
    name = "controller.ingressClassResource.controllerValue"
    value = var.ingress_controller_ingressClassResource_controllerValue
  }
  
  set {
    name = "controller.ingressClassByName"
    value = true
  }
  
  set {
    name = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-backend-protocol"
    value = "tcp"
  }
  
  set {
    name = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-cross-zone-load-balancing-enabled"
    value = "true"
  }

  set {
    name = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-type"
    value = "nlb"
  }
  
  set {
    name = "controller.service.annotations.service\\.beta\\.kubernetes\\.io/aws-load-balancer-internal"
    value ="true"
  }
  
  set {
    name = "controller.config.enable-underscores-in-headers"
    value = var.ingress_controller_config_enable-underscores-in-headers
  }
  
  set {
    name = "controller.config.ignore-invalid-headers"
    value = var.ingress_controller_config_ignore-invalid-headers
  }

  set {
    name = "controller.resources.requests.memory"
    value = var.ingress_controller_resources_requests_memory
  }
	
}
