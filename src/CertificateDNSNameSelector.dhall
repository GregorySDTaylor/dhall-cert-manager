let Map = (../imports.dhall).prelude.Map

in { Type =
    { matchLabels : Optional (Map.Type Text Text)
    , dnsNames : Optional (List Text)
    , dnsZones : Optional (List Text)
    },
    defaults = { matchLabels = None (Map.Type Text Text)
    , dnsNames = None (List Text)
    , dnsZones = None (List Text)
    },
}
