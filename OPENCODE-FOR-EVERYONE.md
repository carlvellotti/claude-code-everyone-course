# OpenCode for Everyone - Полное руководство по адаптации

## Обзор

Этот репозиторий содержит полную адаптацию курса "Claude Code for Everyone" от Carl Vellotti для **OpenCode** - open source AI coding agent.

## Что такое OpenCode?

[OpenCode](https://opencode.ai) - это open source AI агент для разработки с 139K+ звёзд на GitHub. Основные особенности:

- **100% open source** - полностью открытый код под MIT лицензией
- **Provider-agnostic** - работает с любыми моделями через Models.dev (75+ провайдеров)
- **Desktop приложение** - доступно на macOS, Windows, Linux (бета)
- **TUI** - продвинутый терминальный интерфейс на Bubble Tea
- **LSP поддержка** - автоматическая загрузка языковых серверов
- **Мульти-сессии** - параллельная работа над проектом
- **Share links** - публикация сессий для отладки

## Ключевые отличия от Claude Code

### Архитектурные различия
| Аспект | Claude Code | OpenCode |
|--------|-------------|----------|
| **Лицензия** | Проприетарный | Open Source (MIT) |
| **Провайдер** | Только Anthropic | 75+ провайдеров |
| **Модели** | Claude Opus/Sonnet | Любые модели (Claude, GPT, Gemini, MiMo, локальные) |
| **Стоимость** | $20+/месяц подписка | Бесплатные модели + опциональные подписки |
| **Desktop** | Нет | Да (бета) |
| **Архитектура** | Монолит | Клиент-сервер |

### Функциональные различия
| Функция | Claude Code | OpenCode |
|---------|-------------|----------|
| **TUI** | Базовый | Продвинутый (Bubble Tea) |
| **LSP** | Нет | Да, из коробки |
| **Мульти-сессии** | Нет | Да |
| **Share links** | Нет | Да |
| **Агенты** | Нет | build (полный доступ) + plan (read-only) |
| **Кастомные команды** | Нет | Да, через .md файлы |
| **MCP** | Нет | Да, поддержка Model Context Protocol |

## Адаптация курса

### Что изменено

#### 1. Установка и настройка
**Claude Code:**
```bash
curl -fsSL https://claude.ai/install.sh | bash
claude
```

**OpenCode:**
```bash
# Терминал
curl -fsSL https://opencode.ai/install | bash

# Desktop
# Скачать с https://opencode.ai/download

# Пакетные менеджеры
brew install anomalyco/tap/opencode
```

#### 2. Аутентификация
**Claude Code:** Требуется подписка Claude Pro/Max ($20+/месяц)

**OpenCode:** 
- Бесплатные модели включены
- Можно использовать существующие подписки (ChatGPT Plus/Pro, GitHub Copilot)
- Локальные модели (бесплатно)
- Кастомные провайдеры (MiMo-V2-Pro через local endpoint)

#### 3. Модели
**Claude Code:** Только Claude Opus 4.5

**OpenCode:** 75+ моделей через Models.dev:
- Claude (Opus, Sonnet, Haiku)
- GPT (GPT-4, GPT-4o, O1, O3)
- Gemini (2.5, 2.0 Flash)
- MiMo-V2-Pro (Xiaomi) - через local endpoint
- Локальные модели (Ollama, LM Studio)

#### 4. Конфигурация
**Claude Code:** Нет конфигурационного файла

**OpenCode:** `~/.opencode.json`
```json
{
  "providers": {
    "local": {
      "endpoint": "http://localhost:11434/v1",
      "apiKey": "not-needed"
    }
  },
  "agents": {
    "coder": {
      "model": "mimo-v2-pro",
      "maxTokens": 8000
    }
  },
  "lsp": {
    "go": {
      "disabled": false,
      "command": "gopls"
    }
  }
}
```

#### 5. Агенты
**Claude Code:** Нет агентов

**OpenCode:** Два встроенных агента:
- **build** - полный доступ для разработки
- **plan** - read-only для анализа и исследования

Переключение: `Tab`

#### 6. Команды
**Claude Code:** Slash commands (`/start-1-1`, `/doctor`, `/help`)

**OpenCode:** 
- Slash commands поддерживаются
- Кастомные команды через `.md` файлы
- Командный диалог: `Ctrl+K`

### Файлы адаптации

Каждый урок оригинального курса имеет два файла:
- `CLAUDE.md` - оригинальный файл для Claude Code
- `OPENCODE.md` - адаптированный файл для OpenCode

### Скрипт адаптации

Создан скрипт `adapt-to-opencode.sh` для автоматической адаптации:
```bash
./adapt-to-opencode.sh
```

Скрипт:
1. Находит все `CLAUDE.md` файлы
2. Создаёт `OPENCODE.md` версии
3. Заменяет ссылки на Claude Code → OpenCode
4. Добавляет заголовок адаптации

## Структура адаптированного курса

```
opencode-for-everyone/
├── course-materials/
│   └── lesson-modules/
│       ├── 1.1-introduction/
│       │   ├── CLAUDE.md (оригинал)
│       │   └── OPENCODE.md (адаптация)
│       ├── 1.2-file-exploration/
│       │   ├── CLAUDE.md
│       │   └── OPENCODE.md
│       └── ... (все модули адаптированы)
├── OPENCODE-ADAPTATION.md (гайд по адаптации)
├── OPENCODE-FOR-EVERYONE.md (полное руководство)
├── README.md (обновлён для OpenCode)
└── adapt-to-opencode.sh (скрипт адаптации)
```

## Как использовать адаптацию

### Для учеников
1. Клонируйте репозиторий
2. Установите OpenCode
3. Следуйте адаптированным инструкциям в `OPENCODE.md` файлах
4. Используйте интерактивные промпты как задумано

### Для контрибьюторов
1. Форкните репозиторий
2. Создайте feature branch
3. Внесите изменения в `OPENCODE.md` файлы
4. Отправьте pull request

## Настройка MiMo-V2-Pro

### Вариант 1: Через local endpoint (Ollama)
```bash
# Установите Ollama
curl -fsSL https://ollama.ai/install.sh | bash

# Загрузите MiMo-V2-Pro
ollama pull mimo-v2-pro

# Настройте OpenCode
cat > ~/.opencode.json << 'EOF'
{
  "providers": {
    "local": {
      "endpoint": "http://localhost:11434/v1",
      "apiKey": "not-needed"
    }
  },
  "agents": {
    "coder": {
      "model": "mimo-v2-pro",
      "maxTokens": 8000
    }
  }
}
EOF

# Запустите OpenCode
opencode
```

### Вариант 2: Через переменную окружения
```bash
export LOCAL_ENDPOINT=http://localhost:11434/v1
opencode
```

### Вариант 3: Через кастомный провайдер
```json
{
  "providers": {
    "xiaomi": {
      "endpoint": "https://api.xiaomi.com/v1",
      "apiKey": "your-api-key"
    }
  },
  "agents": {
    "coder": {
      "model": "xiaomi/mimo-v2-pro",
      "maxTokens": 8000
    }
  }
}
```

## Особенности курса

### Интерактивный формат
Каждый урок включает:
- **STOP** - точки остановки для взаимодействия
- **ACTION** - конкретные действия
- **USER** - ожидаемые ответы пользователя
- **Success Criteria** - критерии завершения урока

### Практический подход
- Не видео, не тексты
- Прямое применение
- Реальные задачи
- Мгновенная обратная связь

### Нарративный сценарий
- Сеттинг: Basecamp Coffee (сеть кофеен)
- Роль: Новый менеджер
- Задача: Исправить программу лояльности за 3 месяца
- Навыки: AI-оркестрация, анализ данных, создание документов

## Бонусные материалы

### Рекомендуемые редакторы
1. **VS Code** - бесплатно, хорошо интегрируется
2. **Cursor** - AI-powered, отлично работает с OpenCode
3. **Zed** - быстрый, современный
4. **Neovim** - для продвинутых пользователей

### Полезные команды OpenCode
```bash
# Запуск
opencode

# С отладкой
opencode -d

# С рабочей директорией
opencode -c /path/to/project

# Неинтерактивный режим
opencode -p "Your prompt here"

# С JSON выводом
opencode -p "Your prompt" -f json
```

### Клавиатурные сокращения
| Сокращение | Действие |
|------------|----------|
| `Ctrl+C` | Выход |
| `Ctrl+?` | Справка |
| `Ctrl+A` | Переключение сессий |
| `Ctrl+K` | Командный диалог |
| `Ctrl+O` | Выбор модели |
| `Ctrl+N` | Новая сессия |
| `Ctrl+X` | Отмена текущей операции |
| `Esc` | Закрыть диалог |

## Следующие шаги

### Для этого репозитория
1. **Протестировать адаптированные уроки** - проверить интерактивные элементы
2. **Создать OpenCode-specific контент** - добавить примеры уникальных возможностей
3. **Построить сообщество** - Discord сервер для OpenCode learners
4. **Расширить модули** - добавить уроки по LSP, MCP, кастомным командам

### Для учеников
1. **Начать с модуля 1.1** - следовать адаптированным урокам
2. **Практиковаться регулярно** - интерактивный формат требует практики
3. **Присоединиться к сообществу** - Discord OpenCode
4. **Делиться фидбеком** - помогать улучшать адаптацию

## Ссылки

- **OpenCode**: [opencode.ai](https://opencode.ai)
- **Документация**: [opencode.ai/docs](https://opencode.ai/docs)
- **GitHub**: [github.com/anomalyco/opencode](https://github.com/anomalyco/opencode)
- **Discord**: [discord.gg/opencode](https://discord.gg/opencode)
- **Models.dev**: [models.dev](https://models.dev) - 75+ LLM провайдеров

## Кредиты

- **Оригинальный курс**: Carl Vellotti ([X](https://x.com/carlvellotti) / [LinkedIn](https://www.linkedin.com/in/carlvellotti/))
- **Адаптация для OpenCode**: [Yossik Vit](https://github.com/yossik-vit)
- **OpenCode**: [Anomaly](https://anoma.ly) - команда разработчиков

## Лицензия

Адаптация распространяется под той же лицензией, что и оригинальный курс. OpenCode - MIT License.
