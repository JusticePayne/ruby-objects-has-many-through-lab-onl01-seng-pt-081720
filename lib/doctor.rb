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

  def patients
    appointments.collect { |appointment| appointment.patient }
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
end 