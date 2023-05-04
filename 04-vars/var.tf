variable "sample" {
  default = "hello world"
}

output "sample" {
  value =var.sample
}

variable "sample1" {}

output "sample1" {
  value = var.sample1
}
variable "cli" {

}

output "cli" {
  value = var.cli
}
variable "input" {}

variable "d1" {
  default =[
    {
      course_name="aws"
      trainer_name="thanu"
    },
    {
      course_name="aws"
      trainer_name="thanu"
    }
  ]
}
 output "course_names" {
   value = "var.d1.*.course_name"
 }


