CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => 'XXX',
      :aws_secret_access_key  => 'YYY',
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
      config.fog_directory  = "seanlinzhongwen123"
end
