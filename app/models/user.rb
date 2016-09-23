class User
  include ActiveModel::Validations #required because some before_validations are defined in devise
  extend ActiveModel::Callbacks #required to define callbacks
  extend Devise::Models

  define_model_callbacks :validation #required by Devise

  def initialize(jwt)
    @role = jwt['role']
  end

  def role
    @role
  end

  # There's no session, so don't bother with serialization.
  def self.serialize_into_session(o)
    ''
  end

  # Disable HTTP Basic Auth for this class.
  def self.http_authenticatable
    false
  end

  # ¯\_(ツ)_/¯ - but if this isn't here and the Authorization
  # header isn't set, we get a 500 server error.
  def self.authentication_keys
    [ ]
  end
end
