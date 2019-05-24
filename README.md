# Weather Challenge

## O Desafio

Você recebeu a tarefa de desenvolver algumas features para um site de previsão do tempo.

O site pega a previsão de uma API pública e exibe na tela. Hoje o MVP só mostra a previsão de uma cidade fixa, São Paulo, e em Fahrenheit.

A Análise de Negócios mapeou as seguintes histórias em ordem de prioridade:

1. Mostrar as temperaturas também em graus Celsius. Só que a API só permite chamar um tipo de temperatura por vez, então vamos fazer nossa própria conversão.
2. A pessoa poderá escolher de que cidade vai querer ver a previsão. Nem todo mundo mora em São Paulo, afinal de contas.
3. Queremos ter um aplicativo para celular, e para isso precisamos pegar a previsão do nosso próprio site.
4. Ao invés de sempre ter que procurar a cidade, as pessoas poderiam se registrar e adicionar e remover cidades favoritas.

## Detalhes técnicos

Na história 1, faça uma classe para conversão de temperaturas. Ela recebe uma temperatura em Fahrenheit (F) e converte para Celsius (C). Use essa classe para exibir a temperatura na tela, ao lado da temperatura em Fahrenheit. 

Na história 2, coloque um campo de texto para passar o nome da cidade, repasse para a API, e mostre a previsão da cidade selecionada. Bônus se fizer sem que seja necessário recarregar a página. Preveja que a API pode retornar erros que deverão ser tratados.

Na história 3, faça uma API pública REST para consulta da previsão. O endpoint será `/api/forecast?city=` e deverá retornar um JSON, com os mesmos campos retornados pela API do OpenWeatherMap. Não é necessário implementar autenticação da API.

Na história 4, crie uma tabela 'users' e modele o banco a partir daí. Deverá haver alguma forma de autenticação.

## Orientações gerais

* Siga as histórias na ordem de prioridade. Procure focar em pequenos entregáveis. Tudo bem se não conseguir entregar tudo, mas faça o máximo que puder no tempo proposto.
* Nós iremos avaliar a qualidade no código, as boas práticas e sua atenção com a qualidade na implementação. Tenha atenção aos detalhes e
busque tratar condições anormais de execução. 
* O README deverá ter instruções detalhadas de como rodar a aplicação. Caso precise gerar usuários de testes para a história 4, facilite a criação dos mesmos para quem for rodar sua aplicação.
* Envie-nos um link para um repositório seu ou um arquivo ZIP com a sua solução. **Não abra PRs para este repositório.**
* Faça testes unitários para models e serviços. Testes de integração também são bem vindos.
* Se quiser mostrar suas habilidades em HTML/CSS, você pode estilizar a página como achar conveniente. Caso a vaga seja estritamente para trabalhar no backend, não precisa focar nessa parte.
* Se quiser mostrar suas habilidades em Javascript puro ou algum framework JS, fique à vontade. Isso é particularmente importante caso a vaga seja de full-stack ou o projeto precise de eventuais demandas no frontend.
* Não abuse das chamadas à API do OpenWeatherMap, já que é uma conta free. Você pode configurar sua própria conta caso precise de mais chamadas.
* *O objetivo desta etapa não é somente resolver o problema proposto.* Mesmo que estes problemas não sejam extensos, nós esperamos que você encaminhe um código que acredite ser de qualidade, possível de ser rodado e evoluído. Use esse problema para nos mostrar as práticas que você utiliza no dia-a-dia para escrever um bom código.
* Documentação da API: [Current weather data - OpenWeatherMap](https://openweathermap.org/current)
* Caso tenha alguma dúvida sobre esse desafio, você pode nos encaminhar via e-mail.
* Caso tenha sugestões de melhorias ou críticas em relação ao desafio ou estrutura inicial do projeto, sinta-se à vontade de nos enviar via e-mail.
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