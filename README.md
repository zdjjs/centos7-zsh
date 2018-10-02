# centos7 build zsh
example
```
FROM zdjjs/centos7-zsh AS zsh
FROM centos:centos7
COPY --from=zsh /zsh /usr/local
```

