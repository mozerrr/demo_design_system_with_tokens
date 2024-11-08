#!/bin/bash

# Убедитесь, что файл json существует
if [ ! -f "$1" ]; then
  echo "Файл $1 не найден!"
  exit 1
fi

# Прочитаем JSON из файла
json_content=$(cat "$1")

# Преобразуем JSON в строку, экранируя специальные символы
escaped_json=$(echo "$json_content" | jq -Rs .)

# Создаем Dart файл с содержимым
cat > "lib/raw_json.dart" <<EOL
const rawJson = '''
$escaped_json
''';
EOL

echo "Файл lib/raw_json.dart успешно создан!"
