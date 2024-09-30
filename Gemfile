source "https://rubygems.org"

gem "rails"
gem "sqlite3"
gem "puma"
gem "slim-rails"

# TODO: adopt dry-rb ecosystem

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "pry-doc"
  gem "rack-mini-profiler"
  gem "rails-erd"
  gem "yard-junk"
end

group :test do
  gem "factory_bot_rails"
  gem "rspec-rails"
  gem "simplecov"
end

group :development, :test do
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rubocop-factory_bot", require: false
  gem "rubocop-rspec", require: false

  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end
