# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  has_many :eventos
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nome, :data_nascimento, :tipo, :promoter?
  validates :nome , :presence => true
  validate :validar_idade

  def validar_idade
    errors.add(:data_nascimento, :menor) if Date.today - 18.years < self.data_nascimento.to_date
  end

  def admin?
    self.tipo == 2
  end

  def promoter?
    self.tipo >= 1
  end

end
