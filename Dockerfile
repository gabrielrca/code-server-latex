# Base image do code-server
FROM ghcr.io/coder/code-server:latest

# Trocar para root para instalar pacotes
USER root

# Instalar LaTeX completo
RUN apt-get update && \
    apt-get install -y texlive-full texlive-latex-extra texlive-fonts-recommended texlive-lang-portuguese latexmk && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Voltar para o usuário padrão do code-server
USER coder

# Instalar extensão LaTeX
RUN code-server --install-extension James-Yu.latex-workshop

# Expor a porta padrão
EXPOSE 8080

# Definir diretório de trabalho
WORKDIR /home/coder/project

# Rodar code-server sem senha
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "none"]
