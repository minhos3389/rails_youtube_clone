source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# 로그인 기능을 위한 gem Summary: Flexible authentication solution for Rails with Warden   Homepage: https://github.com/heartcombo/devise
gem 'devise'
# devise 다국어 처리하는 gem Summary: Translations for the devise gem   Homepage: http://github.com/tigrish/devise-i18n
gem 'devise-i18n'
# 프로젝트레벨로도 다국어처리를 위해서 rails-i18n gem을 설치해줍니다. Summary: Common locale data and translations for Rails i18n.  http://github.com/svenfuchs/rails-i18n
gem 'rails-i18n'
# Summary: The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web.
gem 'bootstrap'
#  Summary: an asset gemification of the font-awesome icon font library Homepage: https://github.com/bokmann/font-awesome-rails
gem 'font-awesome-rails'
# 파일업로드 기능을 가진 carrierwave gem ,* carrierwave (2.2.2) ,Summary: Ruby file upload library ,Homepage: https://github.com/carrierwaveuploader/carrierwave
gem 'carrierwave'
# Summary: A pagination engine plugin for Rails 4+ and other modern frameworks
gem 'kaminari'
# * bootstrap4-kaminari-views (1.0.1) Summary: Bootstrap 4 styling for Kaminari gem ,Homepage: http://github.com/KamilDzierbicki/bootstrap4-kaminari-views
gem 'bootstrap4-kaminari-views'




# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
