# Creamos un dominio nuevo
resource "digitalocean_domain" "juansilvaphoto" {
  name = "juansilvaphoto.com"
  ip_address = digitalocean_droplet.QND30.ipv4_address
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.juansilvaphoto.name}"
  type   = "A"
  name   = "juansilvaphoto"
  ttl    = "50"
  value  = "${digitalocean_droplet.QND30.ipv4_address}"
}

