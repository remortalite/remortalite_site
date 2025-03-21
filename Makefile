build:
	docker build -t rem_site .

run:
	docker run -it -p 443:443 rem_site

run-daemon:
	docker run -it -d -p 443:443 rem_site
