# Contributing

## Prerequisites

### Install Swift

Install Swift through Xcode from the MacOS store, or if you don't want to install Xcode download Swift from [here](https://www.swift.org/download/).

### Install CocoaPods

Install CocoaPods through the default Ruby available on MacOS:

```shell
sudo gem install cocoapods
```

## Build the SDK and Install Dependencies

### CocoaPods

```shell
pod install
```

## Updating the SDK

Download the latest API schema to `./swagger.json` from `https://api.basistheory.com/swagger/v1/swagger.json`,
which can be done manually or with the command:

```shell
make update-api-spec
```

Once the latest api spec has been downloaded locally, you must regenerate the SDK using the open api generator,
which can be done with the command:

```shell
make generate-sdk
```
