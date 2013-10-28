OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :saml,
    :assertion_consumer_service_url => "http://some-test.in.ua/users/auth/saml",
    :issuer                         => "https://some-test-in-ua-dev-ed.my.salesforce.com",
    :idp_sso_target_url             => "https://some-test-in-ua-dev-ed.my.salesforce.com/idp/endpoint/HttpRedirect",
    :idp_cert_fingerprint           => "C=USA, ST=CA, L=San Francisco, O=Salesforce.com, OU=00Db0000000bALS, CN=SelfSignedCert_17Oct2013_111313",
    :name_identifier_format         => "urn:oasis:names:tc:SAML:1.1:nameid-format:emailAddress"
end
