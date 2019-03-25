class Doctor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(date, patient)
  Appointment.new(date, patient, doctor)
end




end
