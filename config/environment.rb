Depot::Application.configure do 
	config.action_mailer.delivery_method = :smtp

	config.action_mailer.smtp_settings = {
		address: 		"smtp.gmail.com",
		port: 			587,
		domain: 		"domain.of.sender.net",
		authentication: "plain",
		user_name: 		"lodewicus@gmail.com",
		password: 		"lodeadri",
		enable_starttls_auto: true  
	}
end

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
