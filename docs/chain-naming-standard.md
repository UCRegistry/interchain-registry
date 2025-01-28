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
