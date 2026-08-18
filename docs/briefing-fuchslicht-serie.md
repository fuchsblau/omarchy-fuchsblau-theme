# fuchslicht — Background-Briefing

**Projekt:** Omarchy-Theme „fuchsblau" · Background-Serie (3 Motive)
**Empfänger:** Prompt Engineering — Erstellung der Bildprompts
**Auftraggeber:** Matthias (Theme-Maintainer)
**Stand:** 2026-08-18 · abgestimmt im Briefing-Interview

---

## 1. Auftrag

Drei neue Desktop-Backgrounds als **zusammenhängende Serie** für das Omarchy-Theme fuchsblau. Die Serie wird die neue visuelle Signatur des Themes und übernimmt die Default-Position (das erste Bild ist das, was jeder Nutzer beim Aktivieren des Themes sieht — und der Kandidat für den Galerie-Screenshot). Der bisherige Bestand bleibt als Alternative erhalten.

Die strenge Charter des Themes („Eine Marke aus Verzicht", bisher fast monochrome Verläufe) wird für diese Serie **bewusst aufgeweicht**: Es entstehen echte Motive, keine Solid-Color-Flächen. Die Farbdisziplin bleibt dabei streng (siehe Abschnitt 5).

## 2. Das Theme in Kürze

fuchsblau ist ein dunkles Omarchy/Hyprland-Theme (dark only). Die Charter zählt drei Akzente; alles andere ist eine Blau-Rampe. Der Desktop soll mit Bar, Terminal und Fenstern **wie aus einem Guss** wirken — die Backgrounds sind die Bühne dahinter.

| Rolle | Hex | Verwendung im Bild |
|---|---|---|
| Bühne (Basis) | `#1a2234` | mittlere Bildtöne, Grundfläche |
| Bühne −25 % | `#141a27` | dunkle Zonen |
| Scrim (dunkelste Fläche) | `#0d111a` | tiefste Schatten, Silhouetten |
| Hairline | `#3a4360` | Strukturlinien, Kanten |
| Accent-Mut | `#4e5784` | aufgehellte Flächen, Dunst |
| Subtext | `#a8b1d2` | helle Partien, Mondlicht-Flächen |
| Peak White | `#e0e8ff` | hellste Spitzen (sparsam: Sterne, Glanzkanten) |
| **Teal (Identität)** | `#4dd6c8` | **ausschließlich Licht** (siehe 5) |
| **Fuchs-Orange** | `#f0a060` | **ausschließlich der Fuchs** (siehe 5) |

## 3. Serienkonzept

**Eine Nacht, ein Fuchs, drei Schauplätze.**

Drei nordische Nachtlandschaften — Berge und Küste mit vorgelagerten Inseln — in einheitlicher Bildsprache. Durch alle drei Bilder streift derselbe Fuchs: eine **kleine, stille Gestalt** in weiter Landschaft, die man erst auf den zweiten Blick entdeckt. Er ist nie Porträt, nie Blickfang — aber sein Orange ist der einzige warme Punkt im Bild und macht ihn, einmal gefunden, unverwechselbar.

Die Landschaft ist Hauptdarsteller. Der Fuchs gibt der Serie Namen, Klammer und Seele.

## 4. Die drei Motive

### Motiv 1 · Küste *(Serien-Lead, Default-Background)*

- Weite Uferlinie im Vordergrund, dahinter offenes Meer mit **vorgelagerten Inseln** als gestaffelte dunkle Silhouetten (`#0d111a` bis `#3a4360`, Tiefenstaffelung über Helligkeit).
- Teal-Träger: **leuchtendes Wasser** — Biolumineszenz in Gischtsäumen, Wellenlinien am Ufer und als feiner Lichtsaum um die Inseln. Dazu kühles Mondlicht mit Teal-Stich auf der Wasserfläche.
- Fuchs: klein auf einem Uferfelsen im unteren Bilddrittel, Blick aufs Meer.

### Motiv 2 · Bergkamm

- Gratlinie eines Bergmassivs vor weitem Nachthimmel, ggf. Andeutung weiterer Ketten dahinter.
- Teal-Träger: **Polarlicht** — ruhige Aurora-Bänder in Teal als dominanter Himmelsakzent; Schneekanten und Grate fangen Stern- und Auroralicht (`#a8b1d2`, Spitzen `#e0e8ff`).
- Fuchs: winzige Silhouette auf dem Grat, Flanke vom Licht gestreift.

### Motiv 3 · Fjord

- Stilles Wasser zwischen dunklen Bergflanken, ruhige Spiegelung, viel Fläche.
- Teal-Träger: **genau eine künstliche Lichtquelle** — Leuchtturm auf einer Landzunge *oder* ein einzelnes Hüttenfenster am Ufer, Licht in Teal, mit langgezogener Spiegelung im Wasser. Das ist das Hopper-Echo der Serie (Verweis auf das bestehende night-hawks-Background).
- Fuchs: am Wassersaum, dem Licht zugewandt.

## 5. Farbregeln (streng)

1. **Vollständige Tonalisierung:** Das gesamte Bild lebt in der Blau-Rampe aus Abschnitt 2 (`#0d111a` → `#e0e8ff`). Keine anderen Farbtöne — kein natürliches Grün, kein Braun, kein neutrales Grau.
2. **Teal `#4dd6c8` ist Licht:** ausschließlich für aktive Lichtquellen und deren direkten Schein (Aurora, Biolumineszenz, Lampenlicht, Lichtsäume). Nie als Flächen- oder Objektfarbe.
3. **Orange `#f0a060` ist der Fuchs:** ausschließlich Fell/Silhouette des Fuchses, ggf. minimalster Lichtabfall auf seinen unmittelbaren Standpunkt. Sonst existiert im Bild **kein warmer Ton**.
4. Je Bild dominiert **ein** Teal-Träger (Wasser / Aurora / Kunstlicht); Mond- und Sternlicht mit Teal-Stich ist überall als Nebenlicht erlaubt.

## 6. Stilregeln

- **Flat-Illustration mit Poster-Anmutung:** große, ruhige Farbflächen, klare Kanten, gestaffelte Silhouetten-Ebenen. Keine fotorealistische Textur, kein sichtbarer Pinselduktus, kein 3D-Render-Look.
- Feines, gleichmäßiges **Filmkorn** über dem Bild — verhindert Banding in den großen dunklen Verläufen und gibt der Fläche Materialität.
- Präzise Konturen im Geist der Theme-Doktrin („Hairline statt Licht"): Kanten dürfen als feine helle Linien (`#3a4360`/`#4e5784`) gezeichnet sein.
- **Keine Schrift, keine Logos, keine Menschen** im Bild. Menschliche Artefakte nur als das eine Kunstlicht in Motiv 3.

## 7. Komposition & Crop-Sicherheit

Omarchy rendert Backgrounds im Modus *Cover mit Mittelpunkt-Crop* (`PreserveAspectCrop`): Auf breiteren Monitoren (21:9) werden oben/unten, auf schmaleren links/rechts Teile beschnitten — **nie verzerrt, immer mittig gecroppt**.

- **Safe-Zone:** Fuchs, Inseln, Lichtquelle und alle Schlüsselelemente innerhalb der zentralen ~70 % der Bildfläche.
- Bildränder ruhig halten (Himmel, Wasser, Fels als Fläche) — sie müssen verlustfrei wegcropbar sein.
- Horizont bzw. dominante Horizontale nicht exakt mittig; unteres Drittel bevorzugt.
- Obere Bildkante ruhig (dort liegt die Statusbar), keine Details in den obersten ~5 %.
- Bedenken: Auf einem realen Desktop ist das Bild meist von Fenstern verdeckt — es wirkt über **Farbstimmung in den Randzonen** und die Momente, in denen der Fuchs zwischen zwei Fenstern hervorschaut.

## 8. Technische Lieferung

| Parameter | Vorgabe |
|---|---|
| Seitenverhältnis | 16:9 Querformat |
| Auflösung | **nativ generiert**, Ziel 5120×2880, Minimum 3840×2160 — kein Hochskalieren kleiner Ausgaben |
| Dateiformat | PNG (artefaktfrei auf Flachflächen); Zielgröße < 5 MB pro Bild |
| Qualitätsmaßstab | Muss auf einem 6K-Display scharf bestehen: keine KI-Artefakte, keine matschigen Kanten, kein Banding in Verläufen, saubere Fuchs-Anatomie auch bei kleiner Silhouette |
| Varianten | Pro Motiv gern 2–3 Kandidaten zur Auswahl |

**Hinweis zum Qualitätsmaßstab:** Omarchy-Upstream hat KI-Wallpaper bereits akzeptiert und ausschließlich an handwerklicher Qualität gemessen (Schärfe auf 6K war das einzige Ablehnungskriterium). Diese Messlatte gilt auch hier.

## 9. Generator & Rechtliches

- Generator frei wählbar — **mit einer Ausnahme: kein Midjourney im Free-Tier** (Outputs dort CC BY-NC, unvereinbar mit dem MIT-Repo). Unkritisch sind u. a. OpenAI-Modelle, Google Gemini, SDXL, Flux `schnell`.
- Bitte zur Lieferung dokumentieren: verwendeter Generator/Modell und finale Prompts. Beides wird im README des Theme-Repos als freiwillige Herkunftsangabe genannt (im Omarchy-Ökosystem unüblich, hier bewusstes Qualitätsmerkmal).

## 10. Benennung & Integration

Zielnamen im Theme (Nummernpräfix = Sortierung, Rest = Anzeigename im Background-Switcher):

```
0-fuchslicht-kueste.png
1-fuchslicht-bergkamm.png
2-fuchslicht-fjord.png
```

Der bisherige Bestand rückt auf die Präfixe 3–7 auf (übernimmt der Maintainer).

## 11. Abnahmekriterien

- [x] Alle drei Motive erkennbar **eine Serie** (Stil, Nacht, Lichtlogik, derselbe Fuchs)
- [x] Farbregeln aus Abschnitt 5 eingehalten (kein Fremdton, Teal nur Licht, Orange nur Fuchs)
- [x] Fuchs klein, still, auf den zweiten Blick — nie Blickfang, nie Porträt
- [x] Safe-Zone und ruhige Ränder gemäß Abschnitt 7
- [x] Nativ ≥ 3840×2160, scharf auf 6K, kein Banding, keine Artefakte
- [x] Generator- und Prompt-Dokumentation liegt bei

## Umsetzung (2026-08-18)

Serie generiert mit `gemini-3-pro-image` (nativ 5504×3072, 9 Kandidaten,
[Prompts](prompts-fuchslicht-nano-banana.md)), Flächen per Gradient-Map
deterministisch auf die Charter-Rampe gelegt (Akzente maskiert), Zuschnitt
auf 3840×2160. **Abweichung von §8:** Lieferformat ist JPEG q95 mit
4:4:4-Chroma (~1,2 MB) statt PNG. PNG24 überschritt das Größenziel deutlich
(6,5–12 MB), PNG8-Dithering war sichtbar, und verlustfreies WebP scheiterte
am Renderer: Die Omarchy-Shell (Qt/Quickshell) dekodiert WebP nur mit dem
optionalen Paket `qt6-imageformats` — auf Standard-Installationen bliebe
die Bühne leer, obwohl Omarchys Format-Whitelist WebP nennt. Integriert
als `backgrounds/0..2`, Bestand auf `3..7` umnummeriert.
