require "uri"
require "base64"

class GoogleMapsAPI::Core::URISigner
  def self.sign(uri, client, key, channel = nil)
    uri = URI(URI.encode(uri))
    path = "#{uri.path}?#{uri.query}&client=#{client}"
    path << "&channel=#{channel}" if channel
    URI("#{uri.scheme}://#{uri.host}#{path}&signature=#{signature(path, key)}")
  end

  private

  def self.signature(string, key)
    raw_private_key = url_safe_base64_decode(key)
    digest = OpenSSL::Digest.new('sha1')
    raw_signature = OpenSSL::HMAC.digest(digest, raw_private_key, string)
    url_safe_base64_encode(raw_signature)
  end

  def self.url_safe_base64_decode(base64_string)
    Base64.decode64(base64_string.tr('-_', '+/'))
  end

  def self.url_safe_base64_encode(raw)
    Base64.encode64(raw).tr('+/', '-_').strip
  end
end
