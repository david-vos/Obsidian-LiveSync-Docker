This code base creates a Docker container + Volume to run CouchDB.
It will also set the CouchDb instance up for https://github.com/vrtmrz/obsidian-livesync

# Requierments
---
- Docker
- Terraform
- Terragrunt

# Building the image
---
```bash
docker build ./CoucheDBContainer -t custom_obsidian_sync:v1.0
```

# Run the Grunt
---
```bash
terragrunt apply
```

# Troubleshooting
Did you set the right Docker socket at `sync-module/main.tf:13`
