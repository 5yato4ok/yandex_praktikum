module "yandex_cloud_instance" {
  source             = "./modules/tf-yc-instance"
  instance_zone      = "ru-central1-a"
  platform_id        = "standard-v1"
  instance_image_id  = "fd80qm01ah03dkqb14lc"
  instance_subnet_id = module.yandex_cloud_network.yandex_vpc_subnets["ru-central1-a"]["subnet_id"]
}

module "yandex_cloud_network" {
  source = "./modules/tf-yc-network"
}

output "instance_ip_address"{
  value = module.yandex_cloud_instance.ip_address
}
