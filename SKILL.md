---
name: google-ads-copywriter
description: "Write complete Google Search ad copy packages — all 15 RSA headlines, 4 descriptions, display paths, 6 sitelinks, 10 callout extensions, structured snippets, and a call extension — output as a clean CSV ready to paste into Google Sheets. Use this skill whenever you're asked to write Google Ads copy, create RSA headlines, build ad extensions, generate PPC copy, set up a search campaign, or produce ad copy for any client or campaign. Triggers: write google ads, google ads copy, RSA headlines, ad copy, create ad copies, search ad copy, PPC copy, ad extensions, sitelinks, google search ads, ad copy CSV."
---

# Google Ads Copywriter

This skill produces a complete, ready-to-use Google Search ad package: RSA copy + all major extensions, output as a clean multi-section CSV you can paste straight into Google Sheets.

The goal isn't just to fill in fields — it's to write copy that achieves **high Ad Strength**: tightly relevant to the keywords, aligned with the landing page, and compelling enough to earn the click. Every headline and extension needs to pull its weight.

Before writing anything, read the two reference files:
- `references/google-ads-specs.md` — exact character limits and field counts for every ad element
- `references/copywriting-best-practices.md` — headline formulas, description frameworks, extension strategy

---

## Step 1: Collect Inputs

If any of the following aren't already provided, ask for them before proceeding. Don't guess at things like phone number or USPs — they're too important to get wrong.

| Input | Purpose |
|---|---|
| **Business name + tagline** | Used in headlines and display path |
| **Phone number** | Call extension |
| **Key USPs** (3–5 bullet points) | The honest reasons someone should choose this business |
| **Target audience** | Shapes tone — "B2B SaaS founders" vs "homeowners in Hyderabad" write differently |
| **Landing page URL** | Fetch with WebFetch — this is the source of truth for messaging |
| **Keywords + ad group name(s)** | One ad group or multiple — generate a full copy set per group |

**If multiple ad groups are provided:** produce a complete set of copy (RSA + all extensions) for each one. The CSV will have one data row per ad group in each section.

**If the landing page URL fails to load:** ask the user to paste the key page content (hero text, services, CTAs, proof points) directly.

---

## Step 2: Analyse the Landing Page

Fetch the URL with WebFetch. You're looking for the raw material that makes the copy credible and specific — not generic filler.

Extract:
- **Hero message / main headline** — the core value proposition the page leads with
- **Key benefits and offers** — what the page promises the visitor
- **CTA language** — how they ask visitors to act ("Book a free audit", "Get started today")
- **Proof points** — testimonials, client counts, results, awards, certifications
- **Services or products listed** — for structured snippets and sitelink labels
- **Distinct page sections with URLs** — for sitelink destinations (e.g. /services, /case-studies, /pricing, /contact)

Map this against the keywords. If the landing page doesn't clearly address what the searcher typed, flag it — this is a Quality Score risk.

---

## Step 3: Generate RSA Ad Copy (per ad group)

Read `references/google-ads-specs.md` for exact limits. Read `references/copywriting-best-practices.md` for formulas. Count characters carefully before writing — going over limit is the most common mistake.

### 15 Headlines (max 30 characters each)

Spread across five angles so Google can mix and match effectively:

- **Keyword-rich (5–7 headlines):** Use the primary keyword or close variants. Match what the searcher typed.
- **Benefit-led (2–3 headlines):** Lead with the outcome the customer gets, not the service name.
- **CTA-led (2–3 headlines):** Action verb + specific offer. "Get a Free Audit" not just "Contact Us".
- **Social proof (1–2 headlines):** A number, result, or credibility marker. Be specific.
- **Specificity / urgency (1–2 headlines):** Location, timeline, niche, or limited offer.

Character counting is non-negotiable. Count each headline before finalising it. If it's 31 characters, trim it.

### 4 Descriptions (max 90 characters each)

Google shows any 2 of 4 together, so each description must work independently. Assign each a distinct angle:

1. **Benefit + proof** — core benefit backed by a number or result
2. **Problem + solution** — name the pain point, then position as the fix
3. **Process + CTA** — briefly show what working with you looks like, then a clear next step
4. **Offer or urgency** — any specific offer, guarantee, or time-sensitive element

