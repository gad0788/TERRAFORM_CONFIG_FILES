variable "ami" {
  description = "amazon machine image"
  type = string
  default = "ami-02c21308fed24a8ab"
}
variable "instanceType" {
  default = "t2.micro"
}
variable "region_name" {
 default = "us-east-1"  
}
variable "profile_name" {
default = "default"
  
}