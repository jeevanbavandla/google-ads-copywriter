# Google Ads Copywriter — Claude Code Skill

A Claude Code skill that writes complete Google Search ad packages in one shot — 15 RSA headlines, 4 descriptions, 6 sitelinks, 10 callout extensions, structured snippets, and a call extension — output as a clean CSV ready to paste into Google Sheets.

Built to hit **Excellent Ad Strength** on every output. Works for any industry.

---

## What It Does

Give it a keyword and a landing page URL. It fetches the page, extracts your USPs, proof points, and CTAs, then generates a full ad copy package calibrated to the keyword and aligned with the landing page content.

**Output:** A multi-section CSV with:
- 15 RSA headlines (all within 30 chars, spread across keyword / benefit / CTA / social proof / urgency angles)
- 4 descriptions (each with a distinct angle, all within 90 chars)
- 6 sitelinks with titles + 2 description lines each, pointing to distinct page sections
- 10 callout extensions (specific USP phrases, not generic filler)
- Structured snippets (header type auto-selected based on business type)
- Call extension

---

## Works For Any Industry

This skill adapts to whatever business you're running ads for:

| Industry | Example keyword |
|---|---|
| Real estate | "2BHK flats for sale in [city]" |
| SaaS | "project management software for teams" |
| E-commerce | "buy running shoes online" |
| Education | "digital marketing course online" |
| Local services | "plumber near me" |
| Healthcare | "physiotherapy clinic [city]" |
| B2B / Agency | "Google Ads agency for startups" |

The landing page is the source of truth — the skill pulls USPs, proof points, and CTAs directly from the page so copy is always specific to the business, never generic.

---

## Installation

**Option 1 — One-line install (recommended):**

```bash
curl -fsSL https://raw.githubusercontent.com/jeevanbavandla/google-ads-copywriter/main/install.sh | bash
```

**Option 2 — Manual:**

```bash
git clone https://github.com/jeevanbavandla/google-ads-copywriter
cd google-ads-copywriter
bash install.sh
```

Restart Claude Code after installing.

---

## How to Use

Start Claude Code in any project and say:

```
write google ads copy for [business name]
```

Or provide more detail:

```
Keyword: [your target keyword]
Landing page: [URL]

Write google ads copy for this
```

Claude will ask for any missing inputs (phone number, USPs if the page doesn't have them), then generate the full package and save it as a CSV.

**Multiple ad groups:** Provide multiple keywords/ad group names and it generates a complete copy set for each one in the same CSV.

---

## What's Inside

```
google-ads-copywriter/
├── SKILL.md                          # Main skill — step-by-step instructions for Claude
├── references/
│   ├── google-ads-specs.md           # Exact character limits for every ad element
│   └── copywriting-best-practices.md # Headline formulas, description frameworks, extension strategy
├── install.sh
└── README.md
```

---

## Requirements

- [Claude Code](https://claude.ai/code) installed
- Any Claude plan (works with free tier)

---

## License

MIT — use it, modify it, share it.
