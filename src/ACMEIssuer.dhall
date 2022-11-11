let ACMEExternalAccountBinding = ./ACMEExternalAccountBinding.dhall

let SecretKeySelector = ./SecretKeySelector.dhall

let ACMEChallengeSolver = ./ACMEChallengeSolver.dhall

in  { Type =
        { email : Optional Text
        , server : Text
        , preferredChain : Optional Text
        , skipTLSVerify : Optional Bool
        , externalAccountBinding : Optional ACMEExternalAccountBinding.Type
        , privateKeySecretRef : SecretKeySelector.Type
        , solvers : Optional (List ACMEChallengeSolver.Type)
        , disableAccountKeyGeneration : Optional Bool
        , enableDurationFeature : Optional Bool
        }
    , default =
      { email = None Text
      , preferredChain = None Text
      , skipTLSVerify = None Bool
      , externalAccountBinding = None ACMEExternalAccountBinding.Type
      , solvers = None (List ACMEChallengeSolver.Type)
      , disableAccountKeyGeneration = None Bool
      , enableDurationFeature = None Bool
      }
    }
