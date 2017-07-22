class DeletedCompaniesController < ApplicationController
  before_action :set_deleted_company, only: [:show, :edit, :update, :destroy]

  # GET /deleted_companies
  # GET /deleted_companies.json
  def index
    @deleted_companies = DeletedCompany.all
  end

  # GET /deleted_companies/1
  # GET /deleted_companies/1.json
  def show
  end

  # GET /deleted_companies/new
  def new
    @deleted_company = DeletedCompany.new
  end

  # GET /deleted_companies/1/edit
  def edit
  end

  # POST /deleted_companies
  # POST /deleted_companies.json
  def create
    @deleted_company = DeletedCompany.new(deleted_company_params)

    respond_to do |format|
      if @deleted_company.save
        format.html { redirect_to @deleted_company, notice: 'Deleted company was successfully created.' }
        format.json { render :show, status: :created, location: @deleted_company }
      else
        format.html { render :new }
        format.json { render json: @deleted_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deleted_companies/1
  # PATCH/PUT /deleted_companies/1.json
  def update
    respond_to do |format|
      if @deleted_company.update(deleted_company_params)
        format.html { redirect_to @deleted_company, notice: 'Deleted company was successfully updated.' }
        format.json { render :show, status: :ok, location: @deleted_company }
      else
        format.html { render :edit }
        format.json { render json: @deleted_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deleted_companies/1
  # DELETE /deleted_companies/1.json
  def destroy
    @deleted_company.destroy
    respond_to do |format|
      format.html { redirect_to deleted_companies_url, notice: 'Deleted company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deleted_company
      @deleted_company = DeletedCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deleted_company_params
      params.require(:deleted_company).permit(:name, :activity_id, :contact, :number, :email, :address, :web, :status_id, :member_id, :event_id, :allowed, :note, :old_id, :reason, :deleted_by_id)
    end
end
