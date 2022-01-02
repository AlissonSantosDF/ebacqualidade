    #language: pt

    Funcionalidade: Configurar produto
    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com o meu tamanho e gosto
    Para depois inserir no carrinho

    Contexto:
    Dado que eu esteja logado na página lojaebac.ebaconline.art.br/product/AugustaPullover jacket

    Cenário: O usuário pode realizar compra

    Quando eu escolher a cor
    E o tamanho
    E a quantidade
    Então o sistema me permite a compra do produto

    Cenário: Quantidade de produtos

    Quando eu escolher entre 1 e 10 produtos
    Então o sistema permite a venda

    Cenário: Estado original

    Quando eu aciono a opção de limpeza
    Então o sistema regressa ao estado original

    Esquema do Cenário: Compra de produto
    Quando preencho os campos <size> 
    E <Color>
    E <Quantidade>
    Então o sistema deve exibir a <mensagem>

    Example:
            | size | Color    | Quantidade | mensagem                                        |
            | "XS" | "Bluee"  | "1"        | "Compra aprovada!"                              |
            | "S"  | "Orange" | "2"        | "Compra aprovada!"                              |
            | "M"  | "Red"    | "3"        | "Compra aprovada!"                              |
            | "XL" | "Bluee"  | ""         | "É preciso preencher  os campos size, Color e Quantidade!"|