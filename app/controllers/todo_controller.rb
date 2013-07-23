class TodoController < ApplicationController
	#layout 'standard'

	def index
	end

	def task
		@todo = []
		@todo << "Mop the Floor"
		@todo << "Go to the Store"

	end

	def add_task(addtask)
		#todo << addtask.push (alternative push method)
		@@date = Time.new
		@todo << addtask + @@date.strftime(" - %m/%d/%y (added)")
	end	
   

   def list
   	@tasks = Task.find(:all)
   end

   def show
   	@task = Task.find(params[:id])
   end

   def create
   	@task = Task.new(params[:subject])
      if @task.save
         render :partial => 'task', :object => @task
      end
   end
		
end
