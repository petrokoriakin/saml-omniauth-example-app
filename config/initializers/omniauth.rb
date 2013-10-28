OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
    :assertion_consumer_service_url => "http://some-test.in.ua/users/auth/saml",
    :issuer                         => "http://some-test.in.ua",
    :idp_sso_target_url             => "https://some-test-in-ua-dev-ed.my.salesforce.com/idp/endpoint/HttpRedirect",
    :idp_cert                       => "-----BEGIN CERTIFICATE-----
MIIECzCCAvOgAwIBAgIJAMM9+5q7cuzKMA0GCSqGSIb3DQEBBQUAMIGbMQswCQYD
VQQGEwJVQTETMBEGA1UECAwKS2hhcmtpdnNrYTEQMA4GA1UEBwwHS2hhcmtpdjES
MBAGA1UECgwJU29mdFNlcnZlMRIwEAYDVQQLDAlFbWVyZ2luZ0ExFzAVBgNVBAMM
DlBldHJvIEtvcmlha2luMSQwIgYJKoZIhvcNAQkBFhVwa29yQHNvZnRzZXJ2ZWlu
Yy5jb20wHhcNMTMxMDI4MTQwNTI4WhcNMTYwNzI0MTQwNTI4WjCBmzELMAkGA1UE
BhMCVUExEzARBgNVBAgMCktoYXJraXZza2ExEDAOBgNVBAcMB0toYXJraXYxEjAQ
BgNVBAoMCVNvZnRTZXJ2ZTESMBAGA1UECwwJRW1lcmdpbmdBMRcwFQYDVQQDDA5Q
ZXRybyBLb3JpYWtpbjEkMCIGCSqGSIb3DQEJARYVcGtvckBzb2Z0c2VydmVpbmMu
Y29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA16oqqZ0RAHZ2t/fa
PTNb9gSsJEQFgYVH9Uds/MFpae53F/ca4CPrPVr9425hM22Dv6eP7hF+lD0PtRfy
npjoppbPCiGRFkhKtgb9YqT/hJ1Vf1bB0ga875wJqCK8sVC3Q832WyTuqw1e+lKP
ob/5B10CZ2xpkd58UjT2BZTq86p/qpgFOOA0McbmoeIvmgDhOCYN0plM/PWfEaUn
gAKb0Uql9SJviz0NhmdbGGSMRJnsUQhOW5bqlemvd9FbfsTrWkTyuWVVxNUGqO0I
90v/su3LymjTUpoOstxtG870GBQghl8KwrTSpHub8VNkFi4TYw6+GJMwEq7D/7xr
zVbJfQIDAQABo1AwTjAdBgNVHQ4EFgQUtmsKPN/P2PrV2SOsvWsAwo/OQUowHwYD
VR0jBBgwFoAUtmsKPN/P2PrV2SOsvWsAwo/OQUowDAYDVR0TBAUwAwEB/zANBgkq
hkiG9w0BAQUFAAOCAQEADpz3u1hgZPeHxFGyqq/GrFl5432zf/YEFrpNisO8T0BA
10fGofN9EeS6qCN2mkKzK1+pepzJ+JieTzKk4Tjx8tzuonw8r7FWtHK2Yc6teBwl
9fZjky4MivUdk6RgZPFk0rVxY1tjfTl4zK/46VpO5oQJJQrzQRzc+JUSpFnAC7m8
M8qlWVl1k2bj21WVAFghtbrDaxsLlvssgxdZfSUw5554jBaxDhwXOwDEuicQgioK
QZkp0GB30L6p/c4++SdQTfk7oZM3/rsd5fZe8JtAri4RBta/dM+aMEorXEwmJx1m
p1laLSZ/K9QjcKeGQ7tYUR7jcuD0d+8FYmfzTBA3kw==
-----END CERTIFICATE-----",
    :idp_cert_fingerprint           => "F6:17:4C:3C:3B:8F:6D:26:5B:8A:0D:C0:EC:E2:B2:EA:80:59:44:A2",
    :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end
