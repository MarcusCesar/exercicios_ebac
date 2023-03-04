#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
Quero fazer login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP

Cenário: Autenticação válida

Quando eu digitar o usuário "usuario1@ebacshop.com.br"
E a senha "ebacshop@123"
Então deve encaminhar o usuário para a tela de "checkout"

Cenário: Autenticação inexitente
Quando eu digitar o usuário "xxxyyyzzz@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"