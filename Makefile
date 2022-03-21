app_name = routes_api
build:
    @docker build -t $(app_name) .
run:
    docker run --detach -p 5000:5000 routes-api --name $(app_name)-container 
kill:
    @echo 'Killing container...'
    @docker ps | grep $(app_name) | awk '{print $$1}' | xargs docker stop