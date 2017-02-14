
CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJK3B6NRTY4DN5H5Q",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
      config.fog_directory  = "seanlinzhongwen123"
end
