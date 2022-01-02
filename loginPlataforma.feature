#language: pt

Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto:
Dado que tenho uma conta cadastrada no sistema

Cenário: Login válido
Quando forneço minhas credenciais login e senhas válidos
Então devo ser redirecionado para a tela de checkout ou cadastro

Cenário: Login com usuário incorreto
Quando forneço a credencial usuário inválido
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Cenário: Login com senha incorreta
Quando forneço a credencial senha inválida
Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

Esquema do Cenário: Login
Quando eu digito <usuario>
E <senha> 
Então o sistema deve exibir a <mensagem>

Example: 
|usuario|senha|mensagem|
|"João"|"teste@123"| "Bem vindo!"|
|"Joãoo"|"teste@123"| "Login ou senha inválidos"|
|"João"|"testeee@123"| "Login ou senha inválidos"|