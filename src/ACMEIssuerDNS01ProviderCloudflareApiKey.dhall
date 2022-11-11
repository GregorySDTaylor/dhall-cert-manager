let SecretKeySelector = ./SecretKeySelector.dhall

in  { Type =
        { email : Optional Text
        , apiKeySecretRef : Optional SecretKeySelector.Type
        }
    , default =
      { email = None Text, apiKeySecretRef = None SecretKeySelector.Type }
    }
