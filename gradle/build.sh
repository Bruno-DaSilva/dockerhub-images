#!/bin/bash
. ../.env

docker build -t ${REGISTRY}/${IMAGE} . && \
	for i in latest ${TAG}
	{
		docker tag ${REGISTRY}/${IMAGE} ${REGISTRY}/${IMAGE}:${i} && docker push ${REGISTRY}/${IMAGE}:${i}
	}