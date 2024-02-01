output "public_subnet_id" {
  value = "${aws_subnet.public_subnet.*.id}"
}

output "vpc_id" {
  value = "${aws_vpc.vpc.id}"
}

output "private_subnet_1_id" {
    value = "${aws_subnet.private_subnet.0.id}"
}

output "private_subnet_2_id" {
    value = "${aws_subnet.private_subnet.1.id}"
}
