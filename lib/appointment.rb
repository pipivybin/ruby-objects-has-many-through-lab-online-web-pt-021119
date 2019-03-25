class Appointment

@@all = []

attr_accessor :date, :patient, :doctor

def self.all
  @@all
end

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def patient(name)
  Appointment.all.select {|x| x.patient.name == name}
end

def doctor(name)
  Appointment.all.select {|x| x.doctor.name == name}
end

end
