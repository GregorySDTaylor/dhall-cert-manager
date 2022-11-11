let ACMEIssuerDNS01ProviderCloudflareApiKey =
      ./ACMEIssuerDNS01ProviderCloudflareApiKey.dhall

let ACMEIssuerDNS01ProviderCloudflareApiToken =
      ./ACMEIssuerDNS01ProviderCloudflareApiToken.dhall

in  { Type =
        < ApiKey : ACMEIssuerDNS01ProviderCloudflareApiKey.Type
        | ApiToken : ACMEIssuerDNS01ProviderCloudflareApiToken.Type
        >
    }
