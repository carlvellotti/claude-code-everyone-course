#!/usr/bin/env python3

import os
import re

COURSE_DIR = "/Users/vitaly_d/Projects/evenclaw/claude-code-everyone-course/course-materials/lesson-modules"


def rework_file(filepath):
    """Logically rework a single OPENCODE.md file"""

    # Read the original CLAUDE.md file
    claude_path = filepath.replace("OPENCODE.md", "CLAUDE.md")
    if not os.path.exists(claude_path):
        print(f"  Skipping {filepath} - no CLAUDE.md found")
        return

    with open(claude_path, "r", encoding="utf-8") as f:
        content = f.read()

    # Perform logical rework

    # 1. Update title and introduction
    content = content.replace("Claude Code for Everyone", "OpenCode for Everyone")
    content = content.replace("Claude Code", "OpenCode")
    content = content.replace("claude code", "OpenCode")

    # 2. Update model references
    content = content.replace("Opus 4.5", "MiMo-V2-Pro (или любая из 75+ моделей)")
    content = content.replace("Opus 4", "MiMo-V2-Pro")
    content = content.replace("Claude model", "OpenCode model (75+ провайдеров)")

    # 3. Update terminal commands
    content = content.replace("type `claude`", "type `opencode`")
    content = content.replace("`claude`", "`opencode`")
    content = content.replace("claude --version", "opencode --version")
    content = content.replace("claude doctor", "opencode doctor")

    # 4. Update installation instructions
    content = content.replace(
        "curl -fsSL https://claude.ai/install.sh | bash",
        "curl -fsSL https://opencode.ai/install | bash",
    )
    content = content.replace(
        "brew install --cask claude-code", "brew install anomalyco/tap/opencode"
    )
    content = content.replace(
        'Choose "Claude account with subscription"',
        "OpenCode поддерживает多种auth methods",
    )
    content = content.replace(
        "Claude Pro or Max subscription", "OpenCode (бесплатные модели включены)"
    )

    # 5. Update project memory references
    content = content.replace("CLAUDE.md", "AGENTS.md")

    # 6. Update lesson-specific references
    if "1.2-file-exploration" in filepath:
        content = content.replace(
            "Cursor has its own AI features, but they're completely separate from the terminal where Claude Code lives",
            "Cursor has its own AI features, but they're completely separate from OpenCode",
        )
        content = content.replace(
            "Launch Claude Code Inside Cursor", "Launch OpenCode Inside Cursor"
        )
        content = content.replace(
            "Once you see Claude Code launch", "Once you see OpenCode launch"
        )

    if "1.7-claude-md" in filepath:
        content = content.replace("Introducing CLAUDE.md", "Introducing AGENTS.md")
        content = content.replace(
            "There's a solution. It's called CLAUDE.md.",
            "There's a solution. It's called AGENTS.md.",
        )
        content = content.replace(
            "Every time you start Claude Code, I read it first.",
            "Every time you start OpenCode, it reads AGENTS.md first.",
        )
        content = content.replace(
            "Think of it like this: CLAUDE.md = constitution, your prompts = legislation.",
            "Think of it like this: AGENTS.md = constitution, your prompts = legislation.",
        )
        content = content.replace("What Goes in CLAUDE.md", "What Goes in AGENTS.md")
        content = content.replace(
            "So what should you put in a CLAUDE.md?",
            "So what should you put in an AGENTS.md?",
        )
        content = content.replace(
            "Build the CLAUDE.md Together", "Build the AGENTS.md Together"
        )

    if "2.3-build-iterate" in filepath:
        content = content.replace(
            "Plan mode (Shift+Tab) is a real Claude Code feature",
            "Plan mode (Tab) is a real OpenCode feature - switch between build and plan agents",
        )

    # 7. Add OpenCode-specific features section
    if "## Success Criteria" in content and "## Особенности OpenCode" not in content:
        opencode_features = """
## Особенности OpenCode

### Модели
OpenCode поддерживает 75+ провайдеров через Models.dev, включая:
- Claude (Opus, Sonnet, Haiku)
- GPT (GPT-4, GPT-4o, O1, O3)
- Gemini (2.5, 2.0 Flash)
- MiMo-V2-Pro (Xiaomi)
- Локальные модели (Ollama, LM Studio)

### Агенты
- **build** - полный доступ для разработки
- **plan** - read-only для анализа и исследования

Переключение: `Tab`

### Конфигурация
Настройки хранятся в `~/.opencode.json`

### Desktop
Доступно desktop приложение на macOS, Windows, Linux (бета)

### Клавиатурные сокращения
- `Ctrl+C` - выход
- `Ctrl+?` - справка
- `Ctrl+A` - переключение сессий
- `Ctrl+K` - командный диалог
- `Ctrl+O` - выбор модели
- `Esc` - закрыть диалог

"""
        content = content.replace(
            "## Success Criteria", opencode_features + "## Success Criteria"
        )

    # 8. Update success criteria
    content = content.replace(
        "Student has seen a website opened via Claude Code",
        "Student has seen a website opened via OpenCode",
    )
    content = content.replace(
        "Student understands the workflow: files + editor + Claude in terminal",
        "Student understands the workflow: files + editor + OpenCode in terminal",
    )

    # 9. Replace generic "Claude" references in examples
    content = content.replace("Claude can map it out", "OpenCode can map it out")
    content = content.replace("Point Claude at it", "Point OpenCode at it")
    content = content.replace("Claude in the terminal", "OpenCode in the terminal")
    content = content.replace("Like Claude Code", "Like OpenCode")
    content = content.replace(
        "## Important Notes for Claude", "## Important Notes for OpenCode"
    )

    # Write the reworked content
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(content)

    print(f"  ✓ Reworked {os.path.basename(os.path.dirname(filepath))}")


def main():
    print("Starting comprehensive rework of all OPENCODE.md files...")
    print()

    # Find all lesson module directories
    for root, dirs, files in os.walk(COURSE_DIR):
        if "CLAUDE.md" in files:
            opencode_path = os.path.join(root, "OPENCODE.md")
            rework_file(opencode_path)

    print()
    print("Rework complete!")
    print()
    print("Summary:")
    print("--------")
    count = sum(
        1
        for root, dirs, files in os.walk(COURSE_DIR)
        for f in files
        if f == "OPENCODE.md"
    )
    print(f"  Total OPENCODE.md files: {count}")
    print()
    print("Next steps:")
    print("1. Review each OPENCODE.md file for accuracy")
    print("2. Test the reworked lessons")
    print("3. Commit changes")


if __name__ == "__main__":
    main()
