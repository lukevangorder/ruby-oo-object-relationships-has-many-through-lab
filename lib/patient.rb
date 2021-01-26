class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end
    def appointments
        @appointments = []
        Appointment.all.each do |app|
            if app.patient == self
                @appointments.push(app)
            end
        end
        @appointments
    end
    def doctors
        @doctors = []
        Appointment.all.each do |app|
            if app.patient == self
                @doctors.push(app.doctor)
            end
        end
        @doctors
    end
end