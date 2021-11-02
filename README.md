[![Codacy Badge](https://app.codacy.com/project/badge/Grade/cc0b1c55e4e443869e9473327b0abed3)](https://www.codacy.com/gh/nejdetkadir/rails-api-boilerplate/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=nejdetkadir/rails-api-boilerplate&amp;utm_campaign=Badge_Grade)

# Rails API Boilerplate
A starter template for [Ruby on Rails API](https://guides.rubyonrails.org/api_app.html)

# Features
- Installed Gems
  - [devise](https://github.com/heartcombo/devise) with [devise-jwt](https://github.com/waiting-for-dev/devise-jwt) authenticatable
  - [faker](https://github.com/faker-ruby/faker)
  - [searchkick](https://github.com/ankane/searchkick)
  - [ruby-progressbar](https://github.com/jfelchner/ruby-progressbar)
  - [carrierwave](https://github.com/carrierwaveuploader/carrierwave)
  - [minimagick](https://github.com/minimagick/minimagick)
  - [pundit](https://github.com/varvet/pundit)
  - [rails-settings-cached](https://github.com/huacnlee/rails-settings-cached)
  - [whenever](https://github.com/javan/whenever)

# Installation
## Prerequisites
- [Ruby](https://rvm.io/)
- [NodeJS (>=10.x)](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
- [PostgreSQL](https://www.postgresql.org/download/)
- [ImageMagick](https://imagemagick.org/) `sudo apt-get install imagemagick libmagickcore-dev libmagickwand-dev`

## Installation
- Install GEM dependencies:

  ```bash
  bundle install
  ```

- Create database, migrate tables and run the seed data:

  ```bash
  rails db:create
  rails db:migrate
  rails db:seed
  ```

- If you are setting up again, when you already have previous databases:

  ```bash
  rails db:reset
  ```
- For dropping database
  ```bash
  rails db:drop
  ``` 

# LICENSE
```
GNU GENERAL PUBLIC LICENSE Version 3
```