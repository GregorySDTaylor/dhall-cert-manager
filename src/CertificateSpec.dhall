let X509Subject = ./X509Subject.dhall

let k8s = (../imports.dhall).k8s

let CertificateSecretTemplate = ./CertificateSecretTemplate.dhall

let CertificateKeystores = ./CertificateKeystores.dhall

let ObjectReference = ./ObjectReference.dhall

let CertificatePrivateKey = ./CertificatePrivateKey.dhall

let CertificateAdditionalOutputFormat =
      ./CertificateAdditionalOutputFormat.dhall

in  { Type =
        { subject : Optional (List X509Subject.Type)
        , literalSubject : Optional Text
        , commonName : Optional Text
        , duration : Optional Text
        , renewBefore : Optional Text
        , dnsNames : Optional (List Text)
        , ipAddresses : Optional (List Text)
        , uris : Optional (List Text)
        , emailAddresses : Optional (List Text)
        , secretName : Text
        , secretTemplate : Optional CertificateSecretTemplate.Type
        , keystores : Optional CertificateKeystores.Type
        , issuerRef : ObjectReference.Type
        , isCA : Optional Bool
        , usages : Optional (List Text)
        , privateKey : Optional CertificatePrivateKey.Type
        , encodeUsagesInRequest : Optional Bool
        , revisionHistoryLimit : Optional Integer
        , additionalOutputFormats :
            Optional (List CertificateAdditionalOutputFormat.Type)
        }
    , default =
      { subject = None (List X509Subject.Type)
      , literalSubject = None Text
      , commonName = None Text
      , duration = None Text
      , renewBefore = None Text
      , dnsNames = None (List Text)
      , ipAddresses = None (List Text)
      , uris = None (List Text)
      , emailAddresses = None (List Text)
      , secretTemplate = None CertificateSecretTemplate.Type
      , keystores = None CertificateKeystores.Type
      , isCA = None Bool
      , usages = None (List Text)
      , privateKey = None CertificatePrivateKey.Type
      , encodeUsagesInRequest = None Bool
      , revisionHistoryLimit = None Integer
      , additionalOutputFormats =
          None (List CertificateAdditionalOutputFormat.Type)
      }
    }
