mongo:
	docker run -p 27017:27017 \
		-d \
		--rm \
		--name mongodb \
		--network notes-net \
		--env-file ./config/development.env \
		-v mongo-data:/data/db \
		mongo

backend:
	docker run -p 5001:5001 \
		-d \
		--rm \
		--name notes-backend \
		--network notes-net \
		-v /Users/ruslanbagautdinov/development/docker-mern-master/server:/app \
		-v /app/node_modules \
		--env-file ./config/development.env \
		notes-backend

frontend:
	docker run -p 3000:3000 \
		-d \
		--rm \
		--name notes-frontend \
		notes-frontend