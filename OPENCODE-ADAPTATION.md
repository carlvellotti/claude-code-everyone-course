# Руководство по адаптации курса для OpenCode

## Обзор

Это руководство описывает процесс адаптации курса "Claude Code for Everyone" для OpenCode - open source AI coding agent.

## Зачем адаптация?

### Проблема оригинального курса
- **Привязка к Claude Code** - проприетарный инструмент от Anthropic
- **Только Claude модели** - нет выбора других провайдеров
- **Платная подписка** - $20+/месяц за Claude Pro/Max
- **Нет desktop версии** - только терминал

### Преимущества OpenCode
- **100% open source** - открытый код, можно модифицировать
- **Provider-agnostic** - 75+ провайдеров моделей
- **Бесплатные модели** - можно использовать без подписок
- **Desktop приложение** - удобный GUI (бета)
- **LSP поддержка** - интеллектуальная поддержка кода
- **Мульти-сессии** - параллельная работа

## Процесс адаптации

### 1. Анализ различий

| Аспект | Claude Code | OpenCode | Адаптация |
|--------|-------------|----------|-----------|
| **Тип** | CLI tool | TUI/Desktop/IDE | Универсальный |
| **Лицензия** | Проприетарный | MIT | Open source |
| **Провайдер** | Anthropic | 75+ | Provider-agnostic |
| **Модели** | Claude Opus 4.5 | Любые | MiMo-V2-Pro |
| **Стоимость** | $20+/месяц | Бесплатно+ | Доступнее |
| **Аутентификация** | Claude account | Various | Гибкая |
| **Конфигурация** | Нет | ~/.opencode.json | Настраиваемая |
| **Агенты** | Нет | build+plan | Продвинутые |
| **LSP** | Нет | Да | Улучшенный |

### 2. Стратегия адаптации

#### Уровень 1: Замена терминологии
- Claude Code → OpenCode
- Opus 4.5 → MiMo-V2-Pro (или другие модели)
- Claude account → OpenCode auth
- Terminal command: `claude` → `opencode`

#### Уровень 2: Логическая переработка
- **Установка**: Обновить инструкции для OpenCode
- **Аутентификация**: Описать различные способы авторизации
- **Модели**: Добавить информацию о 75+ провайдерах
- **Конфигурация**: Добавить секцию настройки
- **Агенты**: Описать build/plan агентов
- **LSP**: Добавить информацию о языковых серверах

#### Уровень 3: Расширение контента
- **Кастомные команды**: Добавить информацию о .md командах
- **MCP**: Добавить информацию о Model Context Protocol
- **Share links**: Описать возможность публикации сессий
- **Мульти-сессии**: Добавить информацию о параллельной работе

### 3. Файлы для адаптации

#### Основные файлы
1. `README.md` - главный README репозитория
2. `OPENCODE-FOR-EVERYONE.md` - полное руководство
3. `OPENCODE-ADAPTATION.md` - этот файл

#### Уроки (course-materials/lesson-modules/)
Каждый урок имеет:
- `CLAUDE.md` - оригинал (сохраняем)
- `OPENCODE.md` - адаптация (создаём)

#### Скрипты
- `adapt-to-opencode.sh` - автоматическая адаптация

### 4. Автоматическая адаптация

Скрипт `adapt-to-opencode.sh` выполняет:
```bash
#!/bin/bash
# Находим все CLAUDE.md файлы
find . -name "CLAUDE.md" | while read file; do
    # Создаём OPENCODE.md версию
    cp "$file" "${file%/*}/OPENCODE.md"
    
    # Заменяем термины
    sed -i 's/Claude Code/OpenCode/g' "${file%/*}/OPENCODE.md"
    sed -i 's/Opus 4.5/MiMo-V2-Pro/g' "${file%/*}/OPENCODE.md"
    sed -i 's/`claude`/`opencode`/g' "${file%/*}/OPENCODE.md"
    
    # Добавляем заголовок адаптации
    echo "# OpenCode Adaptation\n\nАдаптировано из Claude Code для OpenCode.\n" | \
        cat - "${file%/*}/OPENCODE.md" > temp && mv temp "${file%/*}/OPENCODE.md"
done
```

### 5. Ручная доработка

Автоматическая адаптация не учитывает:
- **Контекстные различия** в возможностях инструментов
- **Уникальные фичи** OpenCode (LSP, агенты, MCP)
- **Инструкции по установке** -完全不同
- **Настройка моделей** - специфично для OpenCode
- **Конфигурация** - OpenCode имеет ~/.opencode.json