End at least 2 descriptions with a strong CTA. Don't start two descriptions with the same word.

### Display Paths (2 fields, max 15 characters each)

Reflect the landing page topic and keyword theme. These appear in the ad URL and reinforce relevance.
Example: `google-ads` / `hyderabad` or `paid-ads` / `agency`

---

## Step 4: Generate Extensions (per ad group)

### 6 Sitelinks

Each needs: **Title** (max 25 chars) + **Desc 1** (max 35 chars) + **Desc 2** (max 35 chars) + **Destination URL**

Point each sitelink to a *different* page section — never send all six to the homepage. Good destinations: main service page, case studies, pricing, about/team, a specific sub-service, contact/booking page.

Titles should be action-oriented or section-specific. Descriptions reinforce the sitelink's value.

### 10 Callout Extensions (max 25 characters each)

Short USP phrases — no verbs required, just punchy claims.

Specificity is everything here. "ROI-Focused Campaigns" beats "Quality Service". "No Lock-In Contracts" beats "Flexible Plans". Pull from the USPs and landing page proof points. Cover: experience, results, speed, support, pricing model, certifications, guarantees.

### Structured Snippets

Choose the most relevant header type based on what the business offers (see `references/google-ads-specs.md` for available header types). List 4–6 values (max 25 chars each). Pull these from the landing page's service or product list.

### Call Extension

Use the phone number provided. Include country code.

---

## Step 5: Output as CSV

Structure the CSV with clearly labelled sections, each separated by a blank row. This makes it clean and navigable when pasted into Google Sheets.

```
SECTION: RSA AD COPY
Ad Group,Final URL,Headline 1,...,Headline 15,Description 1,...,Description 4,Display Path 1,Display Path 2

[blank row]

SECTION: SITELINK EXTENSIONS
Ad Group,Sitelink 1 Title,Sitelink 1 Desc 1,Sitelink 1 Desc 2,Sitelink 1 URL,...,Sitelink 6 Title,Sitelink 6 Desc 1,Sitelink 6 Desc 2,Sitelink 6 URL

[blank row]

SECTION: CALLOUT EXTENSIONS
Ad Group,Callout 1,Callout 2,...,Callout 10

[blank row]

SECTION: STRUCTURED SNIPPETS
Ad Group,Header Type,Value 1,Value 2,...,Value 6

[blank row]

SECTION: CALL EXTENSION
Ad Group,Phone Number
```

**Where to save:**

- If the user specifies a folder → save there, no questions asked.
- If no folder is specified → create and save to `google-ad-copies/`.

**File name format:** `[client-name]-[ad-group-or-campaign-theme]-[YYYY-MM-DD].csv`

Examples:
- `luxury-apartments-search-2026-03-27.csv`
- `online-course-google-ads-2026-03-27.csv`
- `ppc-agency-free-audit-2026-03-27.csv`
- `saas-free-trial-campaign-2026-03-27.csv`

Keep the client name short and slug-like. Include the ad group or campaign theme so the file is immediately identifiable without opening it.

After saving, tell the user the exact file path.

---

## Quality Checklist

Run through this before outputting. These are the things that get flagged in Google Ads and kill performance.

**Character limits:**
- [ ] All 15 headlines ≤ 30 characters (count precisely — spaces and punctuation count)
- [ ] All 4 descriptions ≤ 90 characters
- [ ] Both display paths ≤ 15 characters each
- [ ] All 6 sitelink titles ≤ 25 characters
- [ ] All sitelink descriptions ≤ 35 characters
- [ ] All 10 callouts ≤ 25 characters
- [ ] All structured snippet values ≤ 25 characters

**Copy quality:**
- [ ] No two headlines make the same point, even paraphrased
- [ ] At least 5 headlines include the primary keyword or a close variant
- [ ] At least 2 headlines are clear, specific CTAs
- [ ] Descriptions don't open with the same word
- [ ] Sitelinks point to distinct page sections (not all homepage)
- [ ] Callouts are specific, not generic
- [ ] Copy is consistent with landing page — no promises the page doesn't keep
- [ ] CSV sections are properly separated with blank rows and section headers
