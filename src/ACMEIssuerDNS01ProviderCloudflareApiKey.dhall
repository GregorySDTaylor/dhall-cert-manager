let SecretKeySelector = ./SecretKeySelector.dhall

in  { Type = { email : Text, apiKeySecretRef : SecretKeySelector.Type } }
