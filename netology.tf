provider  " aws " {
  region   =  " us-west-2 "
  версия =  " ~> 2.18 "
}

ресурс  " aws_cloudwatch_log_group "  " lambda " {
  name =  " / aws / lambda / netology "

  retention_in_days =  1
}
