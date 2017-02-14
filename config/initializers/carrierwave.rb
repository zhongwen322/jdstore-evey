CarrierWave.configure do|config|
 config.fog_credentials = {
  provider:              'AWS',
  aws_access_key_id:     'XXX',
  aws_secret_access_key: 'YYY',
  region:                'us-west-1',
  host:                  's3.example.com',
  endpoint:              'https://s3.example.com'
 }
 config.fog_directory = 'seanlinzhongwen123'
 config.fog_public = 'false'
 config.fog_attributes = {'Cache-Control' => "max-age=#{365.to_i}" }
end
