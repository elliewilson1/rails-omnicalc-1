class CalculatorController < ApplicationController
  def home
    render({ :template => "calculator_templates/square_new" })
  end
  def square_new
    render({ :template => "calculator_templates/square_new" })
  end
  def square_result
    @the_num = params.fetch("user_number")

    @the_result = @the_num.to_f ** 2

    render({ :template => "calculator_templates/square_result" })
  end
  def square_root_new
    render({ :template => "calculator_templates/square_root_new" })
  end
  def square_root_result
    @the_num = params.fetch("user_number")

    @the_result = @the_num.to_f ** 0.5

    render({ :template => "calculator_templates/square_root_result" })
  end
  def payment_new
    render({ :template => "calculator_templates/payment_new" })
  end
  def payment_result
    @APR = params.fetch("APR").to_f

    @user_APR = @APR.to_fs(:percentage, {:precision => 4})
    
    @rate = @APR / 1200
  
    @years = params.fetch("years").to_i
  
    @periods = @years * 12
  
    @principal = params.fetch("principal").to_f
  
    @user_principal = @principal.to_fs(:currency)
  
    @denominator = 1 - (1 + @rate) ** -@periods
  
    @numerator = @rate * @principal
  
    @payment = @numerator / @denominator
  
    @the_result = @payment.to_fs(:currency)
    
    render({ :template => "calculator_templates/payment_result" })
  end
  def random_new
    render({ :template => "calculator_templates/random_new" })
  end
  def random_result
    @the_min = params.fetch("user_min").to_f

    @the_max = params.fetch("user_max").to_f

    @the_result = rand(@the_min..@the_max)

    render({ :template => "calculator_templates/random_result" })
  end
end
