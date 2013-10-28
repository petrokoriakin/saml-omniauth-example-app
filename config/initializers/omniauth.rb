OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
    :assertion_consumer_service_url => "http://some-test.in.ua/users/auth/saml",
    :issuer                         => "https://some-test-in-ua-dev-ed.my.salesforce.com",
    :idp_sso_target_url             => "https://some-test-in-ua-dev-ed.my.salesforce.com/idp/endpoint/HttpRedirect",
    :idp_cert                       => "-----BEGIN CERTIFICATE-----
MIIErDCCA5SgAwIBAgIOAUHGHpVQAAAAAE1mlAkwDQYJKoZIhvcNAQEFBQAwgZAx
KDAmBgNVBAMMH1NlbGZTaWduZWRDZXJ0XzE3T2N0MjAxM18xMTEzMTMxGDAWBgNV
BAsMDzAwRGIwMDAwMDAwYkFMUzEXMBUGA1UECgwOU2FsZXNmb3JjZS5jb20xFjAU
BgNVBAcMDVNhbiBGcmFuY2lzY28xCzAJBgNVBAgMAkNBMQwwCgYDVQQGEwNVU0Ew
HhcNMTMxMDE3MTExMzE1WhcNMTUxMDE3MTExMzE1WjCBkDEoMCYGA1UEAwwfU2Vs
ZlNpZ25lZENlcnRfMTdPY3QyMDEzXzExMTMxMzEYMBYGA1UECwwPMDBEYjAwMDAw
MDBiQUxTMRcwFQYDVQQKDA5TYWxlc2ZvcmNlLmNvbTEWMBQGA1UEBwwNU2FuIEZy
YW5jaXNjbzELMAkGA1UECAwCQ0ExDDAKBgNVBAYTA1VTQTCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAKlMfLHwjw4T16bqSrgxnjIqZJ6gziE1VevkH9Vk
ztXWEWyDiMVFkuJvdKKG0CBYDnrOfV/gNb2sqXjXs0zGE/2riwp9EzmZFWreJwql
DQhOsgCoVykja7PyMt6OxQ7teDNc1pOyUzVJYSAWpsqwCHSqP6w6U8NMdPeWRvvt
00vs6MgIzrcB48UZBmEf8SiARapNw6ynJisFd9nzufBq9Q3HPZZQiIkqXGRaVx8Z
lVBKzdBdOI4aYWbl69Rhok+MU4EfRmEIRVf+BrH9wBc5sq0Sc0xoH9NS5gw1m7lI
ipiHh6nHQB31ArhEhBDOruAio4aV7qB3js19467cV0kNlV0CAwEAAaOCAQAwgf0w
HQYDVR0OBBYEFD6/pEKdyENF8v6or3CkQ4Y7wNbXMIHKBgNVHSMEgcIwgb+AFD6/
pEKdyENF8v6or3CkQ4Y7wNbXoYGWpIGTMIGQMSgwJgYDVQQDDB9TZWxmU2lnbmVk
Q2VydF8xN09jdDIwMTNfMTExMzEzMRgwFgYDVQQLDA8wMERiMDAwMDAwMGJBTFMx
FzAVBgNVBAoMDlNhbGVzZm9yY2UuY29tMRYwFAYDVQQHDA1TYW4gRnJhbmNpc2Nv
MQswCQYDVQQIDAJDQTEMMAoGA1UEBhMDVVNBgg4BQcYelVMAAAAATWaUCTAPBgNV
HRMBAf8EBTADAQH/MA0GCSqGSIb3DQEBBQUAA4IBAQCEvNB8B58K8M1DQS17Dm0h
rDG17go8nq/Pr+Ke7p216CWL0VG4WcDAM5sRUxfHL2Go9P97NwLfU/grc4elZ3Q7
X5DEw7+2/Ke/PED1YavjWzMSigt1ParxyynaL3upuP/TP/Zl+h7uAoGM1GTA0449
w1yrnb/bibERm7bDn8WGr7i54nwIc2SFNfAe4N6RxndOQuG/Cv5Cj1snZhj+HDzf
s1UobnKcUIXBdEnPw5GEAjlnTW/PBja26ZQftTOWn4sfDOTNdGW1lpY1zFGmxa/G
8Hv2cZzpdJOSZf0r6B+Na7gDZZWQ5bwCpsKDOFEH4emoHhxR/QjrAziUp/dFfTfN

-----END CERTIFICATE-----",
    :idp_cert_fingerprint           => "C=USA, ST=CA, L=San Francisco, O=Salesforce.com, OU=00Db0000000bALS, CN=SelfSignedCert_17Oct2013_111313",
    :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end
