CarrierWave.configure do|config|
 config.fog_credentials = {
  provider:              'AWS',
  aws_access_key_id:     'AWS_ACCESS_KEY',
  aws_secret_access_key: 'AWS_SECRET_KEY',
  region:                'region-name',
  host:                  's3.example.com',
  endpoint:              'https://s3.example.com'
 }
 config.fog_directory = 'name of the bucket'
 config.fog_public = 'false'
 config.fog_attributes = {'Cache-Control' => "max-age=#{365.to_i}" }
end
