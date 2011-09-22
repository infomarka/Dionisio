# -*- coding: utf-8 -*-
require 'spec_helper'

describe User do
  before :each do
    @valido = {
      :email => 'andersonbusto@gmail.com',
      :password => '123456',
      :nome => 'Anderson Araujo',
      :data_nascimento => '20/08/1991'.to_date
    }
    @user = User.new @valido
  end
  it "Deve ser usuario válido" do
    @user.valid?.should be_true
  end
  it "A senha deve ter mais de 6 caracteres" do
    @user.password = '12345'
    @user.valid?.should be_false
  end
  it "O email deve ser válido" do
    @user.email= 'kasdfgahsfklljçafdh'
    @user.valid?.should be_false
  end
  it "O nome não pode estar em branco" do
    @user.nome = ''
    @user.valid?.should be_false
  end
  it "A idade deve ser maior de 18 anos" do
    @user.data_nascimento = Date.today - 17.years
    @user.valid?.should be_false
  end

end
