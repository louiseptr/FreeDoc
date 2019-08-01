class City < ApplicationRecord
  has_many :doctors
  has_many :patients
  has_many :appointments
  has_many :specialties, through: :doctorspecialty
end
