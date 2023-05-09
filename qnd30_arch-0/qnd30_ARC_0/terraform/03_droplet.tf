
resource "digitalocean_droplet" "QND30" {
  image     = "ubuntu-22-04-x64"
  name      = "QND30"
  region    = "sfo3"
  size      = "s-1vcpu-1gb"
  user_data = "${file("docker.yaml")}"
  ssh_keys  = ["${digitalocean_ssh_key.qnd30.fingerprint}"]
}


