# docker-cli

```bash
docker build -t cli-test . && \
docker run -it --rm --name my-running-app cli-test
```

```bash
docker run appwrite/cli client setKey --value=asdasdasdasdasdasdasdsdasdasdasdasdasdasdasdasdasdasdasd
docker run cli-test client setKey --value=asdasdasdasdasdasdasdsdasdasdasdasdasdasdasdasdasdasdasd
```