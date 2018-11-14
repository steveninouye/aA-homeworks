class User < ApplicationRecord
  attr_reader :password

  validates_presence_of :username, :session_token
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_initialize :ensure_session_token

# This method takes in a username and a password and returns the user that matches
  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    BCrypt::Password.new(user.password_digest).is_password?(password) ? user : nil
  end

# This is a helper method I like to write that uses SecureRandom::urlsafe_base64 and returns a 16-digit pseudorandom string
  def self.generate_session_token
    SecureRandom::urlsafe_base64(16)
  end

# This method resets the user's session_token and saves the user
  def reset_session_token!
    self.session_token = self.class.generate_session_token
    self.save!
    self.session_token
  end

  def password=(pass)
    @password = pass
    self.password_digest = BCrypt::Password.new(pass)
  end

  def ensure_session_token
    # we must be sure to use the ||= operator instead of = or ||, otherwise
    # we will end up with a new session token every time we create
    # a new instance of the User class. This includes finding it in the DB!
    self.session_token ||= self.class.generate_session_token
  end
end
