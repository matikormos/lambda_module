module "hello_world" {
  source = "./module/lambda"

  lambda_function_name = "hello_world_v2"
  lambda_code_path     = "${path.module}/module/lambda/examples/hello_world/python/source"
  lambda_handler       = "hello_world.lambda_handler"
  lambda_runtime       = "python3.8"
  #   lambda_policy_arn = [
  #     aws_iam_policy.iampolicy_logs.arn,
  #   ]
  lambda_description = "Hello world lambda module version"
  lambda_timeout     = "240"

  environment = {
    variables = {
      greet = "(Y)"
    }
  }

  tags = { "state" = "terraform managed" }
}