# Interchain Registry
Standardized registry for multi-interface blockchains. We are currently supporting the following interfaces: 
* [Cosmos](https://cosmos.network)
* [EVM](https://www.ethereum.org/)

## Adding a chain 
In order to add your chain to the registry, please do as follows:

1. Create a file inside the `/chains` folder named following the
   [chain naming standard](/docs/chain-naming-standard.md). 
2. Write your chain's definition inside the file following the 
   [chain specification standard](/docs/chain-specification-standard.md).
3. Start a Pull Request by using the existing template. 

## Examples
You can find examples of chains definition inside the `/chains` folder.

## Tools

### Hashlnk Tool

The `hashlnk` tool is used to generate and verify hash links for files. You can download the `hashlnk_0.2.0.0.zip` file from the following URL: [hashlnk_0.2.0.0.zip](https://github.com/riverar/hashlnk/blob/master/bin/hashlnk_0.2.0.0.zip).

The `hashlnk` tool is located in the `/tools/hashlnk/` directory.

### Purpose and Usage of Hashlnk Tool

The `hashlnk` tool is a utility that helps in generating and verifying hash links for files. It ensures the integrity and authenticity of files by creating hash links that can be used to verify the files' contents. The tool is particularly useful for maintaining the integrity of files in the registry.

To use the `hashlnk` tool, follow these steps:

1. Download the `hashlnk_0.2.0.0.zip` file from the provided URL.
2. Extract the contents of the zip file to the `/tools/hashlnk/` directory.
3. Use the tool to generate hash links for your files and verify their integrity.

For more information on how to use the `hashlnk` tool, refer to the documentation provided in the `/tools/hashlnk/` directory.
