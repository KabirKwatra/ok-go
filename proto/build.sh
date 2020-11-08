#!/bin/bash
pushd $(dirname "$0")
protoc -I. -I./googleapis -I$GOPATH/src --go-grpc_out=.. googleapis/google/assistant/embedded/v1alpha2/embedded_assistant.proto
popd
