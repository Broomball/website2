class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def index
    @carousel_pictures = CarouselPicture.all
    render('layouts/index')
  end

  protect_from_forgery with: :exception
end
