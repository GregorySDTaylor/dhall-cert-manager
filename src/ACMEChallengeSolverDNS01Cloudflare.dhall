let CNAMEStrategy = ./CNAMEStrategy.dhall

let ACMEIssuerDNS01ProviderCloudflare =
      ./ACMEIssuerDNS01ProviderCloudflare.dhall

in  { Type =
        { cnameStrategy : Optional CNAMEStrategy.Type
        , cloudflare : Optional ACMEIssuerDNS01ProviderCloudflare.Type
        }
    , default =
      { cnameStrategy = None CNAMEStrategy.Type
      , cloudflare = None ACMEIssuerDNS01ProviderCloudflare.Type
      }
    }
