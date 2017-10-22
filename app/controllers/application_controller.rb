class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private


  def event_store
    @event_store ||= Rails.configuration.event_store.tap do |client|
      # client.subscribe(->(event) {do_sth_cool_with(event)}, [SomeEvent])
    end
  end
end
