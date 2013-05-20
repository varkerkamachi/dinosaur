# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Dinosaur::Application.initialize!

# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.server_settings = {
#     :address        => 'smtp.gmail.com',
#     :domain         => 'allmydinos.com',
#     :port           => 587,
#     :user_name      => 'andrewtcranston@gmail.com',
#     :password       => 'andy4274',
#     :authentication => :plain
# }
# 
# ActionMailer::Base.raise_delivery_errors = true
