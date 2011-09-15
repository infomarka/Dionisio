class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @email = ListaEmail.new
  end

end
