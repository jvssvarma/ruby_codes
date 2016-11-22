require 'openssl'
require 'json'

class CoinbaseWallet
  def initialize(key, secret)
    @key = key
    @secret = secret
  end

  def signature(request_path='', body='', timestamp=nil, method='GET')
    body = body.to_json if body.is_a?(Hash)
    timestamp = Time.now.to_i if !timestamp

    message = "#{timestamp}#{method}#{request_path}#{body}"

    # create a sha256 hmac with the secret
    hash = OpenSSL::HMAC.hexdigest('sha256', @secret, message)
  end
end
