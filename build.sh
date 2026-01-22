#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file build.sh
# Script de Build Personalizado para Vercel (Hugo + Tailwind)
# Autor: Evandro Santos
#------------------------------------------------------------------------------

main() {

  # 1. Definição de Versões
  # Mantemos as versões fixas para garantir estabilidade (Reproducible Builds)
  DART_SASS_VERSION=1.97.2
  GO_VERSION=1.25.5
  HUGO_VERSION=0.154.4
  NODE_VERSION=24.12.0

  # Define o fuso horário para os posts ficarem com a data correta no deploy
  export TZ=America/Sao_Paulo 

  # Cria diretório local para binários se não existir
  mkdir -p "${HOME}/.local"

  # ---------------------------------------------------------------------------
  # 2. Instalação das Ferramentas (Sass, Go, Hugo, Node)
  # ---------------------------------------------------------------------------

  # Install Dart Sass
  echo "📦 Instalando Dart Sass ${DART_SASS_VERSION}..."
  curl -sLJO "https://github.com/sass/dart-sass/releases/download/${DART_SASS_VERSION}/dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
  tar -C "${HOME}/.local" -xf "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
  rm "dart-sass-${DART_SASS_VERSION}-linux-x64.tar.gz"
  export PATH="${HOME}/.local/dart-sass:${PATH}"

  # Install Go
  echo "📦 Instalando Go ${GO_VERSION}..."
  curl -sLJO "https://go.dev/dl/go${GO_VERSION}.linux-amd64.tar.gz"
  tar -C "${HOME}/.local" -xf "go${GO_VERSION}.linux-amd64.tar.gz"
  rm "go${GO_VERSION}.linux-amd64.tar.gz"
  export PATH="${HOME}/.local/go/bin:${PATH}"

  # Install Hugo Extended (Crucial para processar SCSS/PostCSS)
  echo "📦 Instalando Hugo Extended ${HUGO_VERSION}..."
  curl -sLJO "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
  mkdir -p "${HOME}/.local/hugo"
  tar -C "${HOME}/.local/hugo" -xf "hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
  rm "hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz"
  export PATH="${HOME}/.local/hugo:${PATH}"

  # Install Node.js
  echo "📦 Instalando Node.js ${NODE_VERSION}..."
  curl -sLJO "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.xz"
  tar -C "${HOME}/.local" -xf "node-v${NODE_VERSION}-linux-x64.tar.xz"
  rm "node-v${NODE_VERSION}-linux-x64.tar.xz"
  export PATH="${HOME}/.local/node-v${NODE_VERSION}-linux-x64/bin:${PATH}"

  # ---------------------------------------------------------------------------
  # 3. Verificações e Dependências do Projeto
  # ---------------------------------------------------------------------------

  echo "✅ Verificando versões instaladas:"
  echo "   Dart Sass: $(sass --version)"
  echo "   Go: $(go version)"
  echo "   Hugo: $(hugo version)"
  echo "   Node.js: $(node --version)"

  # Configure Git (Necessário para o Hugo acessar datas de modificação dos arquivos)
  echo "🔧 Configurando Git..."
  git config core.quotepath false
  if [ "$(git rev-parse --is-shallow-repository)" = "true" ]; then
    git fetch --unshallow
  fi

  # [CRÍTICO] Instala as dependências do projeto (Tailwind, PostCSS, etc)
  # Sem isso, o Hugo não consegue processar os estilos e o build falha.
  echo "📥 Instalando dependências do projeto (NPM)..."
  npm ci 
  # 'npm ci' é melhor que 'npm install' para servidores de build (mais rápido e limpo)

  # ---------------------------------------------------------------------------
  # 4. Build do Site
  # ---------------------------------------------------------------------------
  
  echo "🚀 Iniciando Build do Hugo..."
  # --gc: Garbage Collection (limpa arquivos não usados)
  # --minify: Otimiza HTML, CSS e JS para produção
  hugo --gc --minify 

}

set -euo pipefail
main "$@"