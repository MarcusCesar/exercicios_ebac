Feature: Confirguração de Produto

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Background: Dado que eu seja um usuário e queira configurar o meu produto para inseri-lo no meu Carrinho de Compras

Scenario Outline: Seleção de Cores e Tamanho:

When eu selecionar uma opção da campo <Size>
Then o sistema deve entender que o campo é obrigatório e a opção deve mudar o nível de transparência

When eu selecionar uma opção do campo <Color>
And entender que este também é obrigatório e a opção deve mudar o nível de transparência

Examples:
    | Size | Color | 
    | XS | Blue |
    | XS | Orange |
    | XS | Red |
    | S | Blue |
    | S | Orange |
    | S | Red |
    | M | Blue |
    | M | Orange |
    | M| Red |
    | L | Blue |
    | L | Orange |
    | L | Red |
    | XL | Blue |
    | XL | Orange |
    | XL | Red |
    

Scenario: Quantidade de Produtos Válidos

When eu selecionar um número "=<10" no campo quantidade
Then o sistema deve entender que este "número é válido"
And desbloquear o botão "Comprar" que insere o/os produto/os no carrinho de compras

Scenario: Limpar produtos
When eu selecionar o botão "Limpar"
Then o sistema deve apagar as seleções dos campos "quantidade", "size" e "color"




