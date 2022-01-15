# README

This project evolved from my life lasting love to curly hair and curly hair care.
It is only supposed to show the basic idea of what I am able to code in Rails.

## Setup

After cloning the repo, you need to run some basic steps to make sure you have all the n necessary requirements installed

```
apt-get update
apt-get install -y nodejs npm
npm install -g npm
npm install -g yarn

bundle install 
rake db:migrate
rake db:seed
bundle exec rails webpacker:install
bundle exec rails webpacker:compile
yarn install
```

Now, you should be able to run the server and connect to the page

```
rails server -b {YOUR_IP} -p {PORT}
```
-----

## Tests

For now, only the models are tested with RSpec. Tests for other parts of the project using RSpec and Capybara are in progress.

To run the tests, type

```
rspec
```
-----

## Main features

This project has three main features for its users:

In **Home** page there are some key information for beginners regarding ingredient types and porosity, all divided into modals with more detailed descriptions.

![home](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/home.png)

![home-modal](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/home-modal.png)

In the **Search Ingredients** tab, there is a live search for all the different ingredients we can find in our shampoos or conditioners.

![ing-list](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/ing-list.png)

![ing-live-search](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/ing-list-live-search.png)

In **Porosity Quiz** tab the user can answer some questions and find out what kind of hair porosity they have.

![quiz-filled](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/quiz-filled.png)

![quiz-result](https://github.com/IsoldeFair/frizz-free/blob/master/app/assets/images/quiz-result-modal.png)
