class Auth

  ALGORITHM = 'HS256'

  def self.encrypt(hash)
    JWT.encode(hash, secret_key, ALGORITHM)
  end

  def self.decode()
    #code
  end

  def self.secret_key
    "8bc48976302c85269d1bf62f36d8ded8fbdbc18dbded6244e2c2e02e63d4291c7a865aeca5dbf24f5ce0468cb5fca0ed9f7772cf3f41e8ab1831e9e02fb389f1"
  end

end
