
```
docker build ./ -t feedback-app:volumn
```

```
docker run -d --rm -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/home/datngominh/docke-volumn:/app" feedback-app:volumns
```

```
docker logs -f feedback-app
```