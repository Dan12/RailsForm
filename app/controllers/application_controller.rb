class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def submit
    @location = params["place"]
    if @location == "Chicago"
      @message = "Wooho, you're awesome"
    else
      @message = "Oh...that's alright...I guess"
    end
    render 'message'
  end
end
