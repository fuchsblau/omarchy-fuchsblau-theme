# fuchsblau · omarchy-theme

> Die Buehne, anwendungsfertig. Eine Token-Palette, eine Border-Farbe,
> ein Lock-Screen — und nichts darueber hinaus.

Fuer Omarchy **Quattro** (>= 4.0). Seit 4.0 generiert Omarchy alle
App-Configs (Terminals, btop, neovim, vscode, Shell, Hyprland, ...) aus
`colors.toml`; das Theme liefert nur noch Tokens plus die wenigen
Overrides, in denen die Doktrin mehr festlegt als Farben.

## Install

```sh
omarchy theme install https://github.com/fuchsblau/omarchy-fuchsblau-theme
omarchy theme set fuchsblau
```

## Was die Auflage uebernimmt

| Datei                | Pflicht? | Quelle                                        |
|----------------------|----------|-----------------------------------------------|
| `colors.toml`        | ja       | Charter · semantische Quattro-Tokens           |
| `backgrounds/`       | ja       | Buehnenbilder                                  |
| `icons.theme`        | ja       | `Yaru-blue` (matched-hue)                      |
| `unlock.png` + Previews | ja    | Lock-Screen-Signet, Switcher-Vorschauen        |
| `btop.theme`         | Override | Gradient-Enden auf fuchs · niemals Magenta     |
| `hyprland.lua`       | Override | Border 1px teal aktiv, accent-mut inaktiv; Gaps 8/16, rounding 0, kein Shadow |
| `shell.*.toml`       | Override | Hairline-Rahmen (#3a4360) fuer OSD/Popups, Tooltips, Menue, Launcher — Erbe von swayosd.css |

Alles andere (Alacritty/Foot/Kitty/Ghostty, Helix, Neovim via aether,
VS Code als lokale "Omarchy"-Extension, Chromium, Keyboard-RGB, die
komplette Shell — Bar, Menues, Notifications, OSD, Polkit, Lock) wird
von Omarchy aus `colors.toml` generiert und ist damit per Konstruktion
auf der Marke.

## Bewusst ungestylt (Quattro-Defaults)

Diese Oberflaechen sind neu in Quattro und laufen absichtlich auf den
generierten Defaults. Wer hier eingreift, schreibt eine ADR:

- **Shell-Sektionen ohne Override**: `[bar]`, `[notifications]`,
  `[polkit]`, `[lock]`, `[image-picker]`, `[controls]`, `[font]`,
  `[spacing]`. Struktur-Karten (Menue, Launcher, Tooltips, OSD) tragen
  den Hairline-Rahmen aus `shell.*.toml`; alles, was *aktiv* spricht —
  Notifications, Lock-States, Polkit — behaelt bewusst den teal
  Hyprland-Border: Struktur = hairline, aktiv = teal.
- **`keyboard.rgb` / `chromium.theme`**: die generierten Werte
  (accent bzw. background) sind identisch mit den frueher von Hand
  gepflegten — Dateien entfernt.
- **Neovim**: statt catppuccin-mocha mit palette-overrides jetzt das
  generierte [aether.nvim](https://github.com/bjarneo/aether.nvim)-Spec —
  erfuellt die urspruengliche Absicht (alle Token aus `colors.toml`)
  ohne handgepflegte Zwischenschicht.

## Abweichungen vom Charter

1. **5 zusaetzliche ANSI-Hues.** Rot, Gruen, Magenta + bright-Varianten.
   Begruendung: das Terminal-Protokoll ist nicht verhandelbar; ohne diese
   Slots faerbt jedes diff/jedes Highlight unleserlich. Sie sind auf
   L≈0.78 C≈0.09 in oklch geklammert (gleiche Helligkeit, gleiche
   Saettigung wie teal/fuchs), damit die drei gezaehlten Akzentstellen
   im Auge erkennbar bleiben.
2. **`brown` = fuchs −50 %.** Der aether-Slot verlangt einen Braunwert;
   er wird aus der einzigen sanktionierten Warnfarbe abgeleitet statt
   eine neue Hue zu eroeffnen.

*Aufgegeben mit Quattro:* der teal Terminal-Cursor aus v0.2. Omarchy
pinnt den Cursor jetzt systemweit auf `bright_foreground`; ein Override
wuerde vier handgepflegte Terminal-Configs kosten — das Gegenteil von
Verzicht.

## Extras: GTK-Apps (Files & Co.)

Omarchy 4 generiert kein GTK-CSS — GNOME-Apps folgen dem Theme nur
grob via Adwaita-dark. Wer Files & Co. token-genau auf der Buehne haben
will, installiert das mitgelieferte User-Template (wirkt fuer *alle*
Themes, nicht nur fuchsblau):

```sh
cp extras/gtk.css.tpl ~/.config/omarchy/themed/
ln -sf ~/.local/state/omarchy/current/theme/gtk.css ~/.config/gtk-3.0/gtk.css
ln -sf ~/.local/state/omarchy/current/theme/gtk.css ~/.config/gtk-4.0/gtk.css
omarchy theme refresh && nautilus -q
```

GTK-Apps lesen das CSS nur beim Start; laufende Apps einmal neu starten.

## Lizenz & Attribution

MIT — siehe [`LICENSE`](LICENSE). © 2026 Matthias Nitsch.

- `icons.theme` referenziert das **Yaru** Icon-Set (Ubuntu/Canonical) — CC-BY-SA / GPL.
- `backgrounds/0..2` — die **Fuchslicht**-Serie (Kueste, Bergkamm, Fjord):
  KI-generiert mit Google Nano Banana Pro (`gemini-3-pro-image`),
  nachbearbeitet per Gradient-Mapping auf die Charter-Rampe.
  Briefing und vollstaendige Prompts liegen unter [`docs/`](docs/).
  Als rein KI-generierte Bilder sind sie mangels Schutzfaehigkeit
  faktisch gemeinfrei und fallen nicht unter die MIT-Lizenz des Repos.

*A dark-only Omarchy theme: one stage (`#1a2234`), three counted accents — teal, fuchs, accent-mut.*
