stack {
  name        = "ECS Nginx Service Production"
  description = "Production ECS Nginx Service deployed in us-east-1"
  id          = "df307956-cf80-4621-ab63-124a90cc65d1"
  after = [
    "tag:networking",
    "tag:loadbalancer",
    "tag:ecs-cluster",
  ]

}
