plugin "azurerm" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
}

rule "terraform_unused_variables" {
  enabled = true
}

rule "terraform_unused_declarations" {
  enabled = true
}
