# Jungle

A mini e-commerce application built with Ruby (-v2.3.5) on Rails (-v4.2) as a student assignment for Lighhouse Labs full-stack web development program.
TDD (test-driven development) practices are followed using RSpec library.
Stripe platform is used for payments.

## Project Features
- Admin users can list and create new categories
- Admins can add new products using the new category
- Visitors can go to the registration page from any page in order to create an account
- Visitors can sign up for a user account with e-mail, password, first name and last name
- Visitors can sign in using e-mail and password
- Visitors can log out from any page

# Final Product Screenshots
_app is served on http://localhost:3000/_
## Home Page
!["jungle-home-page"](https://raw.githubusercontent.com/yuzhakova/e-commerce-app-jungle-rails/master/public/screenshots-final-product/jungle-home-page.png)

_main page displaying the products_

## Cart
!["jungle-cart"](https://raw.githubusercontent.com/yuzhakova/e-commerce-app-jungle-rails/master/public/screenshots-final-product/jungle-cart.png)

_user cart with added items_

## Admin Page
!["jungle-admin-dashboard"](https://raw.githubusercontent.com/yuzhakova/e-commerce-app-jungle-rails/master/public/screenshots-final-product/jungle-admin-dashboard.png)

_admin dashboard for editing items for sale_

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Ruby 2.3.5
* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Sass-rails
* rspec-rails
* Stripe
