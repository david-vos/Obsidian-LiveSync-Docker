variable "couchdb_user" {
  description = "Username for CouchDB"
  type        = string
}

variable "couchdb_password" {
  description = "Password for CouchDB"
  type        = string
  sensitive   = true  # Mark as sensitive to hide the value in logs
  }
