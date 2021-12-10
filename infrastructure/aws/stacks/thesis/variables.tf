/*
Copyright 2021.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

variable "secret_key" {
    type = string
}
variable "access_key" {
    type = string
}
variable "region" {
  default = "eu-central-1"
}

locals {
  cluster_name = "thesis-cluster"
  public_key = "~/.ssh/id_rsa.pub"
  ami = "ami-0b1deee75235aa4bb"
  master = "t3.medium"
  workers = {
    "node-1" : "t3.small"
  }
}