class TruckJobsController < ApplicationController
  before_action :set_truck_job, only: %i[ show edit update destroy ]

  # GET /truck_jobs or /truck_jobs.json
  def index
    @truck_jobs = TruckJob.all
  end

  # GET /truck_jobs/1 or /truck_jobs/1.json
  def show
  end

  # GET /truck_jobs/new
  def new
    @truck_job = TruckJob.new
  end

  # GET /truck_jobs/1/edit
  def edit
  end

  # POST /truck_jobs or /truck_jobs.json
  def create
    @truck_job = TruckJob.new(truck_job_params)

    respond_to do |format|
      if @truck_job.save
        format.html { redirect_to truck_job_url(@truck_job), notice: "Truck job was successfully created." }
        format.json { render :show, status: :created, location: @truck_job }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truck_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_jobs/1 or /truck_jobs/1.json
  def update
    respond_to do |format|
      if @truck_job.update(truck_job_params)
        format.html { redirect_to truck_job_url(@truck_job), notice: "Truck job was successfully updated." }
        format.json { render :show, status: :ok, location: @truck_job }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truck_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_jobs/1 or /truck_jobs/1.json
  def destroy
    @truck_job.destroy

    respond_to do |format|
      format.html { redirect_to truck_jobs_url, notice: "Truck job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_job
      @truck_job = TruckJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_job_params
      params.require(:truck_job).permit(:truck_id, :job_id)
    end
end
