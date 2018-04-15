class UserInformationsController < ApplicationController
  before_action :set_user_information, only: [:show, :edit, :update, :destroy]

  # GET /user_informations
  # GET /user_informations.json
  def index
    # if current_user.admin?
      @user_informations = UserInformation.all
    # else
      # @user_informations = current_user.user_informations
    # end
  end

  # GET /user_informations/1
  # GET /user_informations/1.json
  def show
  end

  # GET /user_informations/new
  def new
    @user_information = UserInformation.new
  end

  # GET /user_informations/1/edit
  def edit
  end

  # POST /user_informations
  # POST /user_informations.json
  def create
    file = Roo::Spreadsheet.open(user_information_params['picture'])
    products_sheet = file.sheet(file.sheets.first)
    # row = products_sheet.row(2)
    (2..products_sheet.count).each do |index|
      row = products_sheet.row(index)
      user_id = row[3]#User.where(student_id: row[3])[0].try(:id)
      next unless user_id
      data = {'residentschoolcode'=>row[0], 'stateid'=>row[1], 'districtentrydate'=>row[2], 'user_id'=> user_id,
        'suffix'=>row[4], 'dateofbirth'=>row[5], 'studentgradelevel'=>row[6], 'residencystatus'=>row[7],
        'entrydate'=>row[8], 'entrycode'=>row[9], 'exitdate'=>row[10], 'exitcode'=>row[11],
        'exitdestdistrictcode'=>row[12], 'exitdestschoolcode'=>row[13], 'exitdestcomment'=>row[14],
        'wk1att'=>row[15], 'wk1abs'=>row[16], 'wk1total'=>row[17], 'wk1average'=>row[18], 'wk2att'=>row[19],
        'wk2abs'=>row[20], 'wk2total'=>row[21], 'wk2average'=>row[22], 'wk2avatt'=>row[23], 'wk3att'=>row[24],
        'wk3abs'=>row[25], 'wk3total'=>row[26], 'wk3average'=>row[27], 'wk3attav'=>row[28], 'wk4att'=>row[29],
        'wk4abs'=>row[30], 'wk4total'=>row[31], 'wk4average'=>row[32], 'wk4attav'=>row[33], 'wk5att'=>row[34],
        'wk5abs'=>row[35], 'wk5total'=>row[36], 'wk5average'=>row[37], 'wk5attav'=>row[38], 'wk6att'=>row[39],
        'wk6abs'=>row[40], 'wk6total'=>row[41], 'wk6average'=>row[42], 'wk6attav'=>row[43], 'wk7att'=>row[44],
        'wk7abs'=>row[45], 'wk7total'=>row[46], 'wk7average'=>row[47], 'wk7attav'=>row[48], 'wk8att'=>row[49],
        'wk8abs'=>row[50], 'wk8total'=>row[51], 'wk8average'=>row[52], 'wk8attav'=>row[53], 'wk9att'=>row[54],
        'wk9abs'=>row[55], 'wk9total'=>row[56], 'wk9average'=>row[57], 'wk9attav'=>row[58], 'wk10att'=>row[59],
        'wk10abs'=>row[60], 'wk10total'=>row[61], 'wk10average'=>row[62], 'wk10attav'=>row[63], 'wk11att'=>row[64],
        'wk11abs'=>row[65], 'wk11total'=>row[66], 'wk11average'=>row[67], 'wk11attav'=>row[68], 'wk12att'=>row[69],
        'wk12abs'=>row[70], 'wk12total'=>row[71], 'wk12average'=>row[72], 'wk12attav'=>row[73], 'wk13att'=>row[74],
        'wk13abs'=>row[75], 'wk13total'=>row[76], 'wk13average'=>row[77], 'wk13attav'=>row[78], 'wk14att'=>row[79],
        'wk14abs'=>row[80], 'wk14total'=>row[81], 'wk14average'=>row[82], 'wk14attav'=>row[83], 'wk15att'=>row[84],
        'wk15abs'=>row[85], 'wk15total'=>row[86], 'wk15average'=>row[87], 'wk15attav'=>row[88], 'wk16att'=>row[89],
        'wk16abs'=>row[90], 'wk16total'=>row[91], 'wk16average'=>row[92], 'wk16attav'=>row[93], 'wk17att'=>row[94],
        'wk17abs'=>row[95], 'wk17total'=>row[96], 'wk17average'=>row[97], 'wk17attav'=>row[98], 'wk18att'=>row[99],
        'wk18abs'=>row[100], 'wk18total'=>row[101], 'wk18average'=>row[102], 'wk18attav'=>row[103],
        'wk19att'=>row[104], 'wk19abs'=>row[105], 'wk19total'=>row[106], 'wk19average'=>row[107],
        'wk19attav'=>row[108], 'wk20att'=>row[109], 'wk20abs'=>row[110], 'wk20total'=>row[111],
        'wk20average'=>row[112], 'wk20attav'=>row[113], 'wk21att'=>row[114], 'wk21abs'=>row[115],
        'wk21total'=>row[116], 'wk21average'=>row[117], 'wk21attav'=>row[118], 'wk22att'=>row[119],
        'wk22abs'=>row[120], 'wk22total'=>row[121], 'wk22average'=>row[122], 'wk22attav'=>row[123],
        'wk23att'=>row[124], 'wk23abs'=>row[125], 'wk23total'=>row[126], 'wk23average'=>row[127],
        'wk23attav'=>row[128], 'wk24att'=>row[129], 'wk24abs'=>row[130], 'wk24total'=>row[131],
        'wk24average'=>row[132], 'wk24attav'=>row[133], 'wk25att'=>row[134], 'wk25abs'=>row[135],
        'wk25total'=>row[136], 'wk25average'=>row[137], 'wk25attav'=>row[138], 'wk26att'=>row[139],
        'wk26abs'=>row[140], 'wk26total'=>row[141], 'wk26average'=>row[142], 'wk26attav'=>row[143],
        'wk27att'=>row[144], 'wk27abs'=>row[145], 'wk27total'=>row[146], 'wk27average'=>row[147],
        'wk27attav'=>row[148], 'wk28att'=>row[149], 'wk28abs'=>row[150], 'wk28total'=>row[151],
        'wk28average'=>row[152], 'wk28attav'=>row[153], 'wk29att'=>row[154], 'wk29abs'=>row[155],
        'wk29total'=>row[156], 'wk29average'=>row[157], 'wk29attav'=>row[158], 'wk30att'=>row[159],
        'wk30abs'=>row[160], 'wk30total'=>row[161], 'wk30average'=>row[162], 'wk30attav'=>row[163],
        'achievement'=> row[164]}
        @user_information =  UserInformation.find_or_initialize_by(user_id: user_id)
        @user_information.assign_attributes(data)
        @user_information.save!
    end
    
    respond_to do |format|
      # if @user_information.save
        format.html { redirect_to user_informations_path, notice: 'Data was successfully imported.' }
        format.json { render :show, status: :created, location: @user_information }
      # else
      #   format.html { render :new }
      #   format.json { render json: @user_information.errors, status: :unprocessable_entity }
      # end
    end
  end

  # PATCH/PUT /user_informations/1
  # PATCH/PUT /user_informations/1.json
  def update
    respond_to do |format|
      if @user_information.update(user_information_params)
        format.html { redirect_to @user_information, notice: 'User information was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_information }
      else
        format.html { render :edit }
        format.json { render json: @user_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_informations/1
  # DELETE /user_informations/1.json
  def destroy
    @user_information.destroy
    respond_to do |format|
      format.html { redirect_to user_informations_url, notice: 'User information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_information
      @user_information = UserInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_information_params
      params.require(:user_information).permit(:picture)
    end
end
