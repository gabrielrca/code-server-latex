# Code-Server com LaTeX

Este repositório contém a configuração de um ambiente baseado em [code-server](https://github.com/coder/code-server) com **LaTeX completo** e a extensão [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop), permitindo editar e compilar projetos LaTeX diretamente no navegador.

O objetivo é replicar localmente a experiência bem similar ao Overleaf, porém rodando de forma local.

Como os arquivos são mapeados para uma pasta local, é possível enviar os dados para o github (ou outro git) para backup ou colaboração externa.
## O que está incluído
- [code-server](https://github.com/coder/code-server) (VSCode no browser)
- Distribuição completa **TeX Live** 
- Extensão **LaTeX Workshop** já instalada
- Script para rodar o container com volume persistente

## Como usar

### 1. Build da imagem
No diretório do projeto, execute:
```bash
docker build -t code-server-latex .
```

### 2. Criar e iniciar o container
No diretório do projeto, execute:
```bash
docker run -d -p 8080:8080 -v /PATH/TO/Projects:/home/coder/project --name code-server-latex code-server-latex
```
Isso irá:

- Mapear a porta 8080 (acessar via http://localhost:8080)
- Montar a pasta Projects/ do host em /home/coder/project no container

### 3. Acessar o ambiente
Abra no navegador:
```bash
http://localhost:8080
```


### 4. Uso
Coloque seus arquivos .tex em /PATH/TO/Projects/ e edite-os via VSCode no browser.
A extensão LaTeX Workshop compila automaticamente seus documentos em PDF.
