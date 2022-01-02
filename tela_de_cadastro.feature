    #language: pt

    Funcionalidade: Cadastro
    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar a minha compra

    Contexto: dado que acesso a tela de cadastro

    Cenário: Campos obrigatórios
    Quando preencho todos os campos marcados com asterisco
    Então o sistema me permite o cadastro

    Cenário: E-mail inválido
    Quando informo email em formato inválido
    Então o sistema deve deve inserir uma messagem de erro

    Cenário: Campos vazios
    Quando deixo campos vazios
    Então o sistema deve exibir uma mensagem de alerta

    Esquema do Cenário: Preencher multiplos campos
    Quando eu digitar <nome>
    E <email>
    Então o sistema deve exibir a <mensagem>

    Example:
            |nome    | email              | mensagem                                           |
            | "José" | "jose@ebac.com.br" | "Usuário cadastrado com sucesso"                   |                      |
            | ""     | "jose@ebac.com.br" | "é obrigatório o preenchimento de todos os campos" |
            | "José" | ""                 | "é obrigatório o preenchimento de todos os campos" |
            | "José" | "jose.ebac.com.br" | "Email não está no formato correto"|