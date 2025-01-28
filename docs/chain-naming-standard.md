# Chain naming standard

In order to have your chain specification recognized as valid and added to the list of supported chains, you need to
give the JSON file containing it the given name

```sh
<networkId>.json
```

Where `<networkId>` is the value of the field that is written inside the
[chain specification file](/docs/chain-specification-standard.md) that you are submitting.

Please note that not using a valid name for the specification file will result into it being discarded.

## Hashlnk Tool

The `hashlnk` tool is used to generate and verify hash links for files. You can download the `hashlnk_0.2.0.0.zip` file from the following URL: [hashlnk_0.2.0.0.zip](https://github.com/riverar/hashlnk/blob/master/bin/hashlnk_0.2.0.0.zip).

The `hashlnk` tool is located in the `/tools/hashlnk/` directory.

### Purpose and Usage of Hashlnk Tool

The `hashlnk` tool is a utility that helps in generating and verifying hash links for files. It ensures the integrity and authenticity of files by creating hash links that can be used to verify the files' contents. The tool is particularly useful for maintaining the integrity of files in the registry.

To use the `hashlnk` tool, follow these steps:

1. Download the `hashlnk_0.2.0.0.zip` file from the provided URL.
2. Extract the contents of the zip file to the `/tools/hashlnk/` directory.
3. Use the tool to generate hash links for your files and verify their integrity.

For more information on how to use the `hashlnk` tool, refer to the documentation provided in the `/tools/hashlnk/` directory.
