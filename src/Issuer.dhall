let k8s = (../imports.dhall).k8s

let constants = ../constants.dhall

let IssuerSpecUnion = ./IssuerSpecUnion.dhall

in  { Type =
        { apiVersion : Text
        , kind : Text
        , metadata : k8s.ObjectMeta.Type
        , spec : IssuerSpecUnion.Type
        }
    , default = { apiVersion = constants.apiVersion, kind = "Issuer" }
    }
