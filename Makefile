.env:
	echo "DOCKER_UID=$$(id -u)\nDOCKER_GID=$$(id -g)" > .env

Caddyfile:
	read -p "Enter your domain: " domain && \
		echo "$$domain {\n    reverse_proxy navidrome:4533\n}" > Caddyfile

scan:
	docker compose exec navidrome navidrome scan
