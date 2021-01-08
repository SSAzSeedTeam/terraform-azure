resource "azurerm_resource_group" "db_resource_group" {
  name     = var.db_resource_group_name
  location = var.db_location
}

resource "azurerm_mysql_server" "daytrader-db-server" {
  name                = var.db_sql_server_name
  location            = var.db_location
  resource_group_name = var.db_resource_group_name

  administrator_login          = "daytrader_admin"
  administrator_login_password = "Mjuh_78wYFfdTRdH"
  ssl_enforcement_enabled      = true

  sku_name   = "GP_Gen5_2"
  storage_mb = 5120
  version    = "5.7"
}

resource "azurerm_sql_firewall_rule" "AllowAllWindowsAzureIps" {
  name                = "AllowAllWindowsAzureIps"
  resource_group_name = var.db_resource_group_name
  server_name         = var.db_sql_server_name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "0.0.0.0"
}

resource "azurerm_mysql_database" "daytrader-mysql-accounts-db" {
  name                = "daytrader-mysql-accounts-db"
  resource_group_name = var.db_resource_group_name
  server_name         = var.db_sql_server_name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_database" "daytrader-mysql-portfolios-db" {
  name                = "daytrader-mysql-portfolios-db"
  resource_group_name = var.db_resource_group_name
  server_name         = var.db_sql_server_name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_database" "daytrader-mysql-quotes-db" {
  name                = "daytrader-mysql-quotes-db"
  resource_group_name = var.db_resource_group_name
  server_name         = var.db_sql_server_name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_database" "daytrader-mysql-auth-db" {
  name                = "daytrader-mysql-auth-db"
  resource_group_name = var.db_resource_group_name
  server_name         = var.db_sql_server_name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
    