stack {
  name        = "eks"
  description = "eks"
  id          = "9ca87b75-eb50-4f8a-9530-221fc607f235"
  after = [
    "tag:vpc"
  ]
}
