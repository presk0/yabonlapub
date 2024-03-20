# README

bundle install

rails generate devise:install

note:
Ensure you have defined default url options in your environments files. Here is an example of default_url_options appropriate for a development environment in config/environments/development.rb:
    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
In production, :host should be set to the actual host of your application.
    config/environments/production.rb => modifier la ligne  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 } 