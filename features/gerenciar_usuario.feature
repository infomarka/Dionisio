# language: pt
# coding: utf-8
# Source: http://github.com/aslakhellesoy/cucumber/blob/master/examples/i18n/pt/features/adicao.feature
# Updated: Tue May 25 15:52:12 +0200 2010
Funcionalidade: Gerenciar Usuário
  

  Cenário: Abrir página de cadastro
    Dado que eu estou na página principal
    E eu clico "cadastrar"
    Então eu devo estar na página de cadastro

  Cenário: Cadastrar Usuário
    Dado que eu estou na página de cadastro
    E eu preencho "user_nome" com "Gisele"
    E eu seleciono "1991" de "user_data_nascimento_1i"
    E eu seleciono "Dezembro" de "user_data_nascimento_2i"
    E eu seleciono "2" de "user_data_nascimento_3i"
    E eu preencho "user_email" com "gisele_rbdforever@hotmail.com"
    E eu preencho "user_password" com "familharestart"
    E eu preencho "user_password_confirmation" com "familharestart"
    Então eu aperto "Cadastrar"
    E eu devo estar na página principal
