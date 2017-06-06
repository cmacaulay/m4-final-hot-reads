# Hot Reads

## Basic Overview

Hot Reads tracks the most read links from users on the [URLockBox](https://m4-macaulay-final.herokuapp.com/) app. It lists the top ten read links from the past 24 hours, in order of hottest to not. 

## Installation

### Getting Started

If you'd like to run the app locally, these instructions should get you up and running: 
```
git clone git@github.com:cmacaulay/m4-final-hot-reads.git hot_reads
cd hot_reads
bundle install
rake db:setup
```

These steps will allow you to use the app in development:

Start the server:

```
rails s
```

In your browser, visit: 

```
http://localhost:3000/
```

And voila! You should be able to navigate the site in development. 

## Testing

This project was built using TDD. The testing framework used is [RSpec](https://github.com/rspec/rspec-rails) which is used in tandem with [Capybara](https://github.com/teamcapybara/capybara).

### Running the tests

Once your local environment is set up, running tests is straight forward. 
(Remember to `bundle`)
```
rspec
```
This command should run the whole testing suite, the . 

## Endpoints
#### Links API
This link allows us to add a hot read to the database - feel free to add your own!
```
POST api/v1/links
```

#### Links Resources
The root path is where anyone can see the hottest reads!
```
GET /
```


## Authors

* **Casey Macaulay** - *Final Assessment, Turing School of Software & Design* 

## Acknowledgments

* Thank you to [Turing](http://www.turing.io)
