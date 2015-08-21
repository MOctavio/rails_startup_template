# Rails Startup template 
Forked from [DennyBritz](https://github.com/dennybritz/rails_startup_template)
This is a template I use for my new Ruby on Rails 4 applications. 
## How to Use

```bash
rails new [app_name] -m https://github.com/MOctavio/rails_startup_template/blob/master/template.rb
```

## What it does

1. Adds the following gems:
  - bcrypt-ruby: I usually implement authentication myself instead of using gems like Devise. This is needed for the `has_secure_password` functionality. [See API Doc](http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html).
  - [bourbon](http://bourbon.io/): Bourbon provides useful SASS mixins for cross-browser compatibility.
  - [CanCan](https://github.com/ryanb/cancan): CanCan is an authorization library for Ruby on Rails which restricts what resources a given user is allowed to access.
  - [haml-rails](http://haml.info): HAML is a beautiful templating language. I prefer it over ERB. 
  - [simple_form](https://github.com/plataformatec/simple_form): SimpleForm makes it easy to build complex form using simple markup.
  - [rspec-rails](https://github.com/rspec/rspec-rails): Rspec is a testing tool for test-driven and behavior-driven development. It makes writing specs more enjoyable.
  - [guard-rspec](https://github.com/guard/guard-rspec): Guard for automatically launching your specs when files are modified.
  - (test environment) [capybara](https://github.com/jnicklas/capybara): I use Capybara to write integration tests and simulate user behavior.
  - (test environment) [factory_girl_rails](https://github.com/thoughtbot/factory_girl): FactoryGirl provdes a flexible alternative to Rails fixtures. 
  - (production environment) [rails_12factor](https://devcenter.heroku.com/articles/rails-integration-gems): This is needed for deploying Rails 4 applications on [Heroku](http://heroku.com). 

4. It doesn't installs [Twitter bootstrap](http://getbootstrap.com/).

5. Installs [Font Awesome](http://fortawesome.github.io/Font-Awesome/).

6. Initializes a new git repository with an initial commit.

7. Optionally create a github repository.

8. Installs [PG](https://bitbucket.org/ged/ruby-pg/wiki/Home)

