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

def appointments
  Appointment.all.select {|x| x.doctor == self}
end

def patients
  appointments.collect {|x| x.patient }
end
