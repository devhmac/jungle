# Jungle

## A Full-Stack, RESTful, mini e-commerce application built on Ruby/Rails 4.2

* The Jungle project, attempts to simulate real-world project experience by developing features and functionality on top of a pre-exising codebase.

## <ins>Added Features</ins>

### User Authentication
* Full User Registration & Authenticaion system, utilizing bcrypt for hashed passwords.

### Admin Controls
* Implemented Admin authentication requirement for all Admin actions.

* Admins have ability to view and create new categories.

* Admins can create new products assigned to newly created categories.

### Store features
* Dynamically added Sold-out badges on out of stock products

* Empty Cart Indicator

* Developed an Order Summary page
* Stripe payment integration

## <ins>Project</ins>
![Screen Shot 2021-05-05 at 2 26 53 PM](https://user-images.githubusercontent.com/52307383/117204950-3335a300-adae-11eb-941c-a2199fd802e9.png)


![Screen Shot 2021-05-05 at 2 36 47 PM](https://user-images.githubusercontent.com/52307383/117205825-5b71d180-adaf-11eb-8db5-9dd1556df680.png)
| *Login*      | *Register*      |
|------------|-------------|
| <img src=https://user-images.githubusercontent.com/52307383/117205592-0fbf2800-adaf-11eb-8aa8-aec63e1b29e0.png width="300">| <img src=https://user-images.githubusercontent.com/52307383/117205649-236a8e80-adaf-11eb-9776-e277488c5bdc.png width="300"> |



## <ins>Local Installation</ins>

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

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

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
