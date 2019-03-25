require 'pry'

class Doctor

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(date, patient)
  binding.pry
  Appointment.new(date, self, patient)
end

def appointments
  Appointment.all.select {|x| x.doctor == self}
end

def patients
  appointments.collect {|x| x.patient }
  binding.pry
end

end
