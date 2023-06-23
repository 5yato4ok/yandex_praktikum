data "template_file" "user_data" {
  template = file("../scripts/add_user.yaml")
}

resource "yandex_compute_instance" "vm-1" {
  name = "chapter5-lesson2-std-011-049-test"
  zone = var.instance_zone
  platform_id = var.platform_id

  # Resource configuration:
  resources {
    cores  = 2
    memory = 2
  }

  # Boot disk:
  # Image of OS for new VM
  boot_disk {
    initialize_params {
      image_id = "fd80qm01ah03dkqb14lc"
    }
  }

  # Network interface:
  # subnet_id to which will be connected VM
  network_interface {
    subnet_id = "e9bedb7iti13lungfmgg"
    nat       = false
  }

  # Resource metadata:
  # Could provide script,which will be launched at start of VM
  # And list of ssh - keys to access VM
  metadata = {
    ssh-keys = "ansible:${file("~/.ssh/id_rsa.pub")}"
    user_data = data.template_file.user_data.rendered
  }
}