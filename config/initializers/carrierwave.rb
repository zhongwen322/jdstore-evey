CarrierWave.configure do|config|
  config.fog_provider = 'fog/aws'
 config.fog_credentials = {
  provider:              'AWS',
  aws_access_key_id:     'AKIAJD4UZGSAMIFP7H2Q',
  aws_secret_access_key: 'VmOJ1PmBqMWMbCtltsyiiKV7Pg64a0y97WM9oVlY',
  region:                'US West (N. California)',
  host:                  's3.example.com',
  endpoint:              'http://seanlinzhongwen.s3-website-us-west-1.amazonaws.com'
 }
 config.fog_directory = 'seanlinzhongwen'
 config.fog_public = 'false'
 config.fog_attributes = {'Cache-Control' => "max-age=#{365.to_i}" }
end
