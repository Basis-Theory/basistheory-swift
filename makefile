MAKEFLAGS += --silent

update-api-spec:
	./scripts/update-api-spec.sh

generate-sdk:
	./scripts/generate-sdk.sh
