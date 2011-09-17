# language: pt
# coding: utf-8
# Source: http://github.com/aslakhellesoy/cucumber/blob/master/examples/i18n/pt/features/adicao.feature
# Updated: Tue May 25 15:52:12 +0200 2010
Funcionalidade: Landing Page
  Deve ter um cadastro de emails

  Cenário: Deve aparecer Rio Curtição na página inicial
    Dado que eu estou na página principal
    Então eu devo ver "Rio Curtição"

  Cenário: Cadastrar email
    Dado que eu estou na página principal
    E eu preencho "lista_email_email" com "fredericotavares@gmail.com"
    E eu aperto "Enviar"
    Então eu devo ver "O Email foi salvo com sucesso"
