 variable "d1" {
   default = 5
 }

 resource "null_resource" "nothing" {
 count=5
 }

 variable "d2" {
   default =[0,1,2,3,4]
 }

 resource "null_resource" "d2" {
   count=length(var.d2)
 }

 variable "d3" {
   default = {
     apple={
       name="apple"
       count="3"
     }
     banana={
       name="banana"
       count="30"
     }
   }
 }

 resource "null_resource" "d3" {
   for_each = var.d3
 }


