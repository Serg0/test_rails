source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# ====== CORE ======
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'pg'
gem 'devise'
gem 'simple_form'
gem 'kaminari'
gem 'carrierwave', '~> 1.0'
gem 'dotenv-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# ====== UI =======

gem 'sass-rails', '~> 5.0'
gem 'haml-rails', "~> 1.0"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'bootstrap', '~> 4.0.0'
gem 'sprockets-rails', :require => 'sprockets/railtie'
gem 'jquery-rails'
gem 'select2-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# ====== DEV & TEST =====

group :development, :test do
  gem 'rspec'
  gem 'rspec-rails', '~> 3.7'
  gem 'sqlite3'
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
end

group :test do
  gem 'factory_bot_rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
