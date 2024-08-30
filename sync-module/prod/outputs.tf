output "docker_container_id" {
  description = "The ID of the CouchDB Docker container"
  value       = docker_container.couchdb_obsidian_sync.id
}

output "couchdb_url_external" {
  description = "The URL to access the CouchDB instance"
  value       = "http://${docker_container.couchdb_obsidian_sync.name}:${docker_container.couchdb_obsidian_sync.ports[0].external}/"
}

output "couchdb_url_internal" {
  description = "The URL to access the CouchDB instance"
  value       = "http://localhost:${docker_container.couchdb_obsidian_sync.ports[0].internal}/_utils/"
}
