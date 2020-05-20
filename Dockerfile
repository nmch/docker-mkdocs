FROM python:3.6-alpine

RUN apk --no-cache add graphviz jpeg-dev zlib-dev ttf-dejavu freetype-dev git wget && \
	apk --no-cache add gcc musl-dev && \
	pip install --upgrade pip awscli && \
	pip install mkdocs mkdocs-diagrams markdown-blockdiag plantuml-markdown mkdocs-material fontawesome_markdown mdx_unimoji

WORKDIR /docs

EXPOSE 8000

CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
