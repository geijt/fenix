rule = {
    matches = {
        {
            { "device.bus-path", "equals", "platform-sound-micarray" },
        },
    },
    apply_properties = {
        ["device.description"] = "DMIC",
        ["node.description"] = "DMIC",
    },
}

table.insert(alsa_monitor.rules,rule)
