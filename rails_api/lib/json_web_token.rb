require 'jwt'

class JsonWebToken
  class << self
    ALGORITHM = 'HS256'

    def encode(payload, exp = 30.days.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, auth_secret, ALGORITHM)
    end

    def decode(token)
      body = JWT.decode(token, auth_secret, true, algorithm: ALGORITHM).first
      HashWithIndifferentAccess.new body
    rescue
      nil
    end

    def auth_secret
      ENV['AUTH_SECRET']
    end
  end
end