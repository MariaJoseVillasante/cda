# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# Rails.logger = Logger.new(STDOUT)
# Rails.logger = Logger.new(Rails.root.join("log", Rails.env + ".log"), 10, 1024000)
#Rails.logger = Logger.new(Rails.root.join("log", Rails.env + ".log"))
Rails.logger = Logger.new("log/#{Rails.env}.log")
Rails.logger.level = Logger::INFO

Rails.logger.datetime_format = '%Y-%m-%d %H:%M:%S'
Rails.logger.formatter = proc do |severity, datetime, progname, msg|
    "|#{datetime}| #{severity}| #{progname}| #{msg}\n"
end
Rails.logger.info("Enviroment: #{Rails.env}") do 
    "Started The Rails App!"
end