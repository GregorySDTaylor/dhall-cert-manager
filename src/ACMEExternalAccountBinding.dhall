let SecretKeySelector = ./SecretKeySelector.dhall

in  { Type = { keyID : Text, keySecretRef : SecretKeySelector.Type } }
