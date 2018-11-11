require 'jwt'

class JsonWebToken
  def self.encode(payload)
    payload = payload.dup
    payload['exp'] = 24.hours.from_now.to_i
    JWT.encode(payload, Rails.application.secret_key_base)
  end

  def self.decode(token)
    JWT.decode(token, Rails.application.secret_key_base)
  end
end
