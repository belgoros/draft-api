source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'active_model_serializers', '~> 0.10.6'
gem 'bootsnap',                 '>= 1.1.0', require: false
gem 'figaro'
gem 'mini_magick'
gem 'puma',                     '~> 4.3'
gem 'rack-cors'
gem 'rails',                    '~> 5.2.0'

group :development, :test do
  gem 'sqlite3'
  gem 'faker',             '~> 1.9', '>= 1.9.3'
  gem 'factory_bot_rails', '~> 5.0', '>= 5.0.1'
  gem 'rspec-rails',       '~> 3.8.1'
end

group :test do
  gem 'database_cleaner',  '~> 1.6.2'
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem "aws-sdk-s3", require: false
  gem 'pg',             '~> 1.0'
  gem 'rails_12factor', '~> 0.0.3'
end
