output "address" {
  value = "${aws_instance.docker_host.private_ip}"
}

output "elastic ip" {
  value = "${aws_eip.default.public_ip}"
}
