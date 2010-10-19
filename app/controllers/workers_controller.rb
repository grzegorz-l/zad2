class WorkersController < ApplicationController
  
  def new
    @firm = Firm.find(params[:id])
    @worker = @firm.workers.build 
  end
  
  def create
    @firm = Firm.find(params[:id])
    @worker = @firm.workers.build(params[:worker])
    @worker.save
  end
  
  def destroy

  end
end
