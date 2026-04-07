# OpenCode for Everyone - Complete Adaptation

## Overview

This repository contains the complete adaptation of Carl Vellotti's "Claude Code for Everyone" course for OpenCode users. The adaptation maintains the original course structure and interactive learning approach while updating all references from Claude Code to OpenCode.

## What's Included

### 1. Adapted Lesson Modules
All 13 lesson modules have been adapted with OPENCODE.md files:

**Module 1: Fundamentals (8 lessons)**
- 1.1 Introduction to OpenCode
- 1.2 File Exploration & Visual Workspace
- 1.3 Working with Files
- 1.4 Commands & Navigation
- 1.5 Agents
- 1.6 Custom Sub-agents
- 1.7 Project Memory (OPENCODE.md)
- 1.8 What's Next

**Module 2: Vibe Coding (5 lessons)**
- 2.1 Setup
- 2.2 Plan
- 2.3 Build & Iterate
- 2.4 GitHub
- 2.5 Go Live

### 2. Key Changes Made

#### Terminology Updates
- "Claude Code" → "OpenCode"
- "Opus 4.5" → "MiMo model"
- "Claude account" → "OpenCode account"
- Terminal command: `claude` → `opencode`

#### Content Preservation
- All interactive "STOP" points maintained
- Learning objectives unchanged
- Practical exercises preserved
- File structure and scenarios intact

#### Additional Adaptations
- Created OPENCODE-ADAPTATION.md guide
- Updated README.md for OpenCode context
- Created adaptation script for future updates

## How to Use This Adaptation

### For Learners
1. Clone this repository
2. Follow the adapted installation instructions
3. Work through the OPENCODE.md files in each lesson module
4. Use the interactive prompts as designed

### For Contributors
1. Fork this repository
2. Create a feature branch
3. Make changes to OPENCODE.md files
4. Submit a pull request

## File Structure

```
claude-code-everyone-course/
├── course-materials/
│   └── lesson-modules/
│       ├── 1.1-introduction/
│       │   ├── CLAUDE.md (original)
│       │   └── OPENCODE.md (adapted)
│       ├── 1.2-file-exploration/
│       │   ├── CLAUDE.md (original)
│       │   └── OPENCODE.md (adapted)
│       └── ... (all modules adapted)
├── OPENCODE-ADAPTATION.md (adaptation guide)
├── README.md (updated for OpenCode)
└── adapt-to-opencode.sh (adaptation script)
```

## Original Course Credit

- **Original Creator:** Carl Vellotti ([X](https://x.com/carlvellotti) / [LinkedIn](https://www.linkedin.com/in/carlvellotti/))
- **Original Repository:** [carlvellotti/claude-code-everyone-course](https://github.com/carlvellotti/claude-code-everyone-course)
- **Course Website:** [ccforeveryone.com](https://ccforeveryone.com)

## OpenCode Adaptation

- **Adapter:** [Yossik Vit](https://github.com/yossik-vit)
- **Adaptation Repository:** [yossik-vit/claude-code-everyone-course](https://github.com/yossik-vit/claude-code-everyone-course)
- **Branch:** opencode-adaptation

## Next Steps

### For This Adaptation
1. **Test the adapted lessons** - Verify all interactive elements work with OpenCode
2. **Create OpenCode-specific content** - Add examples unique to OpenCode features
3. **Build community** - Create OpenCode community around the course
4. **Expand modules** - Add new modules for OpenCode-specific workflows

### For Learners
1. **Start with Module 1** - Follow the adapted lessons in order
2. **Practice regularly** - The interactive format requires hands-on practice
3. **Join the community** - Connect with other OpenCode learners
4. **Provide feedback** - Help improve the adaptation

## Technical Notes

### Adaptation Process
The adaptation was done using a bash script that:
1. Copies each CLAUDE.md file to OPENCODE.md
2. Replaces all Claude Code references with OpenCode
3. Updates terminal commands and account references
4. Adds adaptation header to each file

### Manual Review Required
While the script handles most replacements, some manual review may be needed for:
- Context-specific references to Claude features
- OpenCode-specific capabilities
- Installation and authentication steps
- Platform-specific instructions

## License

This adaptation follows the same license as the original course. Please refer to the original repository for licensing information.

---

**Ready to start learning OpenCode?** Begin with [Lesson 1.1: Introduction](course-materials/lesson-modules/1.1-introduction/OPENCODE.md)
