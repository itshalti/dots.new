hl.config({
    animations = {
        enabled = true,
    },
})
 
hl.curve("calm", { type = "bezier", points = { {0.25, 0.9}, {0.35, 1} } })
 
hl.animation({ leaf = "windows",     enabled = true, speed = 4, bezier = "calm" })
hl.animation({ leaf = "windowsIn",   enabled = true, speed = 4, bezier = "calm" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 3, bezier = "calm" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "calm" })
 
hl.animation({ leaf = "fade",        enabled = true, speed = 3, bezier = "calm" })
hl.animation({ leaf = "fadeIn",      enabled = true, speed = 3, bezier = "calm" })
hl.animation({ leaf = "fadeOut",     enabled = true, speed = 2, bezier = "calm" })
 
hl.animation({ leaf = "layers",      enabled = true, speed = 3, bezier = "calm" })
hl.animation({ leaf = "layersIn",    enabled = true, speed = 3, bezier = "calm" })
hl.animation({ leaf = "layersOut",   enabled = true, speed = 2, bezier = "calm" })
 
hl.animation({ leaf = "workspaces",  enabled = true, speed = 4, bezier = "calm" })
 

