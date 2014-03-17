railsapps
=========

Rails Application for task maintenance

### Setup:
----------
rails new dodolist

#### Gemfile Update
#### Adding Foundation, Device, HAML, rails_admin

gem 'devise'


gem 'foundation-rails'


group :development do

  gem 'rails_layout'
  
end


gem 'haml', '~> 4.0.5'


gem 'rails_admin'

### Bundle Install
bundle install

### Install Foundation for Rails

rails g foundation:install

### Install Devise

rails g devise:install

rails g devise:views

rails g devise user

rake db:migrate


### Install Rails Admin

rails g rails_admin:install


### Configure Devise

Open up config/environments/development.rb and add this line:

   config.action_mailer.default_url_options = { :host => 'localhost:3000' }
   

### Create a user

http://localhost:3000/users/sign_up

### Configure Dodo

Create dodo scaffold

rails g scaffold Dodo name:string
rake db:migrate

### Admin

http://localhost:3000/admin

