# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120906042804) do

  create_table "accessions", :force => true do |t|
    t.integer  "book_id"
    t.string   "accession_no"
    t.string   "order_no"
    t.decimal  "purchase_price"
    t.date     "received"
    t.integer  "received_by"
    t.integer  "supplied_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addbooks", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "mail"
    t.string   "web"
    t.string   "fax"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shortname"
  end

  create_table "addsuppliers", :force => true do |t|
    t.integer  "supplier_id"
    t.string   "lpono"
    t.string   "document"
    t.integer  "quantity"
    t.decimal  "unitcost"
    t.date     "received"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "addressbook_id"
    t.integer  "big_quantity"
    t.integer  "big_unittype"
    t.integer  "small_quantity"
    t.integer  "small_unittype"
    t.integer  "nisbah_quantity"
    t.integer  "received_by"
  end

  create_table "analysis_grades", :force => true do |t|
    t.integer  "course_id"
    t.integer  "class_id"
    t.string   "exam_name"
    t.date     "exam_date"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "exam_paper_name"
    t.integer  "fm_1"
    t.integer  "fm_2"
    t.integer  "fm_3"
    t.integer  "fm_4"
    t.integer  "fm_5"
    t.integer  "fm_6"
    t.integer  "fm_7"
    t.integer  "fm_8"
    t.integer  "fm_9"
    t.integer  "fm_10"
    t.integer  "fm_11"
    t.integer  "fm_12"
    t.integer  "fm_13"
    t.integer  "fm_14"
    t.integer  "fm_15"
    t.integer  "fm_16"
    t.integer  "fm_17"
    t.integer  "fm_18"
    t.integer  "fm_19"
    t.integer  "fm_20"
    t.integer  "fm_21"
    t.integer  "fm_22"
    t.integer  "fm_23"
    t.integer  "fm_24"
    t.integer  "fm_25"
    t.integer  "fm_26"
    t.integer  "fm_27"
    t.integer  "fm_28"
    t.integer  "fm_29"
    t.integer  "fm_30"
    t.integer  "fm_31"
    t.integer  "fm_32"
    t.integer  "fm_33"
    t.integer  "fm_34"
    t.integer  "fm_35"
    t.integer  "fm_36"
    t.integer  "fm_37"
    t.integer  "fm_38"
    t.integer  "fm_39"
    t.integer  "fm_40"
    t.integer  "fm_41"
    t.integer  "fm_42"
    t.integer  "fm_43"
    t.integer  "fm_44"
    t.integer  "fm_45"
    t.integer  "fm_46"
    t.integer  "fm_47"
    t.integer  "fm_48"
    t.integer  "fm_49"
    t.integer  "fm_50"
  end

  create_table "appraisals", :force => true do |t|
    t.integer  "staff_id"
    t.date     "evaldt"
    t.date     "parttwodt"
    t.decimal  "pppquantity"
    t.decimal  "ppkquantity"
    t.decimal  "pppquality"
    t.decimal  "ppkquality"
    t.decimal  "pppontime"
    t.decimal  "ppkontime"
    t.decimal  "pppeffective"
    t.decimal  "ppkeffective"
    t.decimal  "pppknowledge"
    t.decimal  "ppkknowledge"
    t.decimal  "ppprules"
    t.decimal  "ppkrules"
    t.decimal  "pppcommunication"
    t.decimal  "ppkcommunication"
    t.decimal  "pppleader"
    t.decimal  "ppkleader"
    t.decimal  "pppmanage"
    t.decimal  "ppkmanage"
    t.decimal  "pppdiscipline"
    t.decimal  "ppkdisipline"
    t.decimal  "pppproactive"
    t.decimal  "ppkproactive"
    t.decimal  "ppprelate"
    t.decimal  "ppkrelate"
    t.decimal  "pppparttwo"
    t.decimal  "ppkparttwo"
    t.decimal  "ppptotals"
    t.decimal  "ppktotals"
    t.decimal  "ppppercent"
    t.decimal  "ppkpercent"
    t.decimal  "pointsaverage"
    t.integer  "pppyears"
    t.integer  "pppmonths"
    t.text     "pppoverall"
    t.text     "pppadvancemet"
    t.integer  "ppp_id"
    t.date     "pppevaldt"
    t.integer  "ppkyears"
    t.integer  "ppkmonths"
    t.text     "ppkoverall"
    t.integer  "ppk_id"
    t.date     "ppkevaldt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assetcategories", :force => true do |t|
    t.integer  "parent_id"
    t.string   "description"
    t.integer  "cattype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assetlosses", :force => true do |t|
    t.string   "losstype"
    t.decimal  "estvalue"
    t.integer  "asset_id"
    t.integer  "part_id"
    t.integer  "losslocation_id"
    t.datetime "lossdt"
    t.string   "losshow"
    t.integer  "lossstafflast_id"
    t.boolean  "laststaffcase"
    t.boolean  "laststaffstop"
    t.boolean  "poreport"
    t.string   "porepno"
    t.string   "poaction"
    t.string   "ponoreportwhy"
    t.string   "preventpast"
    t.string   "preventfuture"
    t.string   "remarks"
    t.integer  "hod_id"
    t.date     "hodendorsedt"
    t.string   "moneytype"
    t.boolean  "new"
    t.string   "reportcode"
    t.integer  "so_id"
    t.boolean  "sostop"
    t.date     "sostopdt"
    t.string   "soaction"
    t.boolean  "ownerstop"
    t.date     "ownerstopdt"
    t.string   "owneraction"
    t.boolean  "supstop"
    t.date     "supstopdt"
    t.string   "supaction"
    t.boolean  "rulesbroken"
    t.string   "newrule"
    t.integer  "newrule_id"
    t.string   "nrrecommend"
    t.boolean  "surcharge"
    t.decimal  "scvalue"
    t.string   "screason"
    t.integer  "sio_id"
    t.integer  "ssecurity_id"
    t.date     "closedt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assetnums", :force => true do |t|
    t.integer  "asset_id"
    t.string   "assetnumname"
    t.string   "assetadnum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", :force => true do |t|
    t.string   "assetcode"
    t.string   "cardno"
    t.integer  "assettype"
    t.boolean  "bookable"
    t.string   "name"
    t.string   "typename"
    t.integer  "manufacturer_id"
    t.string   "modelname"
    t.string   "serialno"
    t.text     "otherinfo"
    t.string   "orderno"
    t.decimal  "purchaseprice"
    t.date     "purchasedate"
    t.date     "receiveddate"
    t.integer  "receiver_id"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "assignedto_id"
    t.boolean  "locassigned"
    t.integer  "status"
    t.integer  "location_id"
    t.integer  "country_id"
    t.integer  "warranty_length"
    t.integer  "warranty_length_type"
    t.integer  "category_id"
    t.string   "subcategory"
    t.integer  "quantity"
    t.string   "quantity_type"
    t.integer  "engine_type_id"
    t.string   "engine_no"
    t.string   "registration"
    t.string   "nationcode"
    t.boolean  "mark_disposal"
  end

  create_table "assettracks", :force => true do |t|
    t.integer  "asset_id"
    t.integer  "staff_id"
    t.date     "reservationdate"
    t.date     "use_startdate"
    t.date     "use_enddate"
    t.integer  "issuedby"
    t.date     "issuedate"
    t.date     "expectedreturndate"
    t.integer  "returnedto"
    t.date     "actualreturndate"
    t.string   "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attendances", :force => true do |t|
    t.integer  "staff_id"
    t.date     "attdate"
    t.time     "time_in"
    t.time     "time_out"
    t.string   "reason"
    t.integer  "approve_id"
    t.boolean  "approvestatus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "average_lecturers", :force => true do |t|
    t.integer  "lecturer_id"
    t.integer  "programme_id"
    t.integer  "lesson_topic"
    t.string   "dissactifaction"
    t.string   "recommend_for_improvement"
    t.string   "summary_evaluation"
    t.string   "evaluate_category"
    t.string   "support_justify"
    t.integer  "principal_id"
    t.date     "principal_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bankaccounts", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "student_id"
    t.integer  "bank_id"
    t.string   "account_no"
    t.integer  "account_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banks", :force => true do |t|
    t.string   "short_name"
    t.string   "long_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "bookingfacilities", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "location_id"
    t.date     "requestdate"
    t.datetime "start_date"
    t.datetime "end_date"
    t.boolean  "approval"
    t.integer  "approver_id"
    t.date     "approve_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remark"
    t.integer  "facility_officer"
    t.boolean  "approver2"
    t.string   "remark_officer"
    t.date     "date_approver2"
  end

  create_table "bookingvehicles", :force => true do |t|
    t.integer  "applicant"
    t.date     "used_date"
    t.date     "returned_date"
    t.string   "location"
    t.date     "apply_date"
    t.integer  "approved"
    t.integer  "approver_name"
    t.date     "approved_date"
    t.string   "remark"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "endorse_name"
    t.date     "endorse_date"
    t.integer  "endorsed"
    t.string   "remark_approver"
    t.integer  "driver_name"
  end

  create_table "books", :force => true do |t|
    t.string   "tagno"
    t.string   "controlno"
    t.string   "isbn"
    t.string   "bookcode"
    t.string   "accessionno"
    t.string   "catsource"
    t.string   "classlcc"
    t.string   "classddc"
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.string   "description"
    t.integer  "loantype"
    t.integer  "mediatype"
    t.integer  "status"
    t.string   "series"
    t.string   "location"
    t.string   "topic"
    t.string   "orderno"
    t.decimal  "purchaseprice"
    t.date     "purchasedate"
    t.date     "receiveddate"
    t.integer  "receiver_id"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "issn"
    t.string   "edition"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.string   "publish_date"
    t.string   "publish_location"
    t.string   "language"
    t.text     "links"
    t.text     "subject"
    t.integer  "quantity"
    t.string   "roman"
    t.string   "size"
    t.string   "pages"
    t.string   "bibliography"
    t.string   "indice"
    t.string   "notes"
  end

  create_table "bulletins", :force => true do |t|
    t.string   "headline"
    t.text     "content"
    t.integer  "postedby_id"
    t.date     "publishdt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "cofiles", :force => true do |t|
    t.string   "cofileno"
    t.string   "name"
    t.string   "location"
    t.integer  "owner_id"
    t.boolean  "onloan"
    t.integer  "staffloan_id"
    t.date     "onloandt"
    t.date     "onloanxdt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "counsellings", :force => true do |t|
    t.integer  "student_id"
    t.integer  "cofile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courseevaluations", :force => true do |t|
    t.integer  "student_id"
    t.integer  "programme_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "coursecode"
    t.string   "name"
    t.integer  "parent_id"
    t.string   "objective"
    t.string   "coursescope"
    t.string   "coursedefinition"
    t.string   "abbreviation"
    t.integer  "staff_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "disposals", :force => true do |t|
    t.integer  "asset_id"
    t.boolean  "used"
    t.string   "usedduration"
    t.decimal  "currentvalue"
    t.string   "opinion"
    t.string   "recommendation"
    t.boolean  "gift"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "docs", :force => true do |t|
    t.integer  "curriculum_id"
    t.integer  "cofile_id"
    t.string   "name"
    t.decimal  "version"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", :force => true do |t|
    t.string   "serialno"
    t.string   "refno"
    t.integer  "category"
    t.string   "title"
    t.date     "letterdt"
    t.date     "letterxdt"
    t.string   "from"
    t.integer  "stafffiled_id"
    t.integer  "file_id"
    t.boolean  "closed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
    t.text     "otherinfo"
    t.integer  "cctype_id"
    t.integer  "cc1staff_id"
    t.date     "cc1date"
    t.string   "cc1action"
    t.text     "cc1remarks"
    t.boolean  "cc1closed"
    t.integer  "cc2staff_id"
    t.date     "cc2date"
    t.string   "cc2action"
    t.text     "cc2remarks"
    t.boolean  "cc2closed"
    t.integer  "classification"
  end

  create_table "documents_staffs", :id => false, :force => true do |t|
    t.integer "document_id"
    t.integer "staff_id"
  end

  create_table "downloads", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "doc_name"
    t.integer  "staff_id"
    t.string   "doc_group"
    t.date     "upload_date"
  end

  create_table "employgrades", :force => true do |t|
    t.string   "name"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evactivities", :force => true do |t|
    t.integer  "appraisal_id"
    t.date     "evaldt"
    t.string   "evactivity"
    t.string   "actlevel"
    t.date     "actdt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluate_coaches", :force => true do |t|
    t.integer  "course_id"
    t.integer  "staff_id"
    t.integer  "subject_id"
    t.integer  "class_id"
    t.date     "evaluate_date"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "objective"
    t.boolean  "status"
    t.string   "remark"
    t.integer  "intro_plan"
    t.integer  "intro_abm"
    t.integer  "intro_att"
    t.integer  "intro_title"
    t.integer  "intro_obj"
    t.integer  "intro_ref"
    t.integer  "intro_exp"
    t.integer  "d_dev"
    t.integer  "d_interest"
    t.integer  "d_control"
    t.integer  "d_habit"
    t.integer  "d_emp"
    t.integer  "d_class"
    t.integer  "d_inv"
    t.integer  "d_abm"
    t.integer  "d_knowledge"
    t.integer  "sum_rev"
    t.integer  "sum_chance"
    t.integer  "q_rangka"
    t.integer  "q_merangkumi"
    t.integer  "q_tujukan"
    t.integer  "q_soalan"
    t.integer  "q_bina"
    t.integer  "q_future"
    t.integer  "q_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "result"
  end

  create_table "evaluate_lecturers", :force => true do |t|
    t.integer  "course_id"
    t.integer  "subject_id"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.date     "evaluate_date"
    t.string   "comment"
    t.integer  "ev_obj"
    t.integer  "ev_knowledge"
    t.integer  "ev_deliver"
    t.integer  "ev_content"
    t.integer  "ev_tool"
    t.integer  "ev_topic"
    t.integer  "ev_work"
    t.integer  "ev_note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invite_lec"
  end

  create_table "events", :force => true do |t|
    t.string   "eventname"
    t.string   "location"
    t.text     "participants"
    t.string   "officiated"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "eventstdt"
    t.datetime "eventendt"
    t.integer  "createdby"
    t.boolean  "event_is_publik"
  end

  create_table "exammakers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.date     "exam_date"
    t.string   "duration_exam"
    t.integer  "full_mark"
    t.integer  "pass_mark"
    t.integer  "intake"
    t.integer  "subject_id"
  end

  create_table "exammakers_examquestions", :id => false, :force => true do |t|
    t.integer  "exammaker_id"
    t.integer  "examquestion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exammcqanswers", :force => true do |t|
    t.integer  "examquestion_id"
    t.string   "sequence"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "examquestions", :force => true do |t|
    t.integer  "curriculum_id"
    t.string   "questiontype"
    t.string   "question"
    t.text     "answer"
    t.decimal  "marks"
    t.string   "category"
    t.string   "qkeyword"
    t.string   "qstatus"
    t.integer  "creator_id"
    t.date     "createdt"
    t.string   "difficulty"
    t.text     "statusremark"
    t.integer  "editor_id"
    t.date     "editdt"
    t.integer  "approver_id"
    t.date     "approvedt"
    t.boolean  "bplreserve"
    t.boolean  "bplsent"
    t.date     "bplsentdt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "diagram_file_name"
    t.string   "diagram_content_type"
    t.integer  "diagram_file_size"
    t.datetime "diagram_updated_at"
    t.integer  "topic_id"
    t.string   "construct"
    t.boolean  "conform_curriculum"
    t.boolean  "conform_specification"
    t.boolean  "conform_opportunity"
    t.boolean  "accuracy_construct"
    t.boolean  "accuracy_topic"
    t.boolean  "accuracy_component"
    t.boolean  "fit_difficulty"
    t.boolean  "fit_important"
    t.boolean  "fit_fairness"
  end

  create_table "examsubquestions", :force => true do |t|
    t.integer  "examquestion_id"
    t.integer  "parent_id"
    t.string   "sequence"
    t.string   "question"
    t.string   "classification"
    t.integer  "marks"
    t.text     "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exworks", :force => true do |t|
    t.string   "organisation_name"
    t.string   "position_name"
    t.string   "place"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grades", :force => true do |t|
    t.integer  "student_id"
    t.integer  "subject_id"
    t.boolean  "sent_to_KM"
    t.date     "sent_date"
    t.decimal  "formative"
    t.decimal  "score"
    t.boolean  "eligible_for_exam"
    t.boolean  "carry_paper"
    t.decimal  "summative"
    t.boolean  "resit"
    t.decimal  "finalscore"
    t.integer  "grading_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "exam1name"
    t.string   "exam1desc"
    t.decimal  "exam1marks"
    t.string   "exam2name"
    t.string   "exam2desc"
    t.decimal  "exam2marks"
    t.decimal  "examweight"
    t.string   "type"
    t.string   "description"
    t.integer  "mark"
    t.integer  "totalmark"
    t.string   "typetest"
  end

  create_table "individu_courses", :force => true do |t|
    t.integer  "staff_id"
    t.string   "course_name"
    t.date     "start_course"
    t.date     "end_course"
    t.string   "loc_course"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intakes", :force => true do |t|
    t.string   "name"
    t.integer  "intake_no"
    t.date     "year"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kins", :force => true do |t|
    t.integer  "kintype_id"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.string   "name"
    t.date     "kinbirthdt"
    t.string   "phone"
    t.string   "kinaddr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "profession"
    t.string   "mykadno"
  end

  create_table "klasses", :force => true do |t|
    t.string   "name"
    t.integer  "intake_id"
    t.integer  "programme_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klasses_students", :id => false, :force => true do |t|
    t.integer "klass_id"
    t.integer "student_id"
  end

  create_table "leaveforstaffs", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "leavetype"
    t.date     "leavestartdate"
    t.date     "leavenddate"
    t.decimal  "leavedays"
    t.string   "reason"
    t.text     "notes"
    t.integer  "replacement_id"
    t.boolean  "submit"
    t.boolean  "approval1"
    t.integer  "approval1_id"
    t.date     "approval1date"
    t.boolean  "approver2"
    t.integer  "approval2_id"
    t.date     "approval2date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address_on_leave"
    t.string   "phone_on_leave"
    t.string   "leave_before_app"
    t.integer  "adminofficer1_id"
    t.date     "date_before_app"
    t.boolean  "proceed"
    t.string   "leave_after_app"
    t.integer  "adminofficer2_id"
    t.boolean  "date_after_leave"
  end

  create_table "leaveforstudents", :force => true do |t|
    t.integer  "student_id"
    t.string   "leavetype"
    t.date     "requestdate"
    t.string   "reason"
    t.string   "address"
    t.string   "telno"
    t.date     "leave_startdate"
    t.date     "leave_enddate"
    t.boolean  "studentsubmit"
    t.boolean  "approved"
    t.integer  "staff_id"
    t.date     "approvedate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "notes"
  end

  create_table "librarytransactions", :force => true do |t|
    t.integer  "book_id"
    t.boolean  "ru_staff"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.date     "checkoutdate"
    t.date     "returnduedate"
    t.boolean  "extended"
    t.boolean  "returned"
    t.date     "returneddate"
    t.decimal  "fine"
    t.boolean  "finepay"
    t.date     "finepaydate"
    t.boolean  "reportlost"
    t.text     "report"
    t.date     "reportlostdate"
    t.date     "replaceddate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "outside_borrower"
  end

  create_table "loans", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "ltype"
    t.string   "accno"
    t.date     "startdt"
    t.integer  "durationmn"
    t.decimal  "deductions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localmessages", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "lclass"
    t.integer  "typename"
    t.boolean  "allocatable"
    t.boolean  "occupied"
    t.integer  "staffadmin_id"
    t.string   "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maints", :force => true do |t|
    t.integer  "asset_id"
    t.integer  "maintainer_id"
    t.string   "workorderno"
    t.decimal  "maintcost"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentees", :force => true do |t|
    t.integer  "student_id"
    t.integer  "mentor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentors", :force => true do |t|
    t.integer  "staff_id"
    t.date     "mentor_date"
    t.string   "remark"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "from_id"
    t.integer  "to_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.integer  "cc_id"
  end

  create_table "messages_staffs", :id => false, :force => true do |t|
    t.integer "message_id"
    t.integer "staff_id"
  end

  create_table "officecars", :force => true do |t|
    t.string   "car_regno"
    t.string   "car_name"
    t.integer  "car_type"
    t.integer  "power_car"
    t.string   "modelcar"
    t.integer  "class_car"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.integer  "parent_id"
    t.string   "navlabel"
    t.integer  "position"
    t.boolean  "redirect"
    t.string   "action_name"
    t.string   "controller_name"
  end

  create_table "parts", :force => true do |t|
    t.string   "partcode"
    t.string   "category"
    t.string   "unittype"
    t.decimal  "quantity"
    t.decimal  "maxquantity"
    t.decimal  "minquantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "bookingvehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "period_timings", :force => true do |t|
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.boolean  "break"
    t.integer  "intake_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", :force => true do |t|
    t.string   "positioncode"
    t.string   "positionname"
    t.string   "unit"
    t.text     "taskmain"
    t.text     "taskother"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "staffgrade_id"
    t.integer  "staff_id"
  end

  create_table "programmes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "specialisation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programmes_subjects", :id => false, :force => true do |t|
    t.integer "programme_id"
    t.integer "subject_id"
  end

  create_table "ptbudgets", :force => true do |t|
    t.decimal  "budget"
    t.date     "fiscalstart"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptcourses", :force => true do |t|
    t.string   "name"
    t.integer  "course_type"
    t.integer  "provider"
    t.decimal  "duration"
    t.integer  "duration_type"
    t.string   "proponent"
    t.decimal  "cost"
    t.text     "description"
    t.boolean  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ptdos", :force => true do |t|
    t.integer  "ptcourse_id"
    t.integer  "ptschedule_id"
    t.integer  "staff_id"
    t.string   "justification"
    t.string   "unit_review"
    t.boolean  "unit_approve"
    t.string   "dept_review"
    t.boolean  "dept_approve"
    t.integer  "replacement_id"
    t.boolean  "final_approve"
    t.text     "trainee_report"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "approver_1"
    t.string   "remark_1"
    t.integer  "approver_2"
    t.string   "remark_2"
  end

  create_table "ptschedules", :force => true do |t|
    t.integer  "ptcourse_id"
    t.date     "start"
    t.string   "location"
    t.integer  "min_participants"
    t.integer  "max_participants"
    t.decimal  "final_price"
    t.boolean  "budget_ok"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "branch"
    t.integer  "allowance_speaker"
    t.integer  "meals"
    t.string   "coursename"
    t.string   "description"
    t.integer  "duration"
    t.integer  "duration_type"
    t.integer  "total_speaker"
    t.integer  "total_meal"
    t.integer  "big_total"
    t.integer  "rate_speaker"
    t.integer  "total_speaker_hour"
  end

  create_table "qualifications", :force => true do |t|
    t.integer  "staff_id"
    t.integer  "student_id"
    t.integer  "level_id"
    t.string   "qname"
    t.integer  "institute_id"
    t.string   "institute"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "residences", :force => true do |t|
    t.string   "rescode"
    t.string   "resname"
    t.integer  "parent_id"
    t.integer  "resclass"
    t.integer  "restype"
    t.boolean  "allocatable"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.date     "keytxdt"
    t.date     "keyreturndt"
    t.date     "keyexpectdate"
    t.boolean  "keyrx"
    t.integer  "staffadmin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  add_index "residences", ["ancestry"], :name => "index_residences_on_ancestry"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authname"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "rxparts", :force => true do |t|
    t.integer  "part_id"
    t.string   "lponum"
    t.string   "donum"
    t.decimal  "quantity"
    t.decimal  "unitcost"
    t.decimal  "totalcost"
    t.date     "rdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", :force => true do |t|
    t.integer  "type_id"
    t.string   "description"
    t.decimal  "marks"
    t.decimal  "weightage"
    t.decimal  "score"
    t.decimal  "completion"
    t.boolean  "formative"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grade_id"
  end

  create_table "scsessions", :force => true do |t|
    t.integer  "counselling_id"
    t.datetime "scsessiondt"
    t.time     "scsessiondtduration"
    t.integer  "scsappointnum"
    t.string   "scsessiontype"
    t.string   "issue"
    t.text     "suggestion"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sdiciplines", :force => true do |t|
    t.integer  "reportedby_id"
    t.integer  "student_id"
    t.text     "details"
    t.integer  "cofile_id"
    t.datetime "casedt"
    t.string   "referredby"
    t.text     "investigation"
    t.string   "status"
    t.text     "action"
    t.date     "closedtcollege"
    t.string   "location"
    t.text     "otherinfo"
    t.date     "commandantdt"
    t.date     "jtkpdt"
    t.text     "jtkpdecision"
    t.date     "jtkpdescisionrxdt"
    t.date     "appealdt"
    t.text     "appealdecision"
    t.date     "appealdecisionrxdt"
    t.integer  "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "infraction"
    t.integer  "warden_id"
    t.integer  "mentor_id"
    t.integer  "caunsellor_id"
    t.integer  "commandant_id"
    t.string   "principal_takeaction"
    t.string   "principal_investigation"
    t.date     "principal_datetakeaction"
    t.date     "reportteddt"
  end

  create_table "skt_achives", :force => true do |t|
    t.integer  "skt_target_id"
    t.integer  "performance"
    t.string   "performance_detail"
    t.string   "target_work"
    t.string   "actual_achieve"
    t.string   "percent_achieve"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skt_staffs", :force => true do |t|
    t.date     "datepyd_part1"
    t.date     "dateppp_part1"
    t.string   "report_pyd"
    t.string   "report_ppp"
    t.date     "datereport_pyd"
    t.date     "datereport_ppp"
    t.date     "date_performance"
    t.integer  "pyd_id"
    t.integer  "pp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ppp_id"
  end

  create_table "skt_targets", :force => true do |t|
    t.integer  "skt_staff_id"
    t.string   "activity"
    t.integer  "status"
    t.integer  "approved"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spmresults", :force => true do |t|
    t.integer  "student_id"
    t.string   "spm_subject"
    t.integer  "spmsubject_id"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staff_grades", :force => true do |t|
    t.string   "name"
    t.string   "grade"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "classification_id"
    t.string   "group_id"
    t.string   "schemename"
  end

  create_table "staffcourses", :force => true do |t|
    t.string   "name"
    t.integer  "coursetype"
    t.string   "provider"
    t.string   "location"
    t.decimal  "duration",      :precision => 4, :scale => 1, :default => 0.0
    t.integer  "duration_type"
    t.string   "proponent"
    t.decimal  "cost",          :precision => 8, :scale => 2, :default => 2.0
    t.date     "course_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "staffemploygrades", :force => true do |t|
    t.integer  "staffemployscheme_id"
    t.integer  "employgrade_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffemployschemes", :force => true do |t|
    t.string   "glass"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", :force => true do |t|
    t.string   "icno"
    t.string   "name"
    t.integer  "titlecd_id"
    t.string   "code"
    t.string   "fileno"
    t.integer  "position_old"
    t.string   "coemail"
    t.date     "cobirthdt"
    t.string   "bloodtype"
    t.string   "cooftelno"
    t.string   "cooftelext"
    t.string   "addr"
    t.integer  "poskod_id"
    t.integer  "mrtlstatuscd"
    t.integer  "statecd"
    t.integer  "country_cd"
    t.string   "employscheme"
    t.integer  "employstatus"
    t.string   "appointstatus"
    t.date     "appointdt"
    t.date     "schemedt"
    t.date     "confirmdt"
    t.date     "posconfirmdate"
    t.string   "appointby"
    t.string   "svchead"
    t.string   "svctype"
    t.string   "pensionstat"
    t.date     "pensiondt"
    t.string   "uniformstat"
    t.string   "kwspcode"
    t.string   "taxcode"
    t.string   "bank"
    t.string   "bankaccno"
    t.string   "bankacctype"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "race"
    t.integer  "religion"
    t.string   "phonecell"
    t.boolean  "phonehome"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "staffgrade_id"
    t.integer  "gender"
    t.date     "pension_confirm_date"
    t.date     "wealth_decleration_date"
    t.date     "promotion_date"
    t.date     "reconfirmation_date"
    t.date     "to_current_grade_date"
    t.decimal  "starting_salary"
    t.string   "transportclass_id"
    t.integer  "country_id"
    t.string   "birthcertno"
    t.string   "vehicleregno"
    t.boolean  "license_A"
    t.boolean  "license_B"
    t.boolean  "license_C"
    t.boolean  "license_D"
    t.boolean  "license_E"
    t.boolean  "license_F"
  end

  create_table "stockcards", :force => true do |t|
    t.integer  "stock_id"
    t.integer  "supplier_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stockdetails", :force => true do |t|
    t.integer  "stock_id"
    t.integer  "supplier_id"
    t.integer  "quantity_order"
    t.integer  "quantity_approve"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remark"
  end

  create_table "stocks", :force => true do |t|
    t.string   "app_no"
    t.integer  "supplier_id"
    t.string   "quantity_order"
    t.integer  "staff_id"
    t.date     "app_date"
    t.boolean  "received"
    t.date     "received_date"
    t.integer  "approver_id"
    t.string   "remark"
    t.date     "approve_date"
    t.boolean  "approval"
    t.integer  "storeman_id"
    t.date     "date_update"
    t.boolean  "sent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status"
  end

  create_table "strainings", :force => true do |t|
    t.integer  "appraisal_id"
    t.integer  "staff_id"
    t.string   "name"
    t.string   "place"
    t.date     "sdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_marks", :force => true do |t|
    t.integer  "analysis_grade_id"
    t.integer  "student_id"
    t.integer  "m_1"
    t.integer  "m_2"
    t.integer  "m_3"
    t.integer  "m_4"
    t.integer  "m_5"
    t.integer  "m_6"
    t.integer  "m_7"
    t.integer  "m_8"
    t.integer  "m_9"
    t.integer  "m_10"
    t.integer  "m_11"
    t.integer  "m_12"
    t.integer  "m_13"
    t.integer  "m_14"
    t.integer  "m_15"
    t.integer  "m_16"
    t.integer  "m_17"
    t.integer  "m_18"
    t.integer  "m_19"
    t.integer  "m_20"
    t.integer  "m_21"
    t.integer  "m_22"
    t.integer  "m_23"
    t.integer  "m_24"
    t.integer  "m_25"
    t.integer  "m_26"
    t.integer  "m_27"
    t.integer  "m_28"
    t.integer  "m_29"
    t.integer  "m_30"
    t.integer  "m_31"
    t.integer  "m_32"
    t.integer  "m_33"
    t.integer  "m_34"
    t.integer  "m_35"
    t.integer  "m_36"
    t.integer  "m_37"
    t.integer  "m_38"
    t.integer  "total_mark"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "m_39"
    t.integer  "m_40"
    t.integer  "m_41"
    t.integer  "m_42"
    t.integer  "m_43"
    t.integer  "m_44"
    t.integer  "m_45"
    t.integer  "m_46"
    t.integer  "m_47"
    t.integer  "m_48"
    t.integer  "m_49"
    t.integer  "m_50"
  end

  create_table "studentattendances", :force => true do |t|
    t.integer  "timetable_id"
    t.integer  "student_id"
    t.boolean  "attend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "icno"
    t.string   "name"
    t.string   "statecd"
    t.string   "sstatus"
    t.string   "stelno"
    t.string   "ssponsor"
    t.integer  "gender"
    t.date     "sbirthdt"
    t.integer  "mrtlstatuscd"
    t.string   "semail"
    t.date     "start_training"
    t.integer  "course_id"
    t.integer  "specilisation"
    t.integer  "approve_id"
    t.string   "pangkat"
    t.string   "unit"
    t.string   "phoneoffice"
    t.string   "bloodtype"
    t.string   "phonehome"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "religion"
    t.string   "race"
    t.text     "address"
    t.text     "office_address"
    t.date     "end_training"
    t.string   "intake"
    t.integer  "vehicletype"
    t.string   "vehicleregno"
    t.string   "poskod"
    t.boolean  "accomodation"
    t.boolean  "dish"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "intake_id"
  end

  create_table "subjects", :force => true do |t|
    t.string   "subjectcode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "credit"
    t.integer  "status"
    t.integer  "semester"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "supplycode"
    t.string   "category"
    t.string   "unittype"
    t.integer  "maxquantity"
    t.integer  "minquantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "item_details"
    t.string   "sub_category"
    t.string   "item_type"
    t.string   "store_name"
    t.integer  "stationery_id"
  end

  create_table "tenants", :force => true do |t|
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.date     "keyaccept"
    t.date     "keyexpectedreturn"
    t.date     "keyreturned"
    t.boolean  "force_vacate"
    t.date     "lockerkey_received_date"
    t.date     "lockerkey_returned_date"
  end

  create_table "time_table_entries", :force => true do |t|
    t.integer  "intake_id"
    t.integer  "programme_id"
    t.integer  "subject_id"
    t.integer  "topic_id"
    t.integer  "klass_id"
    t.integer  "tt_wd"
    t.date     "timetable_date"
    t.integer  "staff_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "residence_id"
    t.integer  "timing_id"
  end

  create_table "timetable_week_days", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timetables", :force => true do |t|
    t.integer  "classroom_id"
    t.integer  "topic_id"
    t.integer  "location_id"
    t.integer  "staff_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titles", :force => true do |t|
    t.string   "titlecode"
    t.string   "name"
    t.boolean  "berhormat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.integer  "subject_id"
    t.string   "topic_code"
    t.integer  "sequenceno"
    t.string   "name"
    t.string   "version"
    t.string   "objective"
    t.text     "content"
    t.text     "activity"
    t.integer  "creator_id"
    t.boolean  "approved"
    t.integer  "approvedby_id"
    t.date     "approved_date"
    t.string   "remarks"
    t.string   "checkcode"
    t.date     "checkdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "durahours"
    t.integer  "duramins"
    t.integer  "duration"
  end

  create_table "training_notes", :force => true do |t|
    t.integer  "timetable_id"
    t.string   "title"
    t.string   "reference"
    t.string   "version"
    t.string   "staff_id"
    t.date     "release"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
  end

  create_table "trainingreports", :force => true do |t|
    t.integer  "classtype"
    t.integer  "timetable_id"
    t.boolean  "location_state"
    t.text     "ls_comment"
    t.text     "staff_comment"
    t.integer  "staff_id"
    t.boolean  "submit"
    t.text     "tpa_comment"
    t.integer  "tpa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "topic_id"
  end

  create_table "trainingrequests", :force => true do |t|
    t.integer  "staffcourse_id"
    t.integer  "staff_id"
    t.integer  "appraisal_id"
    t.string   "reason"
    t.boolean  "submit"
    t.date     "submitdate"
    t.boolean  "approved"
    t.integer  "approvedby_id"
    t.date     "approveddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainneeds", :force => true do |t|
    t.string   "name"
    t.string   "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "confirmedby_id"
    t.integer  "evaluation_id"
    t.integer  "appraosal_id"
    t.integer  "appraisal_id"
  end

  create_table "travelallowances", :force => true do |t|
    t.integer  "travelclaim_id"
    t.integer  "allowance_type"
    t.decimal  "allowance_per_day"
    t.integer  "no_of_day"
    t.string   "resit_no"
    t.decimal  "sum_allowance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travelclaimreceipts", :force => true do |t|
    t.integer  "travelclaim_id"
    t.integer  "type_id"
    t.string   "receiptnp"
    t.decimal  "rvalue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travelclaimrequests", :force => true do |t|
    t.integer  "travelclaim_id"
    t.integer  "travelrequest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "mileage"
  end

  create_table "travelclaims", :force => true do |t|
    t.decimal  "ptclaimsvalue"
    t.decimal  "allclaimsvalue"
    t.decimal  "othclaimsvalue"
    t.decimal  "exchvalue"
    t.decimal  "exchloss"
    t.decimal  "gtotal"
    t.boolean  "claimtype"
    t.date     "submission"
    t.integer  "hod_id"
    t.date     "hodconfirmdt"
    t.decimal  "advance"
    t.decimal  "payable"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "staff_id"
    t.date     "claimsmonth"
  end

  create_table "traveldetailreceipts", :force => true do |t|
    t.integer  "traveldetail_id"
    t.integer  "type_id"
    t.string   "receiptnp"
    t.decimal  "rvalue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "traveldetails", :force => true do |t|
    t.integer  "travelclaimrequest_id"
    t.date     "travelday"
    t.time     "departure"
    t.time     "arrival"
    t.text     "description"
    t.decimal  "distance"
    t.decimal  "fare"
    t.decimal  "value"
    t.boolean  "lodging"
    t.boolean  "meals"
    t.boolean  "dinner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "travelrequest_id"
    t.string   "location_from"
    t.string   "location_to"
  end

  create_table "travelrequests", :force => true do |t|
    t.integer  "staff_id"
    t.string   "trcode"
    t.string   "destination"
    t.string   "purpose"
    t.date     "tstartdt"
    t.date     "treturndt"
    t.boolean  "owncar"
    t.boolean  "officecar"
    t.boolean  "otherscar"
    t.boolean  "train"
    t.boolean  "plane"
    t.boolean  "publict"
    t.string   "ifownwhy"
    t.boolean  "claimtype"
    t.date     "submission"
    t.integer  "replacement_id"
    t.integer  "hod_id"
    t.date     "hodconfirmdt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "travelclaims_id"
    t.integer  "asset_id"
    t.string   "fuelstart"
    t.string   "fuelend"
    t.string   "tngserialno"
    t.string   "tngbeforetakenout"
    t.string   "tngaftertakenout"
    t.boolean  "hod_approved"
    t.integer  "transport_travel"
    t.boolean  "reason_1"
    t.boolean  "reason_2"
    t.boolean  "reason_3"
    t.boolean  "reason_4"
    t.boolean  "reason_5"
    t.boolean  "reason_6"
    t.boolean  "reason_7"
    t.boolean  "reason_8"
    t.string   "remark_approver"
  end

  create_table "txsupplies", :force => true do |t|
    t.integer  "part_id"
    t.integer  "receiver_id"
    t.decimal  "quantity"
    t.date     "tdate"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.integer  "staff_id"
    t.integer  "student_id"
    t.boolean  "isstaff"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "usesupplies", :force => true do |t|
    t.integer  "supplier_id"
    t.integer  "issuedby"
    t.integer  "receivedby"
    t.integer  "quantity"
    t.date     "issuedate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ref_no"
    t.string   "remark"
    t.integer  "stock_detail"
  end

  create_table "vehicleregnos", :force => true do |t|
    t.integer  "staff_id"
    t.string   "reg_no"
    t.string   "vehicle_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
