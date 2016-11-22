class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def caller_id
  	@callerid = Session.callerid
  end
end
