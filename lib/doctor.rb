class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    def self.all
        @@all
    end
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
    def appointments
        @appointments = []
        Appointment.all.each do |app|
            if app.doctor == self
                @appointments.push(app)
            end
        end
        @appointments
    end
    def patients
        @patients = []
        Appointment.all.each do |app|
            if app.doctor == self
                @patients.push(app.patient)
            end
        end
        @patients
    end
end