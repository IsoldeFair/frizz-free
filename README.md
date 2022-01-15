# README

This project evolved from my life lasting love to curly hair and curly hair care.
It is only supposed to show the basic idea of what I am able to code in Rails.

To see the main features of the project, see [Wiki](https://github.com/IsoldeFair/frizz-free/wiki).

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

## Tests

For now, only the models are tested with RSpec. Tests for other parts of the project using RSpec and Capybara are in progress.

To run the tests, type

```
rspec
```
