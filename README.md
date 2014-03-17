railsapps
=========

Rails Application for task maintenance

Task Listing:

1)
rails new dodolist

2)
Adding Foundation, Device, HAML, rails_admin

# Devise for authentication support
gem 'devise'

gem 'foundation-rails'
group :development do
  gem 'rails_layout'
end

# Adding HAML Support
gem 'haml', '~> 4.0.5'

# Adding RailsAdmin
gem 'rails_admin'

3) 
bundle install

4)
Install Foundation for Rails

rails g foundation:install

5)
Install Devise

rails g devise:install
rails g devise:views
rails g devise user
rake db:migrate

6)
Install Rails Admin

rails g rails_admin:install

7)
Configure Devise
Open up config/environments/development.rb and add this line:

   config.action_mailer.default_url_options = { :host => 'localhost:3000' }
   
8)
Create a user

http://localhost:3000/users/sign_up

9)
Configure Dodo

Create dodo scaffold

rails g scaffold Dodo name:string
rake db:migrate

10)
Admin
http://localhost:3000/admin


