# Lesson 1.7: AGENTS.md (Project Memory)

Let me show you a problem.

Imagine you close this session and start a new session tomorrow.

You'd have to re-explain everything: Basecamp Coffee, the loyalty program, the quiz idea...

That's exhausting. And wasteful. Those poor tokens.

STOP: Have you experienced this with ChatGPT or other AI tools?

USER: Yes / Definitely

---

## Introducing AGENTS.md

There's a solution. It's called AGENTS.md.

It's a special file I read automatically every session. You put it at the root of your project folder.

Every time you start OpenCode, I read it first.

It's like giving me real memory.

STOP: This is the killer feature that makes OpenCode feel like a real assistant instead of a forgetful chatbot. You set the context once, and I know it forever. No more "as I mentioned earlier" or re-explaining your project every session. Make sense?

USER: Yes

---

## The Constitution Metaphor

Think of it like this: AGENTS.md = constitution, your prompts = legislation.

The constitution sets the foundation. Your prompts are the day-to-day decisions.

STOP: Quiz - what if they conflict? What wins?

USER: AGENTS.md / Constitution

Exactly! AGENTS.md wins. It's the higher authority.

---

## What Goes in AGENTS.md

So what should you put in a AGENTS.md?

- **Program status and goals** - like our turnaround mission
- **Key metrics to track** - the numbers from our CSV
- **Stakeholder map** - Dana, leadership, store managers
- **Brand voice and constraints** - how Basecamp talks
- **The solution we're building** - the Coffee Personality Quiz

Basically, everything I need to know to be useful immediately.

STOP: Think of AGENTS.md as the briefing doc you'd give a new team member. What do they need to know to be helpful on day one? That's what goes in here. Ready to build one?

USER: Yes

---

## Build the AGENTS.md Together

Let's build the AGENTS.md together with Basecamp Coffee context.

STOP: Ask me to create a AGENTS.md file that captures everything we've learned about Basecamp Coffee, the loyalty program problem, and our solution.

USER: Types command asking to create AGENTS.md

ACTION: Create a AGENTS.md file at the root OF THE WHOLE REPO with:
- Project overview (Basecamp Coffee loyalty program turnaround)
- The problem (program has no personality, engagement is terrible)
- The solution (Coffee Personality Quiz)
- Key metrics to track
- Stakeholders (Dana, leadership, store managers)
- Brand voice summary
- What's been done so far
- Next steps

STOP: Look at the file. Does it capture everything important?

USER: Yes / Suggests additions

[If suggestions: incorporate them and update the file]

---

## AGENTS.md Hierarchy

One more thing: You can have multiple AGENTS.md files, which work together.

Here's how it works:

```
~/.claude/AGENTS.md          ← Global (your preferences everywhere)
~/projects/
  basecamp-coffee/
    AGENTS.md                ← Project-level (this project's context)
    analysis/
      AGENTS.md              ← Directory-level (specific rules for analysis work)
```

They stack from general to specific. More specific ones override more general ones.

So your global preferences apply everywhere, but project-specific context adds on top.

As you can see, I've been using CLAUDE files to guide all of these lessons!

STOP: This means you can set your personal preferences once (like "I prefer concise responses" or "always use bullet points") and they'll apply to every project. Then each project adds its own context. It's how you build a truly personalized AI assistant. Make sense?

USER: Yes

---

## Wrap-up

**Meta skill:** Creating persistent context so Claude remembers important information across sessions.

**The key insight:** Instead of re-explaining who you are, what you're working on, and what matters every time - you write it once and Claude knows it forever.

**Where else this applies:**
- Your personal "life OS" - goals, values, current priorities, how you like to work. Claude knows YOU.
- Client projects - each client gets a AGENTS.md with their brand voice, key contacts, project history
- Writing a book or long content - characters, plot points, style guide, what's been established
- Side business - your offerings, pricing, customer personas, brand voice
- Job search - target roles, companies you're interested in, your story, salary requirements
- Any ongoing project where context matters

**Next up:** In 1.8, we celebrate everything you've learned and I'll tease some advanced features coming in future modules - skills, MCP connections, browser control. Plus, we'll preview Module 2 where you actually BUILD the Coffee Personality Quiz.

STOP: Ready for 1.8?

USER: Yes / /start-1-8

---

## Important Notes for OpenCode

- **Create real AGENTS.md**: Actually create the file at the project root with comprehensive content
- **Hash symbol demo**: The # rule should actually work for the session
- **Hierarchy explanation**: Make the file tree visual and clear
- **Incorporate suggestions**: If student suggests additions to AGENTS.md, actually add them


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

## Success Criteria

- [ ] Student understands the problem AGENTS.md solves (re-explaining context)
- [ ] Student understands the constitution metaphor (AGENTS.md > prompts)
- [ ] Student helped create a AGENTS.md for the Basecamp project
- [ ] Student tried the # dynamic rules feature
- [ ] Student understands the AGENTS.md hierarchy (global → project → directory)
- [ ] AGENTS.md file created at project root
- [ ] Student is ready for 1.8
