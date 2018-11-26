require_relative 'config/application'
   begin
    Rails.application.load_tasks
rescue LoadError => e
    raise e unless ENV['RAILS_ENV'] == "production"
    
  end