variable "region" {
	description = "AWS default region"
	type = string
	default = "us-east-1"
}

variable cluster_name {
	description = "eks cluster name"
	type = string
}

variable "ingress_chart_name" {
	description = "ingress-nginx deployment name"
	type = string
}
  
variable "ingress_chart_repo" {
	description = "ingress-nginx deployment name"
	type = string
	default = "./charts/ingress-nginx"
}  

variable "ingress_namespace" {
	description = "Target namespace to install ingress-nginx"
	type = string
} 

variable "ingress_chart_version" {
	description = "Ingress-nginx chart version"
	type = string
	default = "4.1.4"
}   

variable "ingress_controller_image_registry" {
	description = "Ingress controller image repository"
	type = string
}

variable "ingress_controller_image_image" {
	description = "Ingress controller image"
	type = string
	default = "ingress-nginx/controller"
}

variable "ingress_controller_image_digest" {
	description = "Ingress controller image digest"
	type = string
}

variable "ingress_controller_image_tag" {
	description = "Ingress controller image tag"
	type = string
	default = "v1.2.1"
}

variable "ingress_controller_admissionWebhooks_patch_image_digest" {
	description = "Ingress Controller admission webhooks patch image diges"
	type = string
}

variable "ingress_controller_admissionWebhooks_patch_image_image" {
	description = "Ingress controller admission webhooks patch image"
	type = string
	default = "ingress-nginx/kube-webhook-certgen"
}	

variable "ingress_controller_admissionWebhooks_patch_image_tag" {
	description = "Ingress controller admission webhooks patch image tag"
	type = string
	default = "v1.1.1" 
}

variable "ingress_controller_admissionWebhooks_patch_image_registry" {
	description = "Ingress controller admission Webhools patch image registry"
	type = string
}

variable "ingress_defaultBackend_image_image" {
	description = "Ingress default backend image"
	type = string
	default = "defaultbackend-amd64"
}

variable "ingress_defaultBackend_image_registry" {
	description = "Ingress default backend image registry"
	type = string
}

variable ingress_defaultBackend_image_tag {
	description = "Ingress default backend image tag" 
	type = string
	default = "1.5"
}

variable "ingress_controller_autoscaling_minReplicas" {
	description = "Ingress controller minimum number of replica"
	type = number
    default = 2
}

variable  "ingress_controller_autoscaling_maxReplicas" {
	description = "Ingress controller maximum number of replica"
	type = number
    default = 11
}
  
variable "ingress_controller_autoscaling_targetMemoryUtilizationPercentage" {
	description = "Ingress controller autoscaling target memory utilization percentage"
	type = number
	default = 50
}	

variable "ingress_defaultBackend_enabled" {
	description = "Ingress default backend enabled"
	type = bool
	default = true
}

variable "ingress_defaultBackend_autoscaling_enabled" {
	description = "Ingress default backend autoscalling enabled"
	type = bool
	default = true
}

variable "ingress_defaultBackend_autoscaling_targetMemoryUtilizationPercentage" {
	description = "Ingress controller autoscaling target memory utilization percentage"
	type = number
	default = 50
}

variable "ingres_controller_ingressClassResource_name" {
	description = "IngressClassResource name"
	type = string
  }
  
variable "ingress_controller_ingressClass" {
	description = "IngressClassResource"
	type = string
}
  
variable "ingress_controller_ingressClassResource_controllerValue" {
	description = "IngressClassResource controller value"
	type = string
}

variable "ingress_controller_config_enable-underscores-in-headers" {
	description = "Ingres contoller enable underscores in header"
	type = bool
  	default = "true"
}
  
 variable  "ingress_controller_config_ignore-invalid-headers" {
	description = "Ingress controller ignore invalid headers"
	type = bool
  	default = "false"
}

variable "ingress_controller_resources_requests_memory" {
	description = "Ingress controller memory request"
	type = string
	default = "200Mi"
}
