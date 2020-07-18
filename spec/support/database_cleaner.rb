RSpec.configure do |config|
  # Clean up the database
  require 'database_cleaner'
  config.before(:suite) do
    DatabaseCleaner.orm = "sequel"
    DatabaseCleaner.clean_with :truncation, {:only => %w{LIST OF TABLES HERE} } 
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, :js => true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each, :database) do
    # open transaction
    DatabaseCleaner.start
  end

  config.after(:each, :database) do
    DatabaseCleaner.clean
  end
end