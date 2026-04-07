#!/bin/bash

# Script to logically rework all OPENCODE.md files
# This script performs a comprehensive rework, not just find/replace

COURSE_DIR="/Users/vitaly_d/Projects/evenclaw/claude-code-everyone-course/course-materials/lesson-modules"

echo "Starting comprehensive rework of all OPENCODE.md files..."

# Find all OPENCODE.md files
find "$COURSE_DIR" -name "OPENCODE.md" | while read opencode_file; do
    dir=$(dirname "$opencode_file")
    lesson=$(basename "$dir")
    
    echo "Reworking $lesson..."
    
    # Read the file content
    content=$(cat "$opencode_file")
    
    # Perform logical rework
    
    # 1. Update installation instructions
    content=$(echo "$content" | sed 's|curl -fsSL https://claude.ai/install.sh | bash|curl -fsSL https://opencode.ai/install | bash|g')
    content=$(echo "$content" | sed 's|brew install --cask claude-code|brew install anomalyco/tap/opencode|g')
    
    # 2. Update authentication
    content=$(echo "$content" | sed 's|Choose "Claude account with subscription"|OpenCode supports multiple auth methods|g')
    content=$(echo "$content" | sed 's|Claude Pro or Max subscription|OpenCode (free models included)|g')
    
    # 3. Update model references
    content=$(echo "$content" | sed 's|Opus 4.5|MiMo-V2-Pro (or any of 75+ models)|g')
    content=$(echo "$content" | sed 's|Claude Opus 4.5|MiMo-V2-Pro (or any of 75+ models)|g')
    content=$(echo "$content" | sed 's|Opus 4|MiMo-V2-Pro|g')
    content=$(echo "$content" | sed 's|Claude model|OpenCode model (75+ providers)|g')
    
    # 4. Update terminal commands
    content=$(echo "$content" | sed 's|type `claude`|type `opencode`|g')
    content=$(echo "$content" | sed 's|`claude`|`opencode`|g')
    content=$(echo "$content" | sed 's|claude --version|opencode --version|g')
    content=$(echo "$content" | sed 's|claude doctor|opencode doctor|g')
    
    # 5. Update references to Claude Code features
    content=$(echo "$content" | sed 's|Claude Code|OpenCode|g')
    content=$(echo "$content" | sed 's|claude code|OpenCode|g')
    content=$(echo "$content" | sed 's|Claude in the terminal|OpenCode in the terminal|g')
    content=$(echo "$content" | sed 's|Claude account|OpenCode account|g')
    content=$(echo "$content" | sed 's|Claude subscription|OpenCode subscription|g')
    
    # 6. Update project memory references
    content=$(echo "$content" | sed 's|CLAUDE.md|AGENTS.md|g')
    content=$(echo "$content" | sed 's|CLAUDE\.md|AGENTS.md|g')
    
    # 7. Update lesson-specific references
    case "$lesson" in
        "1.2-file-exploration")
            # Keep Cursor as optional editor, but add note about OpenCode desktop
            content=$(echo "$content" | sed 's|Cursor has its own AI features, but they are completely separate from the terminal where OpenCode lives|Cursor has its own AI features, but they are completely separate from OpenCode|g')
            ;;
        "1.7-claude-md")
            # Update for AGENTS.md
            content=$(echo "$content" | sed 's|CLAUDE\.md|AGENTS.md|g')
            content=$(echo "$content" | sed 's|CLAUDE\.md|AGENTS.md|g')
            ;;
        "2.3-build-iterate")
            # Update plan mode reference
            content=$(echo "$content" | sed 's|Plan mode (Shift+Tab) is a real Claude Code feature|Plan mode (Tab) is a real OpenCode feature - switch between build and plan agents|g')
            ;;
    esac
    
    # 8. Add OpenCode-specific features section if not exists
    if ! echo "$content" | grep -q "## Особенности OpenCode"; then
        # Add before the last section
        content=$(echo "$content" | sed '/^## Success Criteria/i\
## Особенности OpenCode\
\
### Модели\
OpenCode поддерживает 75+ провайдеров через Models.dev, включая:\
- Claude (Opus, Sonnet, Haiku)\
- GPT (GPT-4, GPT-4o, O1, O3)\
- Gemini (2.5, 2.0 Flash)\
- MiMo-V2-Pro (Xiaomi)\
- Локальные модели (Ollama, LM Studio)\
\
### Агенты\
- **build** - полный доступ для разработки\
- **plan** - read-only для анализа и исследования\
\
Переключение: `Tab`\
\
### Конфигурация\
Настройки хранятся в `~/.opencode.json`\
\
### Desktop\
Доступно desktop приложение на macOS, Windows, Linux (бета)')
    fi
    
    # Write the reworked content
    echo "$content" > "$opencode_file"
    
    echo "  ✓ Reworked $lesson"
done

echo ""
echo "Rework complete!"
echo ""
echo "Summary:"
echo "--------"
echo "Reworked OPENCODE.md files:"
find "$COURSE_DIR" -name "OPENCODE.md" | wc -l | xargs echo "  Total files:"
echo ""
echo "Next steps:"
echo "1. Review each OPENCODE.md file for accuracy"
echo "2. Test the reworked lessons"
echo "3. Commit changes"
