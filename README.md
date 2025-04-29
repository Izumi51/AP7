# Calculadora de Juros

Uma aplicação web simples para calcular juros simples e compostos. Este projeto foi desenvolvido como parte da disciplina 4POA.

## Tecnologias Utilizadas

- Java
- Servlets
- JSP (JavaServer Pages)
- HTML
- Maven
- Tomcat

## Funcionalidades

- Cálculo de juros simples
- Cálculo de juros compostos
- Interface amigável que permite ao usuário:
  - Informar o capital inicial
  - Definir o período de tempo
  - Especificar o percentual de juros
  - Escolher o tipo de juros (simples ou composto)
  - Selecionar o que deseja visualizar no resultado (Juros e/ou Montante)

## Pré-requisitos

- JDK 8 ou superior
- Apache Maven
- Apache Tomcat
- IDE compatível com desenvolvimento Java web (recomendado: IntelliJ IDEA, Eclipse, etc.)

## Como Executar

1. Clone este repositório
```bash
git clone [url-do-repositorio]
cd juros
```

2. Compile o projeto com Maven
```bash
mvn clean install
```

3. Implante o arquivo WAR gerado em um servidor Tomcat
   - O arquivo WAR será gerado na pasta `target/juros.war`
   - Você pode copiar este arquivo para a pasta `webapps` do seu Tomcat
   - Ou configurar seu IDE para implantar diretamente no Tomcat

4. Acesse a aplicação em seu navegador
```
http://localhost:8080/juros/
```

## Estrutura do Projeto

```
juros/
├── src/
│   └── main/
│       ├── java/
│       │   ├── model/          # Modelos de dados e lógica de negócio
│       │   └── servlet/        # Servlets para processamento HTTP
│       └── webapp/
│           ├── pag/            # Páginas JSP adicionais
│           │   └── result.jsp  # Página de resultado
|           |   └── erro.jsp    # Página de erro
│           ├── WEB-INF/        # Configurações da aplicação web
│           │   └── web.xml     # Arquivo de configuração da aplicação web
│           └── index.jsp       # Página inicial
|           └── styles.css      # Estilização das páginas  
└── pom.xml                     # Configuração do Maven
```

## Como Contribuir

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request