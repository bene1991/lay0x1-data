#!/bin/bash
# Sincroniza os dados do dia com o GitHub após cada scan
cd "/Users/vinicius/Lay 0x1"

DATE=$(date +%Y-%m-%d)

git add data/entries_*.json public-site/index.html
git commit -m "sync: $DATE" --allow-empty
git push origin main 2>&1

echo "✅ Sync GitHub concluído: $DATE"
