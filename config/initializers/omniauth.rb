OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'FewpVyV8VOldqQBHCEpcvDpRf', 'hWNzkhpYkWb0dGp62AkPHsIgZs5gt721QwwXgYfkvXk2HCifXe', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end