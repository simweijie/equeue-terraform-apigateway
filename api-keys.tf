#----------------------------------------------------------------------------
# API KEYS
#----------------------------------------------------------------------------
resource "aws_api_gateway_usage_plan" "usage_plan" {
  name = "equeue-usage-plan"
  api_stages {
    api_id = aws_api_gateway_rest_api.api_gateway.id
    stage  = aws_api_gateway_stage.api_gateway_stage.stage_name
  }
}

resource "aws_api_gateway_api_key" "apikey" {
  name = "equeue-gui-api-key"
}

resource "aws_api_gateway_usage_plan_key" "usageplan_key" {
  key_id        = aws_api_gateway_api_key.apikey.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.usage_plan.id
}