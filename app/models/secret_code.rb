class SecretCode < ApplicationRecord
  belongs_to :user, inverse_of: :secret_code, required: false
end
