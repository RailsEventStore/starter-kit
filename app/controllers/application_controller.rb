class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def event_store
    @event_store ||= Rails.configuration.event_store.tap do |client|
      # client.subscribe(->(event) {do_sth_cool_with(event)}, [SomeEvent])
    end
  end

  def command_bus
    @command_bus ||= Arkency::CommandBus.new.tap do |command_bus|
      # command_bus.register(
      #   FooBoundedContext::DoSthCool,
      #   FooBoundedContext::DoSthCoolHandler.new(event_store)
      # )
    end
  end

end
