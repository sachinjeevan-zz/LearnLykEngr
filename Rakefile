# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.




begin
    require File.expand_path('../config/application', __FILE__)
    
rescue LoadError => e
    raise e unless ENV['RAILS_ENV'] == "production"
    Rails.application.load_tasks  
  end