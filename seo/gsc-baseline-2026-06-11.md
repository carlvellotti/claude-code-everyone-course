# SEO Baseline Snapshot: June 11, 2026

Captured the day the /guides section was built (branch seo-guides), before deploy.
Compare against this after 4, 8, and 12 weeks. Window: March 12 to June 10, 2026 (90 days).

## Search Console: top queries

| Position | Clicks | Impressions | Query |
|---------:|------:|------------:|-------|
| 7.1 | 422 | 27,708 | claude code course |
| 7.9 | 129 | 13,828 | learn claude code |
| 10.5 | 86 | 12,405 | claude code free |
| 6.1 | 148 | 10,391 | gsd claude |
| 6.9 | 99 | 6,563 | claude code training |
| 7.2 | 80 | 5,578 | claude tutorial |
| 8.2 | 104 | 5,274 | claude code tutorial |
| 4.6 | 84 | 3,487 | gsd framework |
| 2.9 | 167 | 1,467 | claude code free course |
| 1.0 | 2,188 | 3,113 | claude code for everyone (branded) |

Branded queries (ccforeveryone variants) dominate clicks at position 1.0.

## Search Console: top pages

| Position | Clicks | Impressions | Page |
|---------:|------:|------------:|------|
| 7.3 | 13,913 | 364,770 | / (homepage) |
| 8.1 | 1,551 | 107,634 | /cowork |
| 6.8 | 1,112 | 108,879 | /gsd |
| 4.6 | 202 | 10,049 | /mini-lessons/vin-obsidian-workflows |
| 7.6 | 146 | 60,472 | /getting-started/installation |
| 4.0 | 111 | 15,258 | /getting-started/introduction |
| 3.8 | 51 | 11,010 | /fundamentals/course-intro |
| 7.2 | 27 | 61,614 | /fundamentals/project-memory |
| 6.7 | 27 | 6,676 | /vibe-coding |

## Flagged opportunities (pre-existing, not guides-related)

1. /fundamentals/project-memory: 61,614 impressions, 27 clicks (0.04% CTR) at
   position 7.2. Ranks for CLAUDE.md-related queries but the title/description
   is not winning the click. Rewrite meta title/description; consider whether
   the new /guides/claude-code-concepts-explained page should absorb or
   cross-link this intent.
2. /getting-started/installation: 60,472 impressions, 146 clicks (0.24% CTR).
   Same treatment. The new /guides/claude-code-installation-problems page
   should help capture the error-message queries this page is probably
   half-matching.
3. Sitemap was last submitted January 7, 2026 and was stale until the
   outDir fix on this branch. Resubmit in GSC after deploy.

## GA4 (property 518793428): sessions by channel, 90d

| Sessions | Channel |
|--------:|---------|
| 50,607 | Unassigned |
| 38,360 | Direct |
| 30,819 | Organic Search |
| 12,575 | Referral |
| 7,367 | Organic Social |
| 449 | Email |
| 249 | Organic Video |
| 81 | AI Assistant |

## GA4: funnel events, 90d

| Count | Event |
|------:|-------|
| 55,232 | popup_shown |
| 36,401 | popup_closed |
| 1,169 | file_download |

Note: no email-submitted event appears in GA4 despite the popup firing
shown/closed events. Either signups go through a differently named event or
the submit event is not reaching GA4. Investigate before trusting
signup-conversion numbers.

## Success criteria set on June 11, 2026

- "claude code for non developers": top 5 by mid-October 2026 (month 4)
- Guides cluster: nonzero impressions by week 6, meaningful clicks by month 3
- "claude code course": hold at or improve from 7.1 (canary metric)
- Email signups attributable to guide pages by month 3

## How this was pulled

ADC via gcloud (scopes: webmasters.readonly, analytics.readonly), quota
project mcp-connection-project. Search Console API searchAnalytics/query on
property https://ccforeveryone.com/, GA4 Data API runReport on
properties/518793428.
