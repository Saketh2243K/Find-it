# 🧭 FindIt — Smart Lost & Found

AI-powered campus lost & found platform with smart matching, live sync, and one-click reunions. Built for hackathon demos.

## ✨ Features

| Feature | Description |
|---------|-------------|
| **Smart Matching** | Multi-signal algorithm: category, location, date, keywords, synonyms & photo color |
| **Match Reasons** | Shows *why* each pair matched (great for judges!) |
| **Live Dashboard** | Stats, category chart, activity feed |
| **Urgent Flag** | Mark critical items (IDs, wallets, phones) |
| **One-tap Contact** | Call & WhatsApp buttons on matches |
| **Share & QR** | Share reports via link or QR code |
| **Zone Filters** | Filter by campus location |
| **Confetti Celebration** | Visual feedback on confirmed reunions |
| **Claim Workflow** | Generate and verify a six-digit pickup code at handoff |
| **Supabase Sync** | Real-time multi-user campus deployment |
| **Export/Import** | Backup and restore data |

## 🚀 Quick Start (Demo Mode)

1. Open `index.html` in any browser — works immediately with demo data
2. Navigate: **Home → Report → Browse → Matches → History**
3. Confirm a match on the **Matches** tab to generate a pickup code
4. Open **History** and verify the code when the item is handed over

## 🌐 Live Multi-User Setup (Supabase)

1. Create a free project at [supabase.com](https://supabase.com)
2. Go to **SQL Editor** → paste contents of `supabase-setup.sql` → **Run**
3. Copy your **Project URL** and **anon public key** from Settings → API
4. Open FindIt → click **⚙️ Settings** → paste credentials → **Save & Reload**

Now every device sees the same live data!

## 🎤 Hackathon Pitch (2 min)

> **Problem:** Campus lost & found is broken — bulletin boards, WhatsApp groups, security desks. Items sit unclaimed for weeks.
>
> **Solution:** FindIt — report in 30 seconds, our algorithm auto-matches lost ↔ found items using 5 signals, and connects people instantly via WhatsApp.
>
> **Demo flow:**
> 1. Show Home dashboard with live stats
> 2. Report a lost item (e.g. "Blue Backpack, Library")
> 3. Switch to Matches — show 85%+ confidence with reason tags
> 4. Confirm match → confetti → History log
> 5. Click WhatsApp to show instant contact
>
> **Tech:** Vanilla JS (zero build step), Supabase realtime, client-side color analysis, synonym-aware NLP matching.
>
> **Impact:** Reduces reunion time from days to minutes. Scales to any campus with zero app install.

## 📁 Project Structure

```
lost_and_found/
├── index.html          # Full app (single file, deploy anywhere)
├── supabase-setup.sql  # Database schema for live sync
└── README.md
```

## 🏆 Judging Highlights

- **No install required** — works as a static site
- **Explainable AI** — match reasons visible to users
- **Real-time** — Supabase live sync across judges' phones
- **Mobile-first** — FAB button, responsive, safe-area support
- **Complete workflow** — report → match → contact → resolve → history
