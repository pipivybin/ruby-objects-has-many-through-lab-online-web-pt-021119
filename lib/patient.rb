class Patient

@@all = []

attr_reader :name

def initialize(name)
  @name = name
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end




end
