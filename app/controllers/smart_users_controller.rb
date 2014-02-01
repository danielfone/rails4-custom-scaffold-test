class SmartUsersController < ApplicationController
  before_action :set_smart_user, only: [:show, :edit, :update, :destroy]

  # GET /smart_users
  # GET /smart_users.json
  def index
    @smart_users = SmartUser.all
  end

  # GET /smart_users/1
  # GET /smart_users/1.json
  def show
  end

  # GET /smart_users/new
  def new
    @smart_user = SmartUser.new
  end

  # GET /smart_users/1/edit
  def edit
  end

  # POST /smart_users
  # POST /smart_users.json
  def create
    @smart_user = SmartUser.new(smart_user_params)

    respond_to do |format|
      if @smart_user.save
        format.html { redirect_to @smart_user, notice: 'Smart user was successfully created.' }
        format.json { render action: 'show', status: :created, location: @smart_user }
      else
        format.html { render action: 'new' }
        format.json { render json: @smart_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smart_users/1
  # PATCH/PUT /smart_users/1.json
  def update
    respond_to do |format|
      if @smart_user.update(smart_user_params)
        format.html { redirect_to @smart_user, notice: 'Smart user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @smart_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smart_users/1
  # DELETE /smart_users/1.json
  def destroy
    @smart_user.destroy
    respond_to do |format|
      format.html { redirect_to smart_users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smart_user
      @smart_user = SmartUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smart_user_params
      params.require(:smart_user).permit(:name, :pass, :user_type_id)
    end
end
