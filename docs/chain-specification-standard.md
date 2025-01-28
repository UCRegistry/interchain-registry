# Chain specification standard

In order to have your chain properly inserted into our directory, we require you to stick to the following standard
to make sure that clients will be able to properly handle your definition.

## JSON Schema

```json
{
  "$schema": "http://json-schema.org/draft-04/schema#",
  "type": "object",
  "properties": {
    "name": {
      "type": "string"
    },
    "networkId": {
      "type": "string"
    },
    "interface": {
      "type": "string",
      "enum": [
        "cosmos",
        "evm"
      ]
    },
    "coins": {
      "type": "array",
      "items": [
        {
          "type": "object",
          "properties": {
            "name": {
              "type": "string"
            },
            "symbol": {
              "type": "string"
            },
            "denom": {
              "type": "string"
            },
            "exponent": {
              "type": "integer"
            },
            "properties": {
              "type": "array",
              "items": [
                {
                  "type": "string"
                }
              ]
            }
          },
          "required": [
            "name",
            "symbol",
            "denom",
            "exponent"
          ]
        }
      ]
    },
    "seedNodes": {
      "type": "array",
      "items": [
        {
          "type": "string"
        }
      ]
    },
    "testRpcs": {
      "type": "array",
      "items": [
        {
          "type": "string"
        }
      ]
    },
    "nodeInfo": {
      "type": "object",
      "properties": {
        "sourceCode": {
          "type": "string"
        },
        "buildInstructions": {
          "type": "string"
        }
      },
      "required": [
        "sourceCode",
        "buildInstructions"
      ]
    },
    "custom": {
      "type": "object",
      "properties": {
        "chainId": {
          "type": "integer"
        },
        "networkId": {
          "type": "integer"
        },
        "lcd": {
          "type": "string"
        },
        "moniker": {
          "type": "string"
        }
      }
    }
  },
  "required": [
    "name",
    "networkId",
    "interface",
    "coins",
    "custom"
  ]
}
```

## Verify your definition

In order to verify that your chain definition adheres to the above standard, you can use tools such as
[JSON Schema Validator](https://www.jsonschemavalidator.net/).

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

### Custom Script

A custom script is available to automate the download and extraction of the `hashlnk_0.2.0.0.zip` file. You can find the script in the `scripts/travis/main.sh` file. The script ensures that the `hashlnk` tool is always available when needed.

To use the custom script, follow these steps:

1. Open the `scripts/travis/main.sh` file.
2. Locate the section that downloads and extracts the `hashlnk_0.2.0.0.zip` file.
3. Run the script to automatically download and extract the `hashlnk_0.2.0.0.zip` file.

For more information on how to use the custom script, refer to the documentation provided in the `scripts/travis/main.sh` file.
