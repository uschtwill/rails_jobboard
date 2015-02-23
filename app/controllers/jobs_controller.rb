class JobsController < ApplicationController



	def index
		@jobs = Job.page(params[:page]).per(5)
	end

	def show
		@job = Job.find(params[:id])
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new(params.require(:job).permit(:title, :company, :url, :description))
	  if @job.save
	    redirect_to root_path
	  else
	    render "new"
	  end
	end

	 def edit
	 	@job = Job.find(params[:id])
   end

	 def update

	 	@job = Job.find(params[:id])

    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'The job listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

	def delete
	end

	private
 # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:title, :company, :url, :description, :salary, :working_hours, :location, :department, :team, :responsibility, :job_description, :requirements, :perks, :email, :phone, :application)
  end

end
