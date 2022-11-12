let SecretKeySelector = ./SecretKeySelector.dhall

let Keystore = { create : Bool, passwordSecretRef : SecretKeySelector.Type }

in  { Type = { jks : Optional Keystore, pkcs12 : Optional Keystore }
    , default = { jks = None Keystore, pkcs12 = None Keystore }
    }
