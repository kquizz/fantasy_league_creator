# README

Hello all!

I am trying to brush up on my Ruby skills, and I wanted to create a general purpose Fantasy League website.

Eventually I'll have this on a website, and hopefully monetize it lol.

Until then this is how to get it running on your machine!


-- Get Ruby 3.0.0 running (I suggest rbenv)
rbenv install 3.0.0
-- Bundle!
bundle install
-- Install npm
sudo apt install npm
-- DB migrate
rails db:migrate
-- Compile tailwind css
bundle exec rake compile_tailwind
-- Setup Solargraph (Optional) (& opens it in the background)
solargraph socket
--Start rails server
rails s
