# Easy Sharing

This app help user to share youtube videos on their sites. 

[Deployed Heroku URL](https://shrouded-beach-60767.herokuapp.com/)


## Getting Started

1. Clone the repository.
2. Install rvm (ruby version manager).
3. Install the version of Ruby mentioned in .ruby-version file.
4. Install postgresql.
5. Install the Gem dependencies

        bundle install

6. In order to run locally, the local postgresql database will need to be set up.

        rake db:create db:migrate RAILS_ENV=development
        rake db:create db:migrate RAILS_ENV=test

7. Start the server

        rails s

8. rspec and simplecove

        COVERAGE=true bundle exec rspec

Then navigate to `localhost:3000` in your browser.


9. Rspec and Rubocop free code screenshot:
![image](https://user-images.githubusercontent.com/5196979/87854647-030d3880-c931-11ea-998d-ed0766a6a81f.png)

![image](https://user-images.githubusercontent.com/5196979/87854626-dc4f0200-c930-11ea-909d-208cfae8e380.png)


10. Heroku deployed URL.
#### Base URL
          https://shrouded-beach-60767.herokuapp.com/


## What else is there

* Rspec and simplcove is implemented for all the testing.
* Rubocop for better coding practices
* pagination implemented by using will_painate
* Devise gem to support authentication.
* Easy share logo added for branding the site.

