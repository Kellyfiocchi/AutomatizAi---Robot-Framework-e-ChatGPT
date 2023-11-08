# Testes automatizados com ChatGPT em Robot Framework

# Objetivo

O objetivo deste projeto de automação de testes em [Robot Framework], é utilizar o [ChatGPT] para criar cenários de testes automatizados, para o cadastro de *dog walker* no site [Walk dog].

# Especificações
- A versão utilizada do Robot foi a 6.1.1
- A versão utilizada do Python foi a 3.11.5
- A versão utilizada do Pip foi a 23.2.1
- A versão utilizada do [ChatGPT] foi a 3.5 (gratuita).
- Os conhecimentos utilizados nesse projeto foram obtidos do curso [AutomatizAi - Robot Framework e ChatGPT] fornecido pelo [Fernando Papito]

# Como foram criados os testes?



### O que foi preciso alterar?
- Substituir `${URL}`: de http://www.walkdog.com para https://walkdog.vercel.app/signup
- Substituir `${DOCUMENT}`: de `path/to/document.png` para `${EXECDIR}/fixtures/document.png`
- Remover parâmetros do step `[Setup]     Abrir Navegador    ${URL}    ${BROWSER}`
  - `[Setup]     Abrir Navegador    ${URL}    ${BROWSER}` por `[Setup]     Abrir Navegador`
- Remover step `Vá Para a Página de Cadastro` pois o site já é aberto na página de cadastro
- Ajustar dados do step `Preencher Dados Pessoais` de acordo com minha preferência
  - preferi separar os dados ao invés de receber uma lista a iterar sobre ela
- Ajustar **keyword** `Preencher Dados Pessoais`
  - adicionar inserção dos campos número e complemento
- Substituir as palavras `For` e `And` por `FOR` e `AND` no step `Selecionar Atividades`
- Alterar seletor do botão submit: `css=input[type="button"]` por `css=button[type=submit]`
- Alterar seletor do popup onde é apresentado a mensagem de cadastro efetuado.
  - substituido o seletor `css=div.success-message` por `xpath=//div[@class="swal2-html-container"]`
- Alterar seletor do alert de campo obrigatório: de `css=div.alert-message` por `xpath=//span[@class="alert-error"][text()="${expected_text}"]`

No arquivo [cadastro.robot](./cadastro.robot) temos os testes automatizados, completamente funcionais, após os ajustes mencionados.

# Avaliação
Podemos identificar que o ChatGPT é um aliado para automação de testes, e que tem potencial para nos auxiliar nesse processo, minimizando nossos esforços.

# Executar os testes
## Pré-requisitos
- [Python] - v3.11.5
- [Pip] - v23.2.1
- [Robot Framework] - v6.1.1

## Execute o comando
```sh
robot -d ./logs cadastro.robot
```

[Robot Framework]: https://robotframework.org/
[ChatGPT]: https://chat.openai.com/
[Walk dog]: https://walkdog.vercel.app/signup
[AutomatizAi - Robot Framework e ChatGPT]: https://qaxperience.com/pt/meu-conteudo/curso/64dcd98cd6c17ce642520443/aula/64de9254d6c17ce64258a34d
[Fernando Papito]: https://www.linkedin.com/in/papitoio/
[Python]: https://www.python.org/
[Pip]: https://pypi.org/project/pip/
