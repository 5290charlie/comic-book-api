# README

## Deploy to minikube using helm!

**Requirements**

- [Install and start minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)
  - `minikube start`
- [Install and initialize helm](https://helm.sh/docs/using_helm/)

**Install helm chart**

*From context of this repo directory*

- Install the helm chart, creating deployment, pods & service
  - `helm install ./helm-chart`
- Lookup service from minikube
  - `kubectl get services`
- Copy service name (e.g. `release-name-comic-book-api`) and lookup service IP and port
  - `minikube service release-name-comic-book-api`
    - *Using this method to lookup service because the "EXPORT NODE_IP" and "EXPORT NODE_PORT" instructions from helm gave internal cluster ip, not accessible from host*
- Should see "Yay! You’re on Rails!" homepage

**Accessing the API**

*Use the `Accept=application/json` header for all requests (or add ".json" extension)*

*Use the `Content-Type=application/json` header for `POST` and `PUT` requests with a JSON payload*

- `GET /comic_books`
  - List all comic books in the api (image should be seeded with two)
- `GET /comic_books/:id`
  - Get a single comic book by ID
- `POST /comic_books`
  - Create a new comic book
    - *Provide `name`, `description`, and `author` in request body*
- `PUT /comic_books/:id`
  - Update an existing comic_book by ID
- `DELETE /comic_books/:id`
  - Delete an existing comic_book by ID
