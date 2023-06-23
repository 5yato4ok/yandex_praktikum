# Description of module

Output information about Yandex Cloud network.

## Required provider

For this module description of **required provider** is following:

```terraform

yandex = {
  source  = "yandex-cloud/yandex"
  version = ">= 0.87.0"
}
```

attribute token must be set explicitly by variable for provider

## Input parameters:

| Variable      | Description               | Default Value                                     |
|---------------|---------------------------|---------------------------------------------------|
| network_zones | Network availability zone | "ru-central1-a", "ru-central1-b", "ru-central1-c" |

## Output:

* Yandex.Cloud Subnets map
* Yandex.Cloud VPC network