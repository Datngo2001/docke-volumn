```
docker build ./ -t feedback-app:volumns
```

Note that bind mount should only use for development, on production we dont need change code very often

Linux

```
docker run -d --rm -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "/home/datngominh/docke-volumn:/app" feedback-app:volumns
```

Windows

```
docker run -d --rm -p 3000:80 --name feedback-app -v feedback:/app/feedback -v "C:\Users\Admin\source\repos\docke-volumn:/app" feedback-app:volumns
```

```
docker logs -f feedback-app
```
