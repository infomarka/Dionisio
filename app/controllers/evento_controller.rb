class EventoController < ApplicationController
  def new
    @evento = Evento.new
  end

  def create
    @evento = Evento.new params[:evento]
    @evento.user = current_user
    if @evento.save
      redirect_to root_path
    else
      render :new
    end
  end

end
