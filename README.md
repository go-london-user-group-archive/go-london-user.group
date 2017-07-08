## Experimental London Gophers site

### To run it locally:
```
docker build -t gopher-london .
docker run --rm --name gopher-london -p 1313:1313 gopher-london
```

Access `http://localhost:1313/`