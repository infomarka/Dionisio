# -*- coding: utf-8 -*-
class ListaEmail < ActiveRecord::Base
  validates :email, :uniqueness => true, :presence => true
  validate :validar_email
  def validar_email
    errors.add(:email, 'o email não é válido') if self.email.match(/[A-Za-z0-9\._-]+@[A-Za-z]+\.[A-Za-z]+/).nil?
  end
end
