Dir["../../**/code/*.rb"].sort.each {|f| require f}

# include factory
require 'factory_girl'
RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods
end

Dir["./factories/*.rb"].sort.each {|f| require f}