let SecretKeySelector = ./SecretKeySelector.dhall

in  { Type =
        { email : Optional Text
        , apiTokenSecretRef : Optional SecretKeySelector.Type
        }
    , default =
      { email = None Text, apiTokenSecretRef = None SecretKeySelector.Type }
    }
