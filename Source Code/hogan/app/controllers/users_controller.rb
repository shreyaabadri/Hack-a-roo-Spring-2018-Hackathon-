class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    # @user_informations = UserInformation.all
    # unless current_user.admin?
      @user_informations = UserInformation.all
      if (params['type'].to_s == 'Attendance')
        @user_informations = @user_informations.select{|x| x.avg_score < 95}
      elsif (params['type'].to_s == 'Student Growth')
        @user_informations = @user_informations.select{|x| x.avg_score < 95}
        @user_informations = @user_informations.select{|x| x.achievement == 'Below Basic'}
      end
    # end
  end

  def show
    raise CanCan::AccessDenied if ((@user.department_id != current_user.department_id) && current_user.teacher?)
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :reg_number, :phone, :year_of_adm, :department_id)
    end
end
