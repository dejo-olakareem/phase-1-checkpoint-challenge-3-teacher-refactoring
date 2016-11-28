require_relative 'modules'

class Teacher
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @phase = options.fetch(:phase,3)
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @target_raise = 1000
  end

  include All


  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end


  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

end
