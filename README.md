# ETV Workshop: Positron + R

Extract → Transform → Visualize, in 60 minutes. Materials by Dr. Immanuel Williams.

**Workshop site:** <https://gato365.github.io/etv-workshop/> (scan the QR code below, or project the [full-screen QR page](https://gato365.github.io/etv-workshop/qr.html)).

![QR code for the workshop site](images/qr-etv-workshop.png)

## What's in this folder

- `qmd/01_start_here_positron_and_r.qmd` — minute-zero polls (R? Positron?), setup, Positron tour, package installs (10 min)
- `qmd/02_csv_extract_transform_visualize.qmd` — guided CSV activity: café orders (25 min)
- `qmd/03_wikipedia_and_ai_etv_flows.qmd` — htmltab + AI-assisted transformation (25 min)
- `data/cafe_orders.csv` — synthetic café orders, 506 rows (used in 02)
- `data/top_films_backup.csv` — Wikipedia "List of highest-grossing films", top-50 table saved 2026-10-28 (fallback for 03)

## How to use it (students)

1. Download `etv-workshop.zip` from the site and unzip it. Keep the folder together; the code expects `data/` next to your scripts.
2. In Positron: File → Open Folder… → choose the `etv-workshop` folder.
3. Open the `.qmd` files in Positron and follow along, or read them on the site.
4. Write your own scripts (e.g. `cafe_etv.R`) in that top-level folder so `data/cafe_orders.csv` resolves.

Before the workshop, do the pre-workshop checklist at the top of file 01.

## How the site is built (instructor)

The site is a [Quarto](https://quarto.org) website, rendered into `docs/` and served by GitHub Pages from the `main` branch.

```bash
./build_zip.sh     # rebuild the student download after editing qmd/ or data/
quarto render      # rebuild docs/
git add -A && git commit -m "Update materials" && git push
```

Source pages: `index.qmd` (home), `qr.qmd` (projector QR page), `qmd/*.qmd` (the three sessions). Config: `_quarto.yml`. The QR code in `images/` points at the site URL.
