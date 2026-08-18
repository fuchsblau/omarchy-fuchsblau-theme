-- fuchsblau · hyprland override
-- Border-Doktrin: hairline, sharp, kein Glow. Aktiv = teal, inaktiv = accent-mut.
-- Kein shadow-System ("Tiefe entsteht durch Hairline, nicht durch Licht").
-- Ersetzt das aus colors.toml generierte hyprland.lua, weil die Doktrin
-- mehr festlegt als Farben: 1px-Border, Gaps, keine Rundung.

local active_border_color = "rgb(4dd6c8)"
local inactive_border_color = "rgba(4e578499)"

hl.config({
  general = {
    gaps_in = 8,
    gaps_out = 16,
    border_size = 1,

    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 0,

    shadow = {
      enabled = false,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Terminal-Opazitaet leicht reduziert — die Buehne darf durchscheinen,
-- aber nicht so weit, dass Hairlines am Fensterrand verwaschen.
o.window({ tag = "terminal" }, { opacity = "0.97 0.95" })
