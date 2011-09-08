# -*- coding: utf-8 -*-
# To change this template, choose Tools | Templates
# and open the template in the editor.

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ListaEmail do
  fixtures :lista_emails
  before(:each) do
    @valido = {:email => 'fulano@gmail.com'}
    @email = ListaEmail.new @valido
  end

  it "deve ser um email válido" do
    @email.valid?.should be_true
  end
  it 'deve ser único' do
    @email[:email] = 'abc@gmail.com'
    @email.valid?.should be_false
  end
  it 'não pode ser vazio' do
    @email[:email] = ''
    @email.valid?.should be_false
  end
  it 'deve ter @' do
    @email[:email] = 'abc.com'
    @email.valid?.should be_false
  end
  it 'deve ter .' do
    @email[:email] = 'abc@com'
    @email.valid?.should be_false
  end


end

