class User < ApplicationRecord
  has_many :personnages, dependent: :destroy
end
