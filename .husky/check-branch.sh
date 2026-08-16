#!/bin/sh
branch_name=$(git rev-parse --abbrev-ref HEAD)

if [ "$branch_name" = "main" ] || [ "$branch_name" = "master" ] || [ "$branch_name" = "develop" ]; then
  echo "❌ Commit bloqueado: Não é permitido comitar diretamente na branch '$branch_name'."
  echo "👉 Crie uma branch de recurso ex: feat/sua-feature ou fix/seu-bug"
  exit 1
fi
