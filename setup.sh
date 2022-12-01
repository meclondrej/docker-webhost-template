if [[ ! -d database/ ]]; then
	mkdir database
fi
if [[ ! -d htdocs/ ]]; then
	mkdir htdocs
fi
if [[ ! -d assets/ ]]; then
	mkdir assets
fi
docker compose build
echo "setup done."
