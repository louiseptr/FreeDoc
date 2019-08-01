require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all

100.times do |index|
  City.create(name: Faker::Address.city)
end

100.times do
  specialties_array = ["Gynecologist","Orthopedist","Psychiatrist","Cardiologist"]
  specialties = Specialty.create!(name: specialties_array.sample)
  doctors = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Address.zip_code, city: City.all.sample)
  appointments = Appointment.create!(date: Faker::Date.between(from: 2.days.ago, to: Date.today), name: City.all.sample)
  patients = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, name: City.all.sample)

end