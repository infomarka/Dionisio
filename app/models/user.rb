# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nome, :data_nascimento
  validates :nome , :presence => true
  validate :validar_idade

  def validar_idade
    errors.add(:data_nascimento, 'Você é menor de idade!') if Date.today - 18.years < self.data_nascimento.to_date
  end
end
