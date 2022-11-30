
cluster_name = ""

ingress_chart_name = "ingress-nginx"
  
ingress_namespace = "ingress-nginx"

ingress_chart_version = "4.1.4"

ingress_controller_autoscaling_minReplicas = 2
  
ingress_controller_autoscaling_targetMemoryUtilizationPercentage = 75

ingress_defaultBackend_autoscaling_targetMemoryUtilizationPercentage = 75

ingres_controller_ingressClassResource_name = ""

ingress_controller_ingressClass = ""
  
ingress_controller_ingressClassResource_controllerValue = ""

ingress_defaultBackend_image_registry = "" //You can upload image in your own registry and give the path

ingress_controller_admissionWebhooks_patch_image_registry = "" //Give your registry Path

ingress_controller_image_registry = ""

ingress_controller_image_digest = ""

ingress_controller_admissionWebhooks_patch_image_digest = ""

