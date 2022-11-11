let ACMEChallengeSolverDNS01Union = ./ACMEChallengeSolverDNS01Union.dhall

let CertificateDNSNameSelector = ./CertificateDNSNameSelector.dhall

in  { Type =
        { selector : Optional CertificateDNSNameSelector.Type
        , dns01 : ACMEChallengeSolverDNS01Union.Type
        }
    , default.selector = None CertificateDNSNameSelector.Type
    }
