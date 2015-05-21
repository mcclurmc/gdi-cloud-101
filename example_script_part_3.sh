# Example Script Part 3 - Platform-as-a-Service

# Make sure that you've installed the Heroku Toolbelt:
open https://toolbelt.heroku.com

# If you haven't already done so, make an account:
open https://signup.heroku.com

# Log in to Heroku Toolbelt -- don't forget your credentials from the
# previous step:
heroku login

# Let's download a sample Ruby on Rails app:
cd ~/Desktop/GDI
git clone https://github.com/mcclurmc/ruby-rails-sample.git
cd ruby-rails-sample

# Now let's run the app on Heroku!
heroku create
git push heroku master
heroku run rake db:migrate
heroku open

# Let's make a change! Open up the welcome page, edit it to say
# "Welcome <Your Name>", commit, and redeploy.
nano app/views/welcome/index.html.erb
git add .
git commit -m "My first commit"
git push heroku master
heroku open
