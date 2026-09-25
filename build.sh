#!/bin/sh
# Gera index.html (página completa para o GitHub Pages) a partir de grimorio.html.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  cat grimorio.html
  printf '\n</html>\n'
} > index.html
echo "index.html gerado."
