let k8s = (../imports.dhall).k8s

let constants = ../constants.dhall

let CertificateSpec = ./CertificateSpec.dhall

in {
    Type = {
        apiVersion : Text,
        kind : Text,
        metadata : k8s.ObjectMeta.Type,
        spec : CertificateSpec.Type
    },
    default = {
        apiVersion = constants.apiVersion,
        kind = "Certificate"
    }
}