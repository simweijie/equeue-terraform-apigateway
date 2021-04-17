provider "aws" {
  region  = var.aws_region
}

locals {
  # query_customer_uin_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/${var.query_customer_uin_name}/invocations"
  query_customer_uin_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.query_customer_uin_name}/invocations"
  activate_pending_staff_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.activate_pending_staff_name}/invocations"
  add_opening_hours_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.add_opening_hours_name}/invocations"
  delete_customer_with_uin_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.delete_customer_with_uin_name}/invocations"
  delete_opening_hours_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.delete_opening_hours_name}/invocations"
  delete_staff_with_id_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.delete_staff_with_id_name}/invocations"
  get_branch_queue_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.get_branch_queue_name}/invocations"
  get_joined_queue_status_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.get_joined_queue_status_name}/invocations"
  join_queue_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.join_queue_name}/invocations"
  leave_queue_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.leave_queue_name}/invocations"
  list_of_branches_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.list_of_branches_name}/invocations"
  list_of_branches_with_clinic_id_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.list_of_branches_with_clinic_id_name}/invocations"
  list_of_clinics_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.list_of_clinics_name}/invocations"
  list_of_staff_in_clinic_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.list_of_staff_in_clinic_name}/invocations"
  register_customer_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.register_customer_name}/invocations"
  register_staff_to_existing_clinic_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.register_staff_to_existing_clinic_name}/invocations"
  register_staff_to_new_clinic_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.register_staff_to_new_clinic_name}/invocations"
  smart_search_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.smart_search_name}/invocations"
  update_customer_info_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.update_customer_info_name}/invocations"
  update_opening_hours_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.update_opening_hours_name}/invocations"
  update_queue_status_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.update_queue_status_name}/invocations"
  update_staff_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.update_staff_name}/invocations"
  login_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.login_name}/invocations"
  logout_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.logout_name}/invocations"
  staff_login_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.staff_login_name}/invocations"
  staff_logout_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.staff_logout_name}/invocations"
  search_filter_url = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/arn:aws:lambda:${var.aws_region}:${var.account_id}:function:${var.search_filter_name}/invocations"
}

resource "aws_api_gateway_rest_api" "api_gateway" {
  name        = "equeue-api-gateway"
  description = "eQueue Api Gateway"
  body        = data.template_file.api_gateway.rendered
}

data "template_file" "api_gateway" {
  template = file("swagger.yaml")
  vars = {
    query_customer_uin_url = local.query_customer_uin_url
    activate_pending_staff_url = local.activate_pending_staff_url
    add_opening_hours_url = local.add_opening_hours_url
    delete_customer_with_uin_url = local.delete_customer_with_uin_url
    delete_opening_hours_url = local.delete_opening_hours_url
    delete_staff_with_id_url = local.delete_staff_with_id_url
    get_branch_queue_url = local.get_branch_queue_url
    get_joined_queue_status_url = local.get_joined_queue_status_url
    join_queue_url = local.join_queue_url
    leave_queue_url = local.leave_queue_url
    list_of_branches_url = local.list_of_branches_url
    list_of_branches_with_clinic_id_url = local.list_of_branches_with_clinic_id_url
    list_of_clinics_url = local.list_of_clinics_url
    list_of_staff_in_clinic_url = local.list_of_staff_in_clinic_url
    register_customer_url = local.register_customer_url
    register_staff_to_existing_clinic_url = local.register_staff_to_existing_clinic_url
    register_staff_to_new_clinic_url = local.register_staff_to_new_clinic_url
    smart_search_url = local.smart_search_url
    update_customer_info_url = local.update_customer_info_url
    update_opening_hours_url = local.update_opening_hours_url
    update_queue_status_url = local.update_queue_status_url
    update_staff_url = local.update_staff_url
    login_url = local.login_url
    logout_url = local.logout_url
    staff_login_url = local.staff_login_url
    staff_logout_url = local.staff_logout_url
    search_filter_url = local.search_filter_url
  }
}

resource "aws_cloudwatch_log_group" "log_group" {
  depends_on = [aws_api_gateway_rest_api.api_gateway]
  name = "API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api_gateway.id}/${var.stage_name}"
}

resource "aws_api_gateway_stage" "api_gateway_stage" {
  depends_on = [
    aws_api_gateway_rest_api.api_gateway,
    aws_cloudwatch_log_group.log_group
  ]

  stage_name    = var.stage_name
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  deployment_id =  aws_api_gateway_deployment.api_gateway_deployment_20210417_1.id # "wjtnio"
  cache_cluster_size    = "0.5"

   access_log_settings {
    destination_arn = "arn:aws:logs:us-east-1:${var.account_id}:log-group:API-Gateway-Execution-Logs_${aws_api_gateway_rest_api.api_gateway.id}/${var.stage_name}"
    format = data.template_file.log_format.rendered
  }
}

resource "aws_api_gateway_method_settings" "method_settings" {
  depends_on = [
    aws_api_gateway_stage.api_gateway_stage,
    aws_api_gateway_rest_api.api_gateway
  ]
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  stage_name  = aws_api_gateway_stage.api_gateway_stage.stage_name
  method_path = "*/*"

  settings {
    metrics_enabled = true
    logging_level   = "INFO"
  }
}

data "template_file" "log_format" {
  template = file("log_format.tpl")
}