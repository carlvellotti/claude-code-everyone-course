# OpenCode for Everyone - Курс по AI-оркестрации

## 🏢 Версия для AGIMA

Адаптация курса "Claude Code for Everyone" от Carl Vellotti для **OpenCode** - open source AI coding agent.

**Для сотрудников AGIMA:** Этот курс научит тебя эффективно работать с AI-ассистентом для повседневных задач: анализ данных, создание документов, автоматизация рутинных процессов.

## Что такое OpenCode?

[OpenCode](https://opencode.ai) - это open source AI агент для разработки, который работает в терминале, IDE или как desktop приложение. В отличие от Claude Code:

- **100% open source** - полностью открытый код
- **Provider-agnostic** - работает с любыми моделями: Claude, GPT, Gemini, MiMo, локальные модели
- **Бесплатные модели включены** - можно использовать без дополнительных подписок
- **Desktop приложение** - доступно на macOS, Windows, Linux
- **LSP поддержка** - автоматическая загрузка языковых серверов
- **Мульти-сессии** - параллельная работа над проектом

## Установка OpenCode

### Терминал (рекомендуется)
```bash
curl -fsSL https://opencode.ai/install | bash
```

### Desktop приложение (бета)
Скачайте с [opencode.ai/download](https://opencode.ai/download)

### Пакетные менеджеры
```bash
# macOS/Linux (Homebrew)
brew install anomalyco/tap/opencode

# npm/pnpm/yarn
npm i -g opencode-ai@latest

# Windows
scoop install opencode
```

## Модели

OpenCode поддерживает 75+ LLM провайдеров через Models.dev, включая:

| Модель | Тип | Рекомендация |
|--------|-----|--------------|
| **MiMo-V2-Omni** | Мультимодальная | ⭐ Для курса |
| **MiMo-V2-Pro** | Текстовая | Код и анализ |
| **Claude** (Opus, Sonnet) | Мультимодальная | Альтернатива |
| **GPT-4o** | Мультимодальная | Альтернатива |
| **Gemini** | Мультимодальная | Альтернатива |

### ⭐ Рекомендация: MiMo-V2-Omni

**Для прохождения курса используйте MiMo-V2-Omni** — она поддерживает анализ изображений, что необходимо для некоторых уроков.

Если у вас подписка Xiaomi MiMo Token Plan, просто выберите модель в меню:
- Нажмите **Ctrl+O** или кликните на селектор модели внизу
- Выберите **MiMo-V2-Omni**

### Настройка MiMo (если нужно)

Если модель не появляется автоматически, создайте конфиг `~/.opencode.json`:

```json
{
  "model": "xiaomi/mimo-v2-omni",
  "provider": {
    "xiaomi": {
      "npm": "@ai-sdk/openai-compatible",
      "name": "Xiaomi MiMo",
      "options": {
        "baseURL": "https://api.xiaomimimo.com/v1"
      },
      "models": {
        "mimo-v2-pro": { "name": "MiMo-V2-Pro" },
        "mimo-v2-omni": { "name": "MiMo-V2-Omni", "vision": true }
      }
    }
  }
}
```

## Структура курса

### Модуль 0: Getting Started (15 мин)
- **0.0** - Введение в OpenCode
- **0.1** - Установка и аутентификация
- **0.2** - Скачивание материалов курса

### Модуль 1: Fundamentals (~3 часа)
- **1.1** - Введение в курс
- **1.2** - Исследование файлов и визуальное рабочее пространство
- **1.3** - Работа с файлами
- **1.4** - Команды и навигация
- **1.5** - Агенты
- **1.6** - Пользовательские суб-агенты
- **1.7** - Память проекта (AGENTS.md)
- **1.8** - Что дальше

### Модуль 2: Vibe Coding (~2-3 часа)
- **2.1** - Настройка
- **2.2** - Планирование
- **2.3** - Сборка и итерации
- **2.4** - GitHub
- **2.5** - Публикация

## Отличия от Claude Code

| Функция | Claude Code | OpenCode |
|---------|-------------|----------|
| **Лицензия** | Проприетарный | Open Source (MIT) |
| **Провайдеры** | Только Anthropic | 75+ провайдеров |
| **Модели** | Claude Opus/Sonnet | Любые модели |
| **Стоимость** | $20+/месяц | Бесплатные модели + опциональные подписки |
| **Desktop** | Нет | Да (бета) |
| **TUI** | Базовый | Продвинутый (Bubble Tea) |
| **LSP** | Нет | Да, из коробки |
| **Мульти-сессии** | Нет | Да |
| **Share links** | Нет | Да |

## Особенности OpenCode

### Агенты
OpenCode включает два встроенных агента:
- **build** - агент с полным доступом для разработки
- **plan** - read-only агент для анализа и исследования кода

Переключение между ними: `Tab`

### Клавиатурные сокращения
- `Ctrl+C` - выход
- `Ctrl+?` - справка
- `Ctrl+A` - переключение сессий
- `Ctrl+K` - командный диалог
- `Ctrl+O` - выбор модели
- `Esc` - закрыть диалог/вернуться назад

### Инструменты AI
- **Файлы**: `glob`, `grep`, `ls`, `view`, `write`, `edit`
- **Код**: `diagnostics`, `patch`
- **Система**: `bash`, `fetch`
- **Поиск**: `sourcegraph` (публичные репозитории)
- **Суб-агенты**: `agent` (для сложных задач)

## Ключевые концепции курса

### 1. AI-оркестрация вместо программирования
Ты не учишься программировать - ты учишься **оркестрировать AI**. Описывай desired outcome, OpenCode разберётся как это сделать.

### 2. Обучение через практику
Не видео, не тексты. Прямое применение. Каждый урок - это реальные действия.

### 3. Рабочий процесс
```
Файлы (в редакторе) + Терминал (OpenCode) = Визуальная рабочая среда
```

## Начало работы

1. **Установите OpenCode** следуя инструкциям выше
2. **Клонируйте курс**:
   ```bash
   git clone https://github.com/yossik-vit/opencode-for-everyone.git
   cd opencode-for-everyone
   ```
3. **Откройте в OpenCode**:
   ```bash
   opencode
   ```
4. **Начните с модуля 1.1**:
   Прочитайте `course-materials/lesson-modules/1.1-introduction/OPENCODE.md`

## Ссылки

- **OpenCode**: [opencode.ai](https://opencode.ai)
- **Документация**: [opencode.ai/docs](https://opencode.ai/docs)
- **Discord**: [discord.gg/opencode](https://discord.gg/opencode)
- **GitHub**: [github.com/anomalyco/opencode](https://github.com/anomalyco/opencode)

## Кредиты

- **Оригинальный курс**: Carl Vellotti ([X](https://x.com/carlvellotti) / [LinkedIn](https://www.linkedin.com/in/carlvellotti/))
- **Адаптация для OpenCode**: [Yossik Vit](https://github.com/yossik-vit)

## Лицензия

Адаптация распространяется под той же лицензией, что и оригинальный курс. OpenCode - MIT License.
