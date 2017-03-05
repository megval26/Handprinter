class User < ActiveRecord::Base
  require 'bcrypt'

  attr_accessor :password
  before_save :prepare_password
  
  # Relationships
  # -----------------------------
  has_many :action_ideas
  has_many :models

  # Validations
  # -----------------------------
  # make sure required fields are present
  validates_presence_of :username
  validates_uniqueness_of :username, :email, allow_blank: true
  validates_format_of :username, with: /\A[-\w\._@]+\z/i, allow_blank: true, message: "should only contain letters, numbers, or .-_@"
  # Not allowing for .uk, .ca, etc. because this is currently a USA-based application
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"
  validates_presence_of :password, on: :create
  validates_confirmation_of :password, message: "doesn't match confirmation"
  validates_length_of :password, minimum: 4, allow_blank: true
  # if role is given, must be one of the choices given (no hacking this field)
  validates_inclusion_of :role, in: %w[admin mod member], message: "is not an option", allow_blank: true

  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login) || find_by_email(login)
    return user if user && user.password_hash == user.encrypt_password(pass)
  end

  def encrypt_password(pass)
    BCrypt::Engine.hash_secret(pass, password_salt)
  end

  #Private methods to execute the custom validations
  # -----------------------------
  private

  def prepare_password
    unless password.blank?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = encrypt_password(password)
    end
  end
end
