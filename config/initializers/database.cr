require "jennifer"
require "jennifer/adapter/mysql"
require "colorize"

Jennifer::Config.read("config/database.yml", :development)

Jennifer::Config.configure do |conf|
  
end