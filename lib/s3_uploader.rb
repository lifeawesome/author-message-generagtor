require 's3'

class S3Uploader
  @@access_key_id = Rails.application.secrets.access_key_id
  @@secret_access_key = Rails.application.secrets.secret_access_key
  @@bucket_name = ENV['BUCKET_NAME']

  def self.upload name, content
    service = S3::Service.new access_key_id: @@access_key_id, secret_access_key: @@secret_access_key
    bucket = service.buckets.find(@@bucket_name)

    obj = bucket.objects.build(name)
    obj.content = content
    obj.save

    obj.url
  end
end
