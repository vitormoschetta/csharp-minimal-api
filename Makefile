.PHONY: docker-build
docker-build:
	docker build -t <your-repository>/csharp-minimal-api .

.PHONY: docker-push
docker-push: docker-build
	docker push <your-repository>/csharp-minimal-api

.PHONY: docker
docker: docker-push

.PHONY: docker-run
docker-run: docker-build
	docker run -d -p 8080:8080 --name csharp-minimal-api <your-repository>/csharp-minimal-api