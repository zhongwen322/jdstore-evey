CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJD4UZGSAMIFP7H2Q",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
      config.fog_directory  = "seanlinzhongwen"
end
