resource "aws_cloudwatch_event_target" "target" {
  target_id = "codecommit_notification"
  rule      = "${aws_cloudwatch_event_rule.eventrule.name}"
  arn       = "${aws_sns_topic.notification.arn}"

  input_path = "$.detail.notificationBody"
}
