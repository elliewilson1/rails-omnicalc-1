class CalculatorController < ApplicationController
  def home
    render({ :template => "calculator_templates/home" })
  end
end
