# Ruby version for Heroku
ruby "2.2.0"
# For encrypted password
gem "bcrypt-ruby"
# For authorization (https://github.com/ryanb/cancan)
gem "cancan"
# CSS made fun! (http://sass-lang.com/)
gem 'sass'
# Useful SASS mixins (http://bourbon.io/)
gem "bourbon"
# HAML templating language (http://haml.info)
gem "haml-rails"
# Font-Awesome Sass gem (https://github.com/FortAwesome/font-awesome-sass)
gem 'font-awesome-rails'
# Simple form builder (https://github.com/plataformatec/simple_form)
gem "simple_form", git: "https://github.com/plataformatec/simple_form"
# Pg is the Ruby interface to the PostgreSQL RDBMS (http://www.postgresql.org/)
gem 'pg'
gem_group :development do
  # Rspec for tests (https://github.com/rspec/rspec-rails)
  gem "rspec-rails"
  # Guard for automatically launching your specs when files are modified. (https://github.com/guard/guard-rspec)
  gem "guard-rspec"
end
gem_group :test do
  gem "rspec-rails"
  # Capybara for integration testing (https://github.com/jnicklas/capybara)
  gem "capybara"
  gem "capybara-webkit"
  gem "launchy"
  # FactoryGirl instead of Rails fixtures (https://github.com/thoughtbot/factory_girl)
  gem "factory_girl_rails"
  gem "database_cleaner"
end
gem_group :production do
  # For Rails 4 deployment on Heroku
  gem "rails_12factor"
end
# Initialize guard
# ==================================================
run "bundle exec guard init rspec"
# Initialize CanCan
# ==================================================
run "rails g cancan:ability"
# Ignore rails doc files, Vim/Emacs swap files, .DS_Store, and more
# ===================================================
run "cat << EOF >> .gitignore
/.bundle
/db/*.sqlite3
/db/*.sqlite3-journal
/log/*.log
/tmp
database.yml
doc/
*.swp
*~
.project
.idea
.secret
.DS_Store
EOF"
# Git: Initialize
# ==================================================
git :init
git add: "."
git commit: %Q{ -m 'Initial commit' }
if yes?("Initialize GitHub repository?")
  git_uri = `git config remote.origin.url`.strip
  unless git_uri.size == 0
    say "Repository already exists:"
    say "#{git_uri}"
  else
    username = ask "What is your GitHub username?"
    run "curl -u #{username} -d '{\"name\":\"#{app_name}\"}' https://api.github.com/user/repos"
    git remote: %Q{ add origin git@github.com:#{username}/#{app_name}.git }
    git push: %Q{ origin master }
  end
end
