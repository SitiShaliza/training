class Student < ActiveRecord::Base
  
  before_save  :titleize_name

  validates_presence_of     :name, :gender #freeze - :icno, :stelno, :sbirthdt, :mrtlstatuscd, :sstatus
 # validates_numericality_of :icno, :stelno
 # validates_length_of       :icno, :is =>12
 # validates_uniqueness_of   :icno
  
  
  has_and_belongs_to_many :klasses          #has_and_belongs_to_many :programmes
  belongs_to :course,         :class_name => 'Programme', :foreign_key => 'course_id'       #Link to Programme
  belongs_to :intakestudent,  :class_name => 'Intake',    :foreign_key => 'intake_id'       #Link to Model intake
  belongs_to :staffapprove,          :class_name => 'Staff',     :foreign_key => 'approve_id'
  
  has_one   :user                                                                           #Link to Model user
  has_many  :leaveforstudents                                                               #Link to LeaveStudent
  has_many  :counsellings                                                                   #Link to Counselling
  has_many  :librarytransactions                                                            #Link to LibraryTransactions
  has_many  :studentgrade,    :class_name => 'Grade',     :foreign_key => 'student_id'      #Link to Model Grade
  has_many  :student,         :class_name => 'Sdicipline',:foreign_key => 'student_id'      #Link to Model Sdicipline
  has_many  :studentevaluate, :class_name => 'Courseevaluation', :foreign_key => 'student_id'#Link to Model CourseEvaluation
  has_many  :student,         :class_name => 'Residence', :foreign_key => 'student_id'      #Link to Model residence
     
  
  #has_many :sdiciplines, :foreign_key => 'student_id'
  #has_many :std, :class_name => 'Sdicipline', :foreign_key => 'student_id'
  
  has_attached_file :photo,
                      :url => "/assets/students/:id/:style/:basename.:extension",
                      :path => ":rails_root/public/assets/students/:id/:style/:basename.:extension"
  
 # validates_attachment_presence :photo
  validates_attachment_size         :photo, :less_than => 50.kilobytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

 
  def self.search(search)
    if search
      @students = Student.find(:all, :conditions => ["icno LIKE ? or name ILIKE ? or matrixno ILIKE ?", "%#{search}%","%#{search}%","%#{search}%"], :order => :icno)
    else
     @students = Student.find(:all)
    end
  end
  
  def self.find_main
      Programme.find(:all, :condition => ['programme_id IS NULL'])
  end
  
#----------------------Declarations---------------------------------------------------------------------------------
  def titleize_name
    self.name = name.titleize
  end
  
  def age
    Date.today.year - sbirthdt.year
  end
  
  #group by intake
  def isorter
    suid = intake_id
    Intake.find(:all, :select => "name", :conditions => {:id => suid}).map(&:name)
  end
  
  def formatted_mykad
    "#{icno[0,6]}-#{icno[6,2]}-#{icno[-4,4]}"
  end
  
  def formatted_mykad_and_student_name
    " #{formatted_mykad} #{name}" 
  end
  
  def student_name_with_programme
    "#{name} - #{programme_for_student}"
  end
  
  def programme_for_student
    if course.blank?
      "N/A"
    else
      course.name
    end
  end
  
  def bil
    v=1
  end
   
  # ------------------------------code for repeating field---------------------------------------------------
   has_many :qualifications, :dependent => :destroy
   accepts_nested_attributes_for :qualifications, :reject_if => lambda { |a| a[:level_id].blank? }

   has_many :kins, :dependent => :destroy
   accepts_nested_attributes_for :kins, :reject_if => lambda { |a| a[:kintype_id].blank? }

   has_many :spmresults, :dependent => :destroy
   accepts_nested_attributes_for :spmresults, :reject_if => lambda { |a| a[:spm_subject].blank? }  
   
   has_many :exworks, :dependent => :destroy
   accepts_nested_attributes_for :exworks, :reject_if => lambda { |a| a[:organisation_name].blank? }  
   
   
#----------------Coded List-----------------------------------------------------------------------------------------------------------
#8/11/2011 - Shaliza changed for status as user requested-->
STATUS = [
           #  Displayed       stored in db
           [ "Asas - Pegawai","asaspeg" ],
           [ "Asas - LLP","asasllp" ],
           [ "Lanjutan - Pegawai", "lanpeg" ],
           [ "Lanjutan - LLP", "lanllp" ]
           
] 
  
SPONSOR = [
         #  Displayed       stored in db
         [ "Kementerian Kesihatan Malaysia","KKM" ],
         [ "Suruhanjaya Perkhidmatan Awam","SPA" ],
         [ "Swasta","swasta" ],
         [ "Sendiri", "FaMa" ]
] 
  
GENDER = [
        #  Displayed       stored in db
        [ "Lelaki","1" ],
        [ "Perempuan","2" ]
]
  
SESSION = [
        #  Displayed       stored in db
        [ "January","1" ],
        [ "July","2" ]
  ]
  
MARITAL_STATUS = [
        #  Displayed       stored in db
        [ "Bujang","1" ],
        [ "Berkahwin","2" ],
        [ "Lain Lain", "3"]
        #[ "Balu", "3" ],[ "Duda", "4" ],[ "Bercerai", "5" ],[ "Berpisah", "6" ],[ "Tiada Maklumat", "9" ]
]
      
CLASS= [
          #  Displayed       stored in db
          [ "1","1" ],
          [ "2","2" ],
          [ "3", "3" ],
          [ "4", "4" ],
          [ "5", "5" ],
          [ "6", "6" ]
    ]
    
BLOOD_TYPE = [
             #  Displayed       stored in db
             [ "O-",          "1" ],
             [ "O+",    "2" ],
             [ "A-", "3" ],
             [ "A+", "4" ],
             [ "B-", "5" ],
             [ "B+", "6" ],
             [ "AB-", "7" ]
    ]
#14/11/2011 - Shaliza added new field 'Transport Type'   
VEHICLE = [
            #  Displayed       stored in db
            [ "Motosikal","1" ],
            [ "Kereta","2" ]
      ]
    
    def approver_details
      suid = approve_id.to_a
      exists = Staff.find(:all, :select => "id").map(&:id)
      checker = suid & exists

      if approve_id == nil
        ""
      elsif checker == []
        "Staff No Longer Exists"
      else
        staffapprove.staff_name_with_title
      end
    end

    
   
end
