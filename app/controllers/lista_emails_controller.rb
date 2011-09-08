# -*- coding: utf-8 -*-
class ListaEmailsController < ApplicationController
  def create
    email = ListaEmail.new params[:lista_email]
    if email.save
      redirect_to root_path, :notice => 'O Email foi salvo com sucesso!'
    else
      redirect_to root_path, :alert => 'O Email não foi salvo!'
    end
  end
end
