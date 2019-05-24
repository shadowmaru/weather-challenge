# Weather Challenge

## O Desafio

Você recebeu a tarefa de desenvolver algumas features para um site de previsão do tempo.

O site pega a previsão de uma API pública e exibe na tela. Hoje o MVP só mostra a previsão de uma cidade fixa, São Paulo, e em Fahrenheit.

A Análise de Negócios mapeou as seguintes histórias em ordem de prioridade:

1. Mostrar as temperaturas também em graus Celsius. Só que a API só permite chamar um tipo de temperatura por vez, então vamos fazer nossa própria conversão.
2. A pessoa poderá escolher de que cidade vai querer ver a previsão. Nem todo mundo mora em São Paulo, afinal de contas.
3. Queremos ter um aplicativo para celular, e para isso precisamos pegar a previsão do nosso site.
4. Ao invés de sempre ter que procurar a cidade, as pessoas poderiam se registrar e adicionar e remover cidades favoritas.

## Detalhes técnicos

Na história 1, faça uma classe para conversão de temperaturas. Ela recebe uma temperatura em F e converte para C. Use essa classe para exibir a temperatura na tela, ao lado da temperatura em Fahrenheit.

Na história 2, coloque um campo de texto para passar o nome da cidade, repasse para a API, e mostre a previsão da cidade selecionada. Bônus se fizer sem recarregar a página. Preveja que a API pode retornar um erro, que deverá ser tratado.

Na história 3, faça uma API pública REST para consulta da previsão. O endpoint será `/api/forecast?city=` e deverá retornar um JSON, com os mesmos campos retornados pela API do OpenWeatherMap. Não é necessário implementar autenticação da API.

Na história 4, crie uma tabela 'users' e modele o banco a partir daí. Deverá haver algum método de autenticação.

## Orientações gerais

* Siga as histórias na ordem de prioridade. Procure focar em pequenos entregáveis. Tudo bem se não conseguir entregar tudo, mas faça o máximo que puder no tempo proposto.
* O README deverá ter instruções de como rodar a aplicação
* Envie-nos um link para um repositório seu ou um arquivo ZIP com a sua solução. **Não abra PRs para este repositório.**
* Faça testes unitários para models e serviços. Se quiser nos impressionar, faça testes de integração.
* Se quiser mostrar suas habilidades em CSS, deixe a página mais bonita.
* Não abuse das chamadas à API do OpenWeatherMap, já que é uma conta free.
* *O objetivo desta etapa não é somente resolver o problema proposto.* Mesmo que estes problemas não sejam extensos, nós esperamos que você encaminhe um código que acredite ser de qualidade, possível de ser rodado e evoluído. Use esse problema para nos mostrar as práticas que você utiliza no dia-a-dia para escrever um bom código.
* Documentação da API: [Current weather data - OpenWeatherMap](https://openweathermap.org/current)

## Instruções

### Docker

```shell
  docker-compose build
  docker-compose up
```

Acesse em http://localhost:3000

### Sem Docker

```shell
  bin/rails server -p 3000
```

Acesse em http://localhost:3000