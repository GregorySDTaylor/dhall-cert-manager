let SecretKeySelector = ./SecretKeySelector.dhall

in  { Type = { apiTokenSecretRef : SecretKeySelector.Type } }
