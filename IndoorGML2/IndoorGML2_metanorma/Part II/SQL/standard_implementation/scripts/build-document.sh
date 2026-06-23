#!/usr/bin/env bash
# Build IndoorSQL Metanorma document (HTML, PDF, etc.)
# Full SQL schemas live in ../schema/IndoorGML_core.sql and ../schema/IndoorGML_navi.sql
set -euo pipefail
cd "$(dirname "$0")/.."

if command -v metanorma >/dev/null 2>&1; then
  metanorma compile document.adoc --agree-to-terms
elif docker info >/dev/null 2>&1; then
  docker run --rm \
    -v "$PWD:/metanorma" \
    -w /metanorma \
    metanorma/metanorma:1.13.0 \
    metanorma compile document.adoc --agree-to-terms
else
  echo "Install metanorma (brew install metanorma) or start Docker Desktop, then re-run." >&2
  exit 1
fi

echo "Built: document.pdf document.html"
