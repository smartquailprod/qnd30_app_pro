#
# Exportamos nuestra key SSH

resource "digitalocean_ssh_key" "qnd30" {
  name       = "qnd30"
  public_key = "${file("id_rsa.pub")}"
}

