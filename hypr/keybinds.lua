local ipc = "noctalia msg"
local mainMod = "SUPER"

local browser      = "zen-browser"
local calculator   = "gnome-calculator"
local texteditor   = "gnome-text-editor"
local taskmanager  = "resources"
local code         = "code"

hl.bind(mainMod .. " + T",            hl.dsp.exec_cmd(terminal))           -- Терминал
hl.bind(mainMod .. " + B",            hl.dsp.exec_cmd(browser))            -- Браузер
hl.bind(mainMod .. " + E",            hl.dsp.exec_cmd(fileManager))        -- Файловый менеджер
hl.bind(mainMod .. " + CTRL + C",     hl.dsp.exec_cmd(code))               -- VSCode
hl.bind(mainMod .. " + C",            hl.dsp.exec_cmd(calculator))         -- Калькулятор
hl.bind(mainMod .. " + N",            hl.dsp.exec_cmd(texteditor))         -- Текстовый редактор
hl.bind("CTRL + SHIFT + Escape",      hl.dsp.exec_cmd(taskmanager))        -- Диспетчер задач

hl.bind(mainMod .. " + Q",            hl.dsp.window.close())
hl.bind(mainMod .. "+Space", hl.dsp.exec_cmd(ipc .. " panel-toggle launcher"))

hl.bind(mainMod .. " + F",            hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + M",            hl.dsp.window.fullscreen({ state = 1 }))
hl.bind(mainMod .. " + V",            hl.dsp.window.float({ action = "toggle" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(mainMod .. " + G",            hl.dsp.group.toggle())

hl.bind("ALT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())
    hl.dispatch(hl.dsp.window.bring_to_top())
end, { repeating = true })

hl.bind(mainMod .. " + CTRL + R",     hl.dsp.exec_cmd("hyprctl reload"))

hl.bind(mainMod .. " + SHIFT + S",    hl.dsp.exec_cmd(
    'grim -g "$(slurp)" - | wl-copy'
))

for i = 1, 9 do
    hl.bind(mainMod .. " + " .. i,              hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. i,      hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0",            hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0",    hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + Tab",          hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + SHIFT + Tab",  hl.dsp.focus({ workspace = "m-1" }))

hl.bind(mainMod .. " + mouse_down",   hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",     hl.dsp.focus({ workspace = "e-1" }))

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(ipc .. " volume-up"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(ipc .. " volume-down"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(ipc .. " volume-mute"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(ipc .. " brightness-up"))
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(ipc .. " brightness-down"))

