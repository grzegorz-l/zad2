class WorkersController < ApplicationController
   
   def index
    @firm = Firm.find(params[:firm_id])
    @workers = @firm.workers
   end
   
   def new
    @firm = Firm.find(params[:firm_id])
    @worker = @firm.workers.build
   end
  
   def create
    @firm = Firm.find(params[:firm_id])
    @worker = @firm.workers.build(params[:worker])
    @worker.save    
  end
  
   def destroy
      @firm = Firm.find(params[:firm_id]) 
      @worker = Worker.find(params[:id]) 
      @worker.destroy 
      redirect_to firm_workers_path(@firm) 
   end
end 