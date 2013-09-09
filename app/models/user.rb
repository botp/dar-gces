class User < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # validates :password, length: { minimum: 8 }
  has_secure_password
  before_save { self.email = email.downcase }

  validate :password_format
  private
  def password_format
    # pw = self.password
    unless has_one_letter = password =~ /[a-zA-Z]/
      errors.add(:password, "must have at least one letter. you entered: #{password}")
      return false
    end
    unless contain_special_characters = password =~ /[\~\`\!\@\#\$\%\*\(\)\_\-\+\=\|\ ]/
      errors.add(:password, "must have at least one special character. you entered: #{password}")
      return false
    end

    unless at_least_8_chars_length = (password.length >= 8)
      errors.add(:password, "must be at least 8 characters in length. you entered: #{password}")
      return false
    end

    true    
  end
end