Поэтому требуется ручная доработка:
1. Проверить каждый OPENCODE.md файл
2. Обновить инструкции по установке
3. Добавить информацию о конфигурации
4. Описать уникальные фичи OpenCode
5. Обновить примеры команд

## Ключевые адаптации

### Модуль 0: Getting Started

#### 0.0 Introduction
**Было:** "Claude Code is an AI assistant that works directly on your computer"
**Стало:** "OpenCode is an open source AI agent that works in your terminal, IDE, or desktop"

**Было:** "The only command you need to know: `claude`"
**Стало:** "The only command you need to know: `opencode`"

#### 0.1 Installation
**Было:** 
```bash
curl -fsSL https://claude.ai/install.sh | bash
claude
```

**Стало:**
```bash
# Терминал
curl -fsSL https://opencode.ai/install | bash

# Desktop
# Скачать с https://opencode.ai/download

# Пакетные менеджеры
brew install anomalyco/tap/opencode
```

#### 0.2 Start
**Было:** "Choose 'Claude account with subscription'"
**Стало:** "OpenCode поддерживает多种auth methods, including GitHub, Google, or local models"

### Модуль 1: Fundamentals

#### 1.7 Project Memory
**Было:** "CLAUDE.md"
**Стало:** "AGENTS.md" (OpenCode использует AGENTS.md для памяти проекта)

**Было:** "Every time you start Claude Code, I read it first"
**Стало:** "Every time you start OpenCode, it reads AGENTS.md first"

### Модуль 2: Vibe Coding

#### 2.3 Build & Iterate
**Было:** "Plan mode (Shift+Tab) is a real Claude Code feature"
**Стало:** "Plan mode (Tab) is a real OpenCode feature - switch between build and plan agents"

## Тестирование адаптации

### Чек-лист тестирования
- [ ] Все OPENCODE.md файлы созданы
- [ ] Нет ссылок на Claude Code в OPENCODE.md файлах
- [ ] Инструкции по установке актуальны для OpenCode
- [ ] Примеры команд работают с OpenCode
- [ ] Информация о моделях актуальна
- [ ] Уникальные фичи OpenCode описаны
- [ ] Интерактивные элементы работают

### Тестовые сценарии
1. **Установка OpenCode** - следовать инструкциям 0.1
2. **Настройка MiMo-V2-Pro** - настроить через ~/.opencode.json
3. **Прохождение урока 1.1** - проверить интерактивные элементы
4. **Работа с файлами** - проверить команды 1.3
5. **Использование агентов** - проверить build/plan переключение

## Дальнейшие улучшения

### Контент
1. **OpenCode-specific уроки** - добавить уроки по LSP, MCP, кастомным командам
2. **Примеры конфигурации** - больше примеров ~/.opencode.json
3. **Провайдеры моделей** - гайд по настройке различных провайдеров
4. **Desktop приложение** - гайд по использованию GUI версии

### Инструменты
1. **CI/CD** - автоматическое тестирование адаптации
2. **Docker** - контейнеризированная среда для курса
3. **VS Code extension** - интеграция с курсом
4. **Discord бот** - автоматическая помощь ученикам

### Сообщество
1. **Discord сервер** - для OpenCode learners
2. **Форум** - обсуждение курса
3. **Вебинары** - живые сессии по OpenCode
4. **Менторство** - помощь новичкам

## Заключение

Адаптация курса "Claude Code for Everyone" для OpenCode делает его более доступным, гибким и powerful. OpenCode предоставляет все возможности Claude Code плюс дополнительные фичи такие как LSP, агенты, и поддержка 75+ провайдеров моделей.

Ключевые преимущества адаптации:
1. **Доступность** - бесплатные модели, open source
2. **Гибкость** - 75+ провайдеров, кастомные конфигурации
3. **Функциональность** - LSP, агенты, мульти-сессии
4. **Сообщество** - активное open source сообщество

Адаптация сохраняет все преимущества оригинального курса:
- Интерактивный формат обучения
- Практический подход
- Нарративный сценарий
- Пошаговые инструкции

При этом добавляя уникальные возможности OpenCode:
- Настройка любых моделей (включая MiMo-V2-Pro)
- Использование LSP для интеллектуальной поддержки кода
- Переключение между build и plan агентами
- Настройка через ~/.opencode.json
- Desktop приложение для удобного GUI

## Ссылки

- **OpenCode документация**: [opencode.ai/docs](https://opencode.ai/docs)
- **GitHub**: [github.com/anomalyco/opencode](https://github.com/anomalyco/opencode)
- **Discord**: [discord.gg/opencode](https://discord.gg/opencode)
- **Models.dev**: [models.dev](https://models.dev) - 75+ LLM провайдеров
