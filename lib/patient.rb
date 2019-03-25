class Patient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
  @@all << self
end

def new_appointment(doctor, date)
  Appointment.new(date, doctor, self)
end

def self.all
  @@all
end

def appointments
  Appointment.all.select {|x| x.patient == self}
end

def doctors
  appointments.collect {|x| x.doctor}
end


end
