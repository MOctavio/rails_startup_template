# Rails Startup template 
Forked from [DennyBritz](https://github.com/dennybritz/rails_startup_template)
This is a template I use for my new Ruby on Rails 4 applications on Windows. 
## How to Use

```bash
rails new [app_name] -m https://raw.githubusercontent.com/MOctavio/rails_startup_template/master/template.rb
```

## What it does

1. Adds the following gems:
  - bcrypt-ruby: I usually implement authentication myself instead of using gems like Devise. This is needed for the `has_secure_password` functionality. [See API Doc](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html).
  - [bourbon](http://bourbon.io/): Bourbon provides useful SASS mixins for cross-browser compatibility.
  - [CanCan](https://github.com/ryanb/cancan): CanCan is an authorization library for Ruby on Rails which restricts what resources a given user is allowed to access.
  - [haml-rails](http://haml.info): HAML is a beautiful templating language. I prefer it over ERB. 
  - [simple_form](https://github.com/plataformatec/simple_form): SimpleForm makes it easy to build complex form using simple markup.
  - (production environment) [rails_12factor](https://devcenter.heroku.com/articles/rails-integration-gems): This is needed for deploying Rails 4 applications on [Heroku](http://heroku.com). 
  - [Font Awesome](http://fortawesome.github.io/Font-Awesome/): Font-Awesome Sass gem.
  - [PG](https://bitbucket.org/ged/ruby-pg/wiki/Home): PostgreSQL as the database for Active Record.

2. Initializes a new git repository with an initial commit.
