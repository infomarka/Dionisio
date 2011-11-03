# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = []
users << User.new(:nome => 'Anderson', :password => '123456', :password_confirmation =>'123456', :data_nascimento =>'20/08/1991'.to_date, :email => 'andersonbusto@gmail.com')
users << User.new(:nome => 'Gisele', :password => '123456', :password_confirmation =>'123456', :data_nascimento =>'02/12/1991'.to_date, :email => 'gadf2009@gmail.com')
users << User.new(:nome => 'Matheus', :password => '123456', :password_confirmation =>'123456', :data_nascimento =>'16/09/1992'.to_date, :email => 'matheus1609@gmail.com')
users << User.new(:nome => 'João', :password => '123456', :password_confirmation =>'123456', :data_nascimento =>'19/09/1991'.to_date, :email => 'joaofelipenp@gmail.com')
users << User.new(:nome => 'Hudson', :password => '123456', :password_confirmation =>'123456', :data_nascimento =>'26/03/1991'.to_date,:email => 'hudson.sgomes@gmail.com')

users.each do |user|
  user.tipo = 2
  user.save(:validate => false)
end