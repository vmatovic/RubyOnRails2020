class User < ApplicationRecord
    has_secure_password
    has_many :microposts, dependent: :destroy
    has_many :sales
    belongs_to :country, optional: true
    before_save { self.email = email.downcase }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :password, presence: true, length: { minimum: 6 }
    validates :name,  presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
    
    attr_accessor :remember_token
  
     # Returns the hash digest of the given string.
      def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end
    
      # Returns a random token.
      def User.new_token
        SecureRandom.urlsafe_base64
      end
    
      def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
      end
      
      # Forgets a user.
      def forget
        update_attribute(:remember_digest, nil)
      end
      
      # Returns true if the given token matches the digest.
      def authenticated?(remember_token)
        #tk = BCrypt::Password.new("$2a$10$3.D6D2htbiRrezmZUhePV.gaQlc3ZjFYD9hv43khN5eWP5y8BGUXG")
        #puts tk
        tk = BCrypt::Password.new(remember_digest)
        tk.is_password?(remember_token)
      end
end
