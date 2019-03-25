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

def patient
  Appointment.all.collect {|x| x.patient}
end

def doctor(name)
  Appointment.all.collect {|x| x.doctor}
end

end
