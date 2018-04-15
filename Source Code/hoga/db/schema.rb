# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180415204800) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_data", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_informations", force: :cascade do |t|
    t.string "residentschoolcode"
    t.string "stateid"
    t.string "districtentrydate"
    t.string "user_id"
    t.string "suffix"
    t.string "dateofbirth"
    t.string "studentgradelevel"
    t.string "residencystatus"
    t.string "entrydate"
    t.string "entrycode"
    t.string "exitdate"
    t.string "exitcode"
    t.string "exitdestdistrictcode"
    t.string "exitdestschoolcode"
    t.string "exitdestcomment"
    t.string "wk1att"
    t.string "wk1abs"
    t.string "wk1total"
    t.string "wk1average"
    t.string "wk2att"
    t.string "wk2abs"
    t.string "wk2total"
    t.string "wk2average"
    t.string "wk2avatt"
    t.string "wk3att"
    t.string "wk3abs"
    t.string "wk3total"
    t.string "wk3average"
    t.string "wk3attav"
    t.string "wk4att"
    t.string "wk4abs"
    t.string "wk4total"
    t.string "wk4average"
    t.string "wk4attav"
    t.string "wk5att"
    t.string "wk5abs"
    t.string "wk5total"
    t.string "wk5average"
    t.string "wk5attav"
    t.string "wk6att"
    t.string "wk6abs"
    t.string "wk6total"
    t.string "wk6average"
    t.string "wk6attav"
    t.string "wk7att"
    t.string "wk7abs"
    t.string "wk7total"
    t.string "wk7average"
    t.string "wk7attav"
    t.string "wk8att"
    t.string "wk8abs"
    t.string "wk8total"
    t.string "wk8average"
    t.string "wk8attav"
    t.string "wk9att"
    t.string "wk9abs"
    t.string "wk9total"
    t.string "wk9average"
    t.string "wk9attav"
    t.string "wk10att"
    t.string "wk10abs"
    t.string "wk10total"
    t.string "wk10average"
    t.string "wk10attav"
    t.string "wk11att"
    t.string "wk11abs"
    t.string "wk11total"
    t.string "wk11average"
    t.string "wk11attav"
    t.string "wk12att"
    t.string "wk12abs"
    t.string "wk12total"
    t.string "wk12average"
    t.string "wk12attav"
    t.string "wk13att"
    t.string "wk13abs"
    t.string "wk13total"
    t.string "wk13average"
    t.string "wk13attav"
    t.string "wk14att"
    t.string "wk14abs"
    t.string "wk14total"
    t.string "wk14average"
    t.string "wk14attav"
    t.string "wk15att"
    t.string "wk15abs"
    t.string "wk15total"
    t.string "wk15average"
    t.string "wk15attav"
    t.string "wk16att"
    t.string "wk16abs"
    t.string "wk16total"
    t.string "wk16average"
    t.string "wk16attav"
    t.string "wk17att"
    t.string "wk17abs"
    t.string "wk17total"
    t.string "wk17average"
    t.string "wk17attav"
    t.string "wk18att"
    t.string "wk18abs"
    t.string "wk18total"
    t.string "wk18average"
    t.string "wk18attav"
    t.string "wk19att"
    t.string "wk19abs"
    t.string "wk19total"
    t.string "wk19average"
    t.string "wk19attav"
    t.string "wk20att"
    t.string "wk20abs"
    t.string "wk20total"
    t.string "wk20average"
    t.string "wk20attav"
    t.string "wk21att"
    t.string "wk21abs"
    t.string "wk21total"
    t.string "wk21average"
    t.string "wk21attav"
    t.string "wk22att"
    t.string "wk22abs"
    t.string "wk22total"
    t.string "wk22average"
    t.string "wk22attav"
    t.string "wk23att"
    t.string "wk23abs"
    t.string "wk23total"
    t.string "wk23average"
    t.string "wk23attav"
    t.string "wk24att"
    t.string "wk24abs"
    t.string "wk24total"
    t.string "wk24average"
    t.string "wk24attav"
    t.string "wk25att"
    t.string "wk25abs"
    t.string "wk25total"
    t.string "wk25average"
    t.string "wk25attav"
    t.string "wk26att"
    t.string "wk26abs"
    t.string "wk26total"
    t.string "wk26average"
    t.string "wk26attav"
    t.string "wk27att"
    t.string "wk27abs"
    t.string "wk27total"
    t.string "wk27average"
    t.string "wk27attav"
    t.string "wk28att"
    t.string "wk28abs"
    t.string "wk28total"
    t.string "wk28average"
    t.string "wk28attav"
    t.string "wk29att"
    t.string "wk29abs"
    t.string "wk29total"
    t.string "wk29average"
    t.string "wk29attav"
    t.string "wk30att"
    t.string "wk30abs"
    t.string "wk30total"
    t.string "wk30average"
    t.string "wk30attav"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "achievement", default: ""
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "school_name", default: "", null: false
    t.integer "student_id", default: 0, null: false
    t.integer "ps_id", default: 0, null: false
    t.string "ssn", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
