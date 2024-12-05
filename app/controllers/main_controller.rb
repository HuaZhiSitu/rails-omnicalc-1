class MainController < ApplicationController
 def squarehome
    render({template:"calculate_templates/square"})
 end
 
  def squarecalc
    @number=params[:number].to_f
    @square = @number**2
  render({template:"calculate_templates/squareresults"})
  end

  def squareroothome
    render({template:"calculate_templates/squareroot"})
  end

  def squarerootresults
    @number=params[:number].to_f
    @squareroot = @number**0.5
    render({template:"calculate_templates/squarerootresults"})
  end

  def paymenthome
    render({template:"calculate_templates/paymenthome"})
  end

  def paymentresults
    @r=(params[:user_apr].to_f / 100/12)
    @n=params[:user_years].to_i * 12
    @pv=params[:user_pv].to_f
    @numerator=@r*@pv
    @denominator=1-(1+@r)**-@n
    @payment=(@numerator/@denominator).round(2)
    @interest_rate=(@r*12*100)
    render({template:"calculate_templates/paymentresults"})
  
  end

  def randomhome
    render({template:"calculate_templates/randomhome"})
  end
  def randomresults
    @min=params[:min].to_f
    @max=params[:max].to_f
    @result=rand(@min..@max)
    render({template:"calculate_templates/randomresults"})

  end

end
