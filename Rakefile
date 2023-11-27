# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

Rails.application.load_tasks

task :compile_tailwind do
  sh "tailwindcss -c config/tailwind.config.js -i app/assets/stylesheets/application.css -o app/assets/stylesheets/wind.css"
end