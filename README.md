# [Backstage](https://backstage.io)

This is your newly scaffolded Backstage App, Good Luck!

To start the app, run:

```sh
yarn install
yarn dev
```


## Steps for running the docker for develeopment for live reload


```
docker build -t backstage .
docker run -v `pwd`:/app/ -v "/app/node_modules" -p 3000:3000 backstage
```

 ### you should be able to see the ui being live updated at [http://locahost:3000](http://locahost:3000)