Feature: Confirguração de Produto

    Como cliente da EBAC-SHOP
    Quero concluir meu cadastro
    Para finalizar minha compra

    Background: Dado que eu seja um cliente Ebac-Shop e queira concluir meu cadastro e finalizar minha compra

    Scenario Outline: Preenchimento de Campos Obrigatórios:

        When eu preencher os campos <Nome>, <Sobrenome>, <País>, <Endereço>, <Cidade>, <CEP>, <Telefone> e <Endereço de e-mail>
        Then o sistema deve entender que estes são campos obrigatórios


        Examples:
            | Nome     | Sobrenome | País   | Endereço | Cidade   | CEP       | Telefone   | Endereço de e-mail            |
            | João     | Silva     | Brasil | Rua 2    | Brasília | 72115-055 | 6124584141 | joaosilva@ebacshop.com.br     |
            | José     | Silva     | Brasil | Rua 3    | Brasília | 72115-055 | 6124584142 | josesilva@ebacshop.com        |
            | Joseane  | Silva     | Brasil | Rua 4    | Brasília | 72115-055 | 6124584143 | joseanesilva@ebacshop.gov.br  |
            | Joaquim  | Silva     | Brasil | Rua 5    | Brasília | 72115-055 | 6124584144 | joaquimsilva@gmail.com.br     |
            | Jovenal  | Silva     | Brasil | Rua 6    | Brasília | 72115-055 | 6124584145 | jovenalsilva@live.com         |
            | Josefa   | Silva     | Brasil | Rua 7    | Brasília | 72115-055 | 6124584146 | josefasilva@yahoo.com.br      |
            | Joaquina | Silva     | Brasil | Rua 8    | Brasília | 72115-055 | 6124584147 | joaquinasilva@hotmail.com     |
            | Josefina | Silva     | Brasil | Rua 9    | Brasília | 72115-055 | 6124584148 | josefinasilva@ebacshop.com.br |


    Scenario Outline: Campo de E-mail Válido:

        When eu preencher p campo <E-mail>
        Then o sistema deve verificar se este é um "e-mail válido"

        Examples:
            | joaosilva@ebacshop.com.br     |
            | josesilva@ebacshop.com        |
            | joseanesilva@ebacshop.gov.br  |
            | joaquimsilva@gmail.com.br     |
            | jovenalsilva@live.com         |
            | josefasilva@yahoo.com.br      |
            | joaquinasilva@hotmail.com     |
            | josefinasilva@ebacshop.com.br |


    Scenario: Campos vazios
        When deixar qualquer campo obrigatório vazio
        Then o sistema deve exibir uma mensagem de alerta "Campo Obrigatório"




