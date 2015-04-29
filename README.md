# automount_support-cookbook

This alters the original default recipe to work on RedHat Based machines. Uses autfos package as opposed to autofs5.

## Supported Platforms

RedHat

## Attributes

no additional attributes at this time.

## Usage

### automount_support::default

Include `automount_support` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[automount_support::default]"
  ]
}
```

## License and Authors

Author:: daniel washko(<dwashko@gmti.gannett.com>)
