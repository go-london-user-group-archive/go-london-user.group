[![Build Status](https://travis-ci.org/thoeni/go-london-user.group.svg?branch=master)](https://travis-ci.org/thoeni/go-london-user.group)

# Go London User Group website

## To run it locally:
This website will be hosted somewhere as the generated content can be served as static files, nevertheless it's possible to run it locally to check the styling of the articles.

#### Pre-requisites
- Docker

#### How to
- Clone this repository
- Edit the file [config.toml](config.toml#L2-L4) to uncomment `baseURL: http://localhost:1313/` and comment the remote one.
- From the project root run:
```
docker build -t go-london-user-group .
docker run --rm --name go-london-user-group -v `pwd`:"/usr/local/src/hugo/" -p 1313:1313 go-london-user-group
```

Access `http://localhost:1313/`

Hugo server running within the container will watch for any change in the repo and livereload it.
