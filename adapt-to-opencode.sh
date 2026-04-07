#!/bin/bash

# Script to adapt Claude Code course modules to OpenCode
# This script will create OPENCODE.md files for each lesson module

COURSE_DIR="/Users/vitaly_d/Projects/evenclaw/claude-code-everyone-course/course-materials/lesson-modules"

echo "Starting OpenCode adaptation..."

# Find all CLAUDE.md files and create OPENCODE.md versions
find "$COURSE_DIR" -name "CLAUDE.md" | while read claude_file; do
    # Get directory and create OPENCODE.md path
    dir=$(dirname "$claude_file")
    opencode_file="$dir/OPENCODE.md"
    
    # Skip if OPENCODE.md already exists
    if [ -f "$opencode_file" ]; then
        echo "Skipping $dir - OPENCODE.md already exists"
        continue
    fi
    
    echo "Adapting $claude_file to $opencode_file"
    
    # Create adapted version
    cp "$claude_file" "$opencode_file"
    
    # Replace Claude Code references with OpenCode
    sed -i '' 's/Claude Code/OpenCode/g' "$opencode_file"
    sed -i '' 's/claude code/OpenCode/g' "$opencode_file"
    sed -i '' 's/claude/OpenCode/g' "$opencode_file"
    sed -i '' 's/Claude/OpenCode/g' "$opencode_file"
    sed -i '' 's/Opus 4.5/MiMo model/g' "$opencode_file"
    sed -i '' 's/Opus 4/MiMo model/g' "$opencode_file"
    sed -i '' 's/Opus/MiMo/g' "$opencode_file"
    
    # Update terminal commands
    sed -i '' 's/`claude`/`opencode`/g' "$opencode_file"
    sed -i '' 's/type `claude`/type `opencode`/g' "$opencode_file"
    sed -i '' 's/`claude`/`opencode`/g' "$opencode_file"
    
    # Update references to Claude account
    sed -i '' 's/Claude account/OpenCode account/g' "$opencode_file"
    sed -i '' 's/Claude subscription/OpenCode subscription/g' "$opencode_file"
    
    # Update references to Claude in Cursor
    sed -i '' 's/Launch Claude Code Inside Cursor/Launch OpenCode Inside Cursor/g' "$opencode_file"
    sed -i '' 's/type `claude` and hit Enter/type `opencode` and hit Enter/g' "$opencode_file"
    
    # Update success criteria
    sed -i '' 's/Claude Code/OpenCode/g' "$opencode_file"
    
    # Add adaptation note at the top
    temp_file=$(mktemp)
    echo "# OpenCode Adaptation" > "$temp_file"
    echo "" >> "$temp_file"
    echo "This lesson has been adapted from Claude Code to OpenCode." >> "$temp_file"
    echo "" >> "$temp_file"
    cat "$opencode_file" >> "$temp_file"
    mv "$temp_file" "$opencode_file"
    
    echo "Created $opencode_file"
done

echo "Adaptation complete!"
echo ""
echo "Summary:"
echo "--------"
echo "Adapted modules:"
find "$COURSE_DIR" -name "OPENCODE.md" | wc -l | xargs echo "  Total OPENCODE.md files:"
echo ""
echo "Next steps:"
echo "1. Review each OPENCODE.md file for accuracy"
echo "2. Test the adapted lessons"
echo "3. Commit changes to the opencode-adaptation branch"
