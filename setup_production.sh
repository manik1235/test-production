#!/bin/bash

# Run after changing anything to prep the precompiled assets and set up the db
export SECRET_KEY_BASE=$(rake secret)
RAILS_ENV=production bundle exec rake assets:precompile
RAILS_ENV=production rake db:create db:migrate db:seed
RAILS_ENV=production rails s
