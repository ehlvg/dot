#!/bin/zsh

# Проверяем, передан ли эмодзи в аргументе
if [ -z "$1" ]; then
  echo "❌ Использование: $0 <эмодзи>"
  exit 1
fi

NEW_EMOJI="$1"

# Обновляем ~/.zshrc
sed -i '' "s|^export CHEMOJI=.*|export CHEMOJI=\"$NEW_EMOJI\"|" ~/.zshrc

# Применяем изменения без перезапуска терминала
source ~/.zshrc

echo "✅ Эмодзи в промпте обновлён на: $NEW_EMOJI"
