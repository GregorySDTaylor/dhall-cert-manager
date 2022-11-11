{ ACMEChallengeSolver = ./src/ACMEChallengeSolver.dhall
, ACMEChallengeSolverDNS01 = ./src/ACMEChallengeSolverDNS01.dhall
, ACMEChallengeSolverDNS01Union = ./src/ACMEChallengeSolverDNS01Union.dhall
, ACMEChallengeSolverDNS01Cloudflare =
    ./src/ACMEChallengeSolverDNS01Cloudflare.dhall
, ACMEIssuerDNS01ProviderCloudflare =
    ./src/ACMEIssuerDNS01ProviderCloudflare.dhall
, ACMEIssuerDNS01ProviderCloudflareApiKey =
    ./src/ACMEIssuerDNS01ProviderCloudflareApiKey.dhall
, ACMEIssuerDNS01ProviderCloudflareApiToken =
    ./src/ACMEIssuerDNS01ProviderCloudflareApiToken.dhall
, CertificateDNSNameSelector = ./src/CertificateDNSNameSelector.dhall
, CNAMEStrategy = ./src/CNAMEStrategy.dhall
, SecretKeySelector = ./src/SecretKeySelector.dhall
}
