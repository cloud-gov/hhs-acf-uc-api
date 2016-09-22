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

  def self.serialize_into_session(o)
    ''
  end

  def self.http_authenticatable
    false
  end
end
