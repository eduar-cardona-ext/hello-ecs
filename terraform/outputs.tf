output "alb" {
  value = "http://${aws_lb.default.dns_name}"
}
