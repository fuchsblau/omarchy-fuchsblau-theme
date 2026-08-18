# Fuchslicht — Prompts für Nano Banana Pro

**Modell:** `gemini-3-pro-image` (Nano Banana Pro) · Gemini API oder AI Studio
**Basis:** [Briefing Fuchslicht-Serie](briefing-fuchslicht-serie.md) · Stand 2026-08-18

## Einstellungen (alle Motive)

| Parameter | Wert |
|---|---|
| Seitenverhältnis | `16:9` |
| Auflösung | `4K` (3840×2160, nativ — kein Upscaling) |
| Kandidaten | 2–3 pro Motiv generieren, beste Variante wählen |

**Workflow-Reihenfolge:** Zuerst Motiv 1 (Küste) iterieren, bis es sitzt. Das finale Küsten-Bild dann bei Motiv 2 und 3 als **Style-Referenzbild** mitgeben — der Referenz-Absatz am Ende dieser Prompts verweist darauf. Erst danach Post-Processing (Palette-Remap, Korn) über alle drei gemeinsam.

---

## Gemeinsamer Stil-Block

Dieser Block ist der identische Auftakt aller drei Prompts (Serienklammer):

> Flat illustration in the style of a minimalist Scandinavian art print: large calm color fields, crisp clean edges, depth built from layered silhouettes, a subtle fine film grain across the entire image. No painterly brushwork, no photorealistic texture, no 3D render look.
>
> Strictly limited night palette. The whole image lives in deep midnight blues: #0d111a for the darkest shadows and nearest silhouettes, #141a27 and #1a2234 as base tones, #3a4360 for fine edge lines, #4e5784 for haze and lifted planes, #a8b1d2 for moonlit surfaces, #e0e8ff only for the brightest sparks such as sparse stars. Teal #4dd6c8 appears exclusively as emitted light and its glow. Warm orange #f0a060 appears exclusively on one small fox — the only warm element in the entire image. No other hues anywhere: no green, no brown, no neutral grey, no purple.
>
> Widescreen 16:9 desktop wallpaper composition: all key elements inside the central 70% of the frame, outer edges kept calm and safely croppable, the top 5% of the sky completely quiet. No text, no logo, no watermark, no humans.

## Motiv 1 · Küste (Serien-Lead)

```text
[Gemeinsamer Stil-Block]

A vast nordic coastline at night. In the foreground a dark shoreline with a
few flat rocks. Beyond it the open sea, with a staggered chain of offshore
islands rising as layered silhouettes — the nearest almost black (#0d111a),
each layer behind it slightly lighter, the farthest fading into haze
(#3a4360). The horizon sits in the lower third of the frame; above it a vast
quiet night sky with very sparse tiny stars (#e0e8ff).

The teal light source of this scene is the water itself: bioluminescent surf
drawing glowing teal (#4dd6c8) seams of foam along the waterline, thin
luminous wave lines running up the beach, and a faint teal rim of light
hugging the base of each island. Cool moonlight with a slight teal cast lies
on the open water.

On one of the shoreline rocks in the lower third sits a small fox (#f0a060),
seen from behind at a distance, gazing out toward the islands. The fox is
tiny in the vast landscape — a quiet detail discovered only at second
glance, never the focal point.
```

## Motiv 2 · Bergkamm

```text
[Gemeinsamer Stil-Block]

A high mountain ridge line at night, seen from a distance. The ridge runs
through the lower third of the frame as a sharp dark silhouette (#0d111a),
with one or two further mountain chains behind it in lighter layered tones
(#141a27, #3a4360). Snow edges along the crest catch faint starlight
(#a8b1d2, sparse peaks up to #e0e8ff).

The teal light source of this scene is the sky: calm aurora borealis bands
in teal (#4dd6c8) flowing above the ridge — smooth, quiet ribbons, not
dramatic curtains — their glow gently brushing the snow line. A few very
sparse tiny stars (#e0e8ff) in the dark sky between the bands.

On the crest of the ridge stands a small fox (#f0a060) as a tiny
silhouette, its flank faintly touched by the aurora light. It is minute
against the mountains — a quiet detail discovered only at second glance.

Use the attached reference image as a strict style anchor: same illustration
technique, same palette discipline, same night, the same fox.
```

## Motiv 3 · Fjord

```text
[Gemeinsamer Stil-Block]

A still nordic fjord at night: mirror-calm water lying between two dark
mountain flanks that frame the scene from left and right as layered
silhouettes (#0d111a in front, #141a27 and #3a4360 behind). Large calm
planes of water and sky dominate the composition; the far end of the fjord
fades into haze (#4e5784). Horizon low, sky quiet with very sparse tiny
stars.

The teal light source of this scene is a single human light: one small
lighthouse on a low headland reaching into the fjord, its lamp glowing in
teal (#4dd6c8), drawing one long, softly broken reflection across the still
water. No other artificial light anywhere — one light in a vast dark
landscape.

At the water's edge in the lower third sits a small fox (#f0a060), facing
the distant lighthouse across the water. It is tiny in the wide scene — a
quiet detail discovered only at second glance.

Use the attached reference image as a strict style anchor: same illustration
technique, same palette discipline, same night, the same fox.
```

---

## Iterations-Hinweise

- **Fuchs zu dominant / zu detailliert:** „the fox even smaller, a simple two-tone silhouette, further in the distance" ergänzen.
- **Fremdfarben eingeschlichen** (häufig: grünliche Aurora, braune Felsen): betroffene Stelle benennen und auf die Rampe verweisen, z. B. „the aurora must be pure teal #4dd6c8, not green; rocks are #141a27, not brown".
- **Banding im Himmel:** „perfectly smooth gradient sky" anfordern; Rest-Banding löst das Post-Processing (Gradient-Map + Dithering), nicht der Prompt.
- **Zu viel Detail/Textur:** „flatter, fewer details, larger calm color fields, poster-like reduction".
- **Alternative für Motiv 3:** statt Leuchtturm „a single lit cabin window on the far shore" — nur eine der beiden Varianten pro Bild.

## Nach der Generierung (Pflicht, siehe Briefing §5/§8)

1. Palette-Remap gegen die Charter-Farben (Flächen hart via `magick -remap`, Himmelsverläufe per Gradient-Map + Dithering).
2. Export als **JPEG q95, Chroma 4:4:4** (~1,2 MB). *Umsetzungserkenntnisse: PNG24 lag bei 6,5–12 MB, PNG8-Dithering war auf den Verläufen sichtbar, und WebP rendert die Omarchy-Shell ohne das optionale `qt6-imageformats` gar nicht (leere Bühne). Das generierungseigene Filmkorn reicht als Banding-Schutz, ein zusätzliches Korn-Overlay bläht nur die Datei auf.*
3. Schärfe-Check bei 100 % auf dem größten verfügbaren Display; Fuchs-Anatomie in der Vergrößerung prüfen.
4. Generator (`gemini-3-pro-image`) + finale Prompts fürs README dokumentieren — diese Datei ist diese Dokumentation; bei Prompt-Abweichungen hier nachführen.
