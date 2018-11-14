class User < ApplicationRecord
  validates_presence_of :username, :session_token
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  before_initialize :ensure_session_token

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)
    BCrypt::Password.new(user.password_digest).is_password?(password)
  end


  def ensure_session_token
    # we must be sure to use the ||= operator instead of = or ||, otherwise
    # we will end up with a new session token every time we create
    # a new instance of the User class. This includes finding it in the DB!
    self.session_token ||= self.class.generate_session_token
  end
end
