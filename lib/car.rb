class Car
  attr_reader :name, :monthly_payment, :loan_length, :make, :model, :color,
  def initialize(name, monthly_payment, loan_length)
    @name = name
    @make = name.split[0]
    @model = name.split[1]
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = nil
  end

  def total_cost
    @monthly_payment  * @loan_length
  end

  def paint!(color)
    @color = color
  end

end