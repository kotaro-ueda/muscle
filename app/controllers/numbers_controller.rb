class NumbersController < ApplicationController

  def new
    @number = Number.new
  end

  def show
    @number = Number.new
    number = Number.find(params[:id])
    @numbers = Number.result(number.weight,number.parsent)
  end

  def create
    @number = Number.new(number_params)
    if @number.save
      redirect_to "/numbers/#{@number.id}"
    else
      render new
    end
  end 

    private
    def number_params
      params.require(:number).permit(:weight, :parsent)
    end
end