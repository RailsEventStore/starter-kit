require_relative 'boot'

require 'rails/all'
require 'aggregate_root'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StarterKit
  class Application < Rails::Application
    config.to_prepare do
      Rails.configuration.event_store = RailsEventStore::Client.new
      # add subscribers here

      AggregateRoot.configure do |config|
        config.default_event_store = Rails.configuration.event_store
      end
    end
  end
end
