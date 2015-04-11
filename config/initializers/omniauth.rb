OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '303719101985-ano2nbnc8026ejf17tmlbvcbmms9fdq5.apps.googleusercontent.com', 'DiZSN2lrJ0FTnPNYFulq1CYw', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
  provider :facebook, '127775823911078', 'ffe1c3916b0f76ec6a00afb6470959bd'
  provider :linkedin, "78fh9476uz1qjh", "J7HBZkesyJqPkRNX", :scope => 'r_fullprofile r_emailaddress r_network', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
end