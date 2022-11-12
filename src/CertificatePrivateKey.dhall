let PrivateKeyEncoding = ./PrivateKeyEncoding.dhall

let PrivateKeyAlgorithm = ./PrivateKeyAlgorithm.dhall

in  { Type =
        { rotationPolicy : Optional Text
        , encoding : Optional PrivateKeyEncoding.Type
        , algorithm : Optional PrivateKeyAlgorithm.Type
        , size : Optional Integer
        }
    , default =
      { rotationPolicy = None Text
      , encoding = None PrivateKeyEncoding.Type
      , algorithm = None PrivateKeyAlgorithm.Type
      , size = None Integer
      }
    }
