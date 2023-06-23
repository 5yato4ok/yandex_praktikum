output "yandex_vpc_subnets" {
  description = "Yandex.Cloud Subnets map"
  value       = data.yandex_vpc_subnet.default
}
output "yandex_vpc_network" {
  description = "Yandex.Cloud VPC network"
  value       = data.yandex_vpc_subnet.default
}