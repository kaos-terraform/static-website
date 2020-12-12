# About

This module will create an S3 bucket that hosts static content on the internet.

It will:

- Set up an S3 bucket.
- Put files from the specified directory into the S3 bucket.

# Usage

Add this to your terraform file.

```tf
module "website" {
  source = "github.com/kaos-terraform/static-website"

  domain = "my-domain"
  environment = "test"
  index_document = "index.html" # optional
  public = false # optional
  region = "us-west-1"
  service = "my-service"
  source_directory = "./dir-path/"
}

# output the URL to access the server
output "base_url" {
  value = module.website.base_url
}
```

## Variables

| Variable | Type | Default | Description | 
| -------- | ---- | ------- | ----------- |
| domain | string | | The domain that this service resides within. Resources will also be tagged with this name. |
| environment | string | | The app environment. This will be used for tagging. |
| index_document | string | index.html | The file name for index files. |
| public | boolean | false | Whether to host files publicly. |
| region | string | | The AWS region to deploy to. |
| service | string | | The service or application name. Resources will also be tagged with this name. |
| source_directory | string | | The source directory path for files to put up onto the website. The path should end with a slash (/). |

