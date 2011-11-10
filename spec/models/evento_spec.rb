# -*- coding: utf-8 -*-
require 'spec_helper'

describe Evento do
  fixtures :users
  before :each do
    @valido = {
      :titulo => 'Choppada.com',
      :local => 'Dce',
      :data_inicio => '20/04/2012 19:00'.to_datetime,
      :data_fim => '21/04/2012 01:00'.to_datetime,
      :descricao => 'A primeira choppada do periodo!!!',
      :user_id => 3,
    }
    @evento = Evento.new @valido
  end
  it "Deve ser evento válido" do
    @evento.valid?.should be_true
  end

  it "Deve ter titulo" do
    @evento.titulo = ''
    @evento.valid?.should be_false
  end

  it "Deve ter local" do
    @evento.local = ''
    @evento.valid?.should be_false
  end

  it "Deve ter data de inicio" do
    @evento.data_inicio = ''
    @evento.valid?.should be_false
    @evento.data_inicio = nil
    @evento.valid?.should be_false
  end

  it "Se não tiver data de final então será estabelecido horário de 00:00" do
    @evento.data_fim = ''
    @evento.save
    @evento.data_fim.should == '21/04/2012 00:00'.to_datetime
  end

  it "O usuario comum não pode criar evento" do
    @evento.user_id = 2
    @evento.valid?.should be_false
  end

  it "O administrador tambem pode criar evento" do
    @evento.user_id = 1
    @evento.valid?.should be_true
  end

end

