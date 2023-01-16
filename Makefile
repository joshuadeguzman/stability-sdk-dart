SHELL:=/bin/bash

.PHONY: protos
protos:
	@echo "Generating Dart protobuf files..."
	protoc \
		--proto_path=protos \
		--dart_out=grpc:lib/src/protos \
		protos/*.proto
	@echo "Successfully generated Dart protobuf files for Stability SDK proto files."