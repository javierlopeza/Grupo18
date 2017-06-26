ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => 'app67577396@heroku.com',
    :password => 'boq9nmdo6540',
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}