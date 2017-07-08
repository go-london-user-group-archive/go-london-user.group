# Experimental London Gophers site

## To run it locally:
This website will be hosted somewhere as the generated content can be served as static files, nevertheless it's possible to run it locally to check the styling of the articles.

#### Pre-requisites
- Docker
- Git

#### How to
Clone this repository, and from its root run:
```
git clone git@github.com:budparr/gohugo-theme-ananke.git themes/gohugo-theme-ananke
docker build -t go-london-user-group .
docker run --rm --name go-london-user-group -v `pwd`:"/usr/local/src/hugo/" -p 1313:1313 go-london-user-group
```

Access `http://localhost:1313/`

Hugo server running within the container will watch for any change in the repo and livereload it.