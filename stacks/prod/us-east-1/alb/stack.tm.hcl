stack {
  name        = "Production Application Load Balancer (ALB)"
  description = "Production Application Load Balancer (ALB) deployed in us-east-1"
  id          = "93e0c782-1635-48cd-8717-d0728438fbac"
  tags        = ["loadbalancing"]
  after = [
    "tag:networking"
  ]
}
