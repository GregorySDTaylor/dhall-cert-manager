let Map = (../imports.dhall).prelude.Map

in  { Type =
        { annotations : Optional (Map.Type Text Text)
        , labels : Optional (Map.Type Text Text)
        }
    , default =
      { annotations = None (Map.Type Text Text)
      , labels = None (Map.Type Text Text)
      }
    }
