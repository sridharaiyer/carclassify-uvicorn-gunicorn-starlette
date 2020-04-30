# Classify Cars Body Styles
## Trained a model using [fast.ai](https://www.fast.ai) deep learning libraries

## OSX Pre-Req
`brew install libomp`

## Basic installation

`python3 -m venv venv`
`pip install --upgrade pip -r requirements.txt`

For local development:

`pip install uvicorn starlette`

You can test your changes locally by installing Docker and using the following command:

```
docker build -t fastai-python3.8-slim:cpu .
docker run --rm -it -p 5000:5000 fastai-python3.8-slim:cpu
```

Run docker in the background

`docker run -d --rm -it -p 5000:5000 --name car-classify fastai-python3.8-slim:cpu`
