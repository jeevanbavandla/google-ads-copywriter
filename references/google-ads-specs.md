# Google Ads Specs Reference

## Responsive Search Ads (RSA)

| Element | Limit | Notes |
|---|---|---|
| Headlines | 15 max (3 minimum) | Google selects the best combinations to show |
| Headline length | **30 characters max** | Includes spaces and punctuation |
| Descriptions | 4 max (2 minimum) | Google shows any 2 of 4 simultaneously |
| Description length | **90 characters max** | Includes spaces and punctuation |
| Display path field 1 | **15 characters max** | Appears after the domain in the ad URL |
| Display path field 2 | **15 characters max** | Combined with path 1: domain/path1/path2 |
| Final URL | Required | Domain must match the landing page |

### Ad Strength Ratings

Google rates RSAs based on headline variety and coverage:

| Rating | What it typically means |
|---|---|
| Poor | Fewer than 5 unique headlines, high repetition |
| Average | Some variety but themes overlap significantly |
| Good | 3+ distinct themes, moderate variety |
| Excellent | 15 headlines across 4+ themes, 4 descriptions, minimal repetition |

**To hit "Excellent":** Use all 15 headline slots. Cover at least 4 themes (keyword, benefit, CTA, social proof). Avoid repeating the same root word across headlines.

---

## Sitelink Extensions

| Element | Limit |
|---|---|
| Sitelink text (title) | **25 characters max** |
| Description line 1 | **35 characters max** |
| Description line 2 | **35 characters max** |
| Final URL | Required per sitelink |
| Minimum to show descriptions | 4+ sitelinks with descriptions enabled |
| Recommended count | 6–8 sitelinks |

---

## Callout Extensions

| Element | Limit |
|---|---|
| Callout text | **25 characters max** |
| Max callouts per campaign/ad group | 20 |
| Minimum to display | 2 |
| Recommended | 8–10 for good coverage |

---

## Structured Snippet Extensions

| Element | Limit |
|---|---|
| Header type | Predefined list (see below) |
| Values | 3 minimum, up to 10 |
| Value length | **25 characters max** |

### Available Header Types

```
Amenities        Brands           Courses
Degree programs  Destinations     Featured hotels
Insurance coverage  Models        Neighborhoods
Service catalog  Shows            Styles
Types
```

**Best for agencies/service businesses:** `Service catalog` or `Types`
**Best for e-commerce:** `Brands`, `Styles`, or `Types`
**Best for education:** `Courses` or `Degree programs`

---

## Call Extension

| Element | Notes |
|---|---|
| Phone number | Include country code (e.g. +91 for India) |
| Display format | Google formats automatically |
| Call reporting | Tracks calls as conversions when enabled in account |

---

## Character Counting Rules

These are the most common mistakes — count carefully:

- **Spaces count** as characters
- **Punctuation counts** (commas, periods, apostrophes, dashes, etc.)
- **Em dashes (—)** count as 1 character
- **Trademark symbols (™, ®)** count as 1 character
- **Emojis** are not allowed in standard text ads
- Dynamic keyword insertion `{keyword:Default Text}` — the *default text* is used for validation

**Quick counting method:** Paste the text into any character counter, or count manually. Going 1 character over the limit means Google won't serve the ad in that configuration.

---

## Extension Level Hierarchy

Extensions can be set at:
1. **Account level** — applies across all campaigns unless overridden
2. **Campaign level** — applies to all ad groups in that campaign
3. **Ad group level** — most specific, overrides campaign/account

For client campaigns, create extensions at the **ad group level** for maximum control and relevance.
