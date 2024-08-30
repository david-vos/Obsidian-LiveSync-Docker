# It's all based on: https://jegtnes.com/blog/self-hosting-obsidian-sync-for-ios-android-mac-and-windows-with-couchdb/
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  # set this to your docker client, not sure? Use `docker conext ls`
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "couchdb" {
  name = "custom_obsidian_sync:v1.0"
}

resource "docker_volume" "obsidian_data" {
  name = "obsidian_data"
}

resource "docker_container" "couchdb_obsidian_sync" {
  name  = "couchedb_obsidian_sync"
  image = docker_image.couchdb.image_id
  env = [
    "COUCHDB_USER=${var.couchdb_user}",
    "COUCHDB_PASSWORD=${var.couchdb_password}",
   ]
  ports {
    internal = 5984
    external = 5984  # Map external port to internal port
  }
  volumes {
    volume_name =  docker_volume.obsidian_data.name
    container_path = "/opt/couchdb/data"
  }
}
