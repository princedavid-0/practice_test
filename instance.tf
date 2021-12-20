resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id = "ami-04dd4500af104442f" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name = aws_key_pair.web_test.key_name

  security_groups = [ aws_security_group.allow_http.id ]
  associate_public_ip_address = true

  user_data           = file("install_httpd.sh")
  
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_key_pair" "web_test" {
  key_name   = "my-keypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDQLxldIyJMwoNRo8+iCtaRrJtFEKQXqYbl4kCZ6Vav+xllzz+JJJRkDJ4ibG2hHujLM7pbEHH+DXsirVYPR8fk6P6Ihs5rhXycgyPKXdv2rQP5Tvp1RN9U2k02kg67HjaUfTWpBQvYIfI/XpkRRjXyy4ldL+jBjyVFIaVoP8QwwYrRQEChYzbzNAA/oO8bSVSiWUfzNtZ9O2k/HWBiFzf/sBozwTBMRxitL3BTcxDrm2klP45TmMskMc4wLz9o6olr/f1ExHEsFF1BdccswrS8jWzQo9u+a3HGHCd3H5xU4BGzYzxE1K8OVGZrfjCzlToLpGqjIsJr5Fg5/YmGmDEeqijoXSrIzaL9UOmtNCCjFaAEAJF8yKWUz6vodeLdo1gosNsCNsrO2f7d586yo0jCAEKQjAPs7EAWO3TqMbyMQzfnMnpQNS30WZ6w5NmVUrpGYON6wjd7CnKBq4p9MtUx7EDntzFL7AFlsKTyzbYLNt9zzT7/qPvxvKKMRaRxSjM= user@PrinceDavidMBP"
}