let k8s = (../imports.dhall).k8s

let IssuerSpecUnion = ./IssuerSpecUnion.dhall

in {
    Type = {
        apiVersion : Text,
        kind : Text,
        metadata : k8s.ObjectMeta.Type,
        spec : IssuerSpecUnion.Type
    }
}