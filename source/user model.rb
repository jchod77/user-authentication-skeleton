class User < ActiveRecord::Base
  include BCrypt

  has_secure_password


  validates     :username, presence: true, uniqueness: true
  validates     :email, presence: true, uniqueness: true
  # validates     :password, presence: true

  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
