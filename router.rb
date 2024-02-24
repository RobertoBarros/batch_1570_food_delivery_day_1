class Router

  def initialize(meals_controller, customer_controller)
    @meals_controller = meals_controller
    @customer_controller = customer_controller
  end

  def run
    loop do
      display_options
      option = gets.chomp.to_i
      puts `clear`
      dispatch(option)
    end
  end

  private

  def display_options
    puts '-' * 40
    puts "1. Create Meal"
    puts "2. List Meals"
    puts '-' * 40
    puts "3. Create Customer"
    puts "4. List Customers"
    puts '-' * 40

    puts "Choose an option:"
  end

  def dispatch(option)
    case option
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    when 3 then @customer_controller.add
    when 4 then @customer_controller.list
    end
  end

end
