class FirmsController < ApplicationController
  def index
    @firms = Firm.all
  end
  
  def new
    @firm = Firm.new
  end
  
  def create
    @firm = Firm.new(params[:firm])
    @firm.save
    redirect_to :action => 'index'
  end
  
  def destroy
    @firm = Firm.find(params[:id])
    @firm.destroy
    redirect_to :action => 'index'
  end
  

  
end
