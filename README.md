## Libra dockerized !

This is Docker image i built to run the official  [Libra](https://libra.org) doc sample doc [for executing your first transaction on the Libra Blockchain](https://developers.libra.org/docs/my-first-transaction)

### The docker libradevbox

Quickly start [libra cli](https://developers.libra.org/docs/reference/libra-cli) with single cmd line using docker :

```
docker run -it mikamboo/libradevbox
```

### Create your own libra docker image

You can build your own image by running

```
docker build -t libradevbox .
```

You are free to use as it or customize the [Dockerfile]().
