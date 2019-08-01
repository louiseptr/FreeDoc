class Specialty < ApplicationRecord
  has_many :doctorsspecialty
  has_many :doctors, through: :doctorsspecialty
end
