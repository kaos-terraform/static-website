variable "domain" {
  type        = string
  description = "The domain that this service resides within. Resources will also be tagged with this name."
}

variable "environment" {
  type        = string
  description = "The app environment. This will be used to define the API Gateway stage and will be used for tagging."
}

variable "index_document" {
  type        = string
  description = "The file name for index files."
  default     = "index.html"
}

variable "public" {
  type        = boolean
  description = "Whether to host files publicly."
  default     = false
}

variable "region" {
  type        = string
  description = "The AWS region to deploy to."
}

variable "service" {
  type        = string
  description = "The service or application name. Resources will also be tagged with this name."
}

variable "source_directory" {
  type        = string
  description = "The source directory path for files to put up onto the website. The path should end with a slash (/)."
}
