class Patient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def self.all
  @@all
end

def appointments
  Appointment.all.select {|x| x.patient == self}
end


end
