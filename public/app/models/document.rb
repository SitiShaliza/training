class Document < ActiveRecord::Base
# has_many :cofiles, :foreign_key => 'document_id'
#belongs_to :documents, :foreign_key => 'staff_id'
# has_one :title

validates_presence_of :serialno, :refno, :category, :title, :letterdt, :letterxdt, :from, :stafffiled_id, :file_id

belongs_to :stafffilled,    :class_name => 'Staff', :foreign_key => 'stafffiled_id'
belongs_to :cc1staff, :class_name => 'Staff', :foreign_key => 'cc1staff_id' 
belongs_to :cofile, :foreign_key => 'file_id'

before_save :set_actionstaff2_to_blank_if_close_is_selected


  def set_actionstaff2_to_blank_if_close_is_selected
    if cc1closed == true
      self.cc2staff_id = nil
    end
  end


  def filedocer
    suid = file_id
    Cofile.find(:all, :select => "name", :conditions => {:id => suid}).map(&:name)
  end




 def self.find_main
    Document.find(:all, :condition => ['document_id IS NULL'])
  end
  
  def self.find_main
      Cofile.find(:all, :condition => ['cofile_id IS NULL'])
  end


#-------------------------Search---------------------------------------------------  
  def self.search(search)
       if search
         find(:all, :conditions => ['refno ILIKE ? or title ILIKE ?', "%#{search}%", "%#{search}%"])
      else
       find(:all)
      end
  end
    
  
#---------------------AttachFile------------------------------------------------------------------------
 has_attached_file :data
 validates_attachment_content_type :data, :content_type => ['application/pdf', 'application/msword','application/msexcel','image/png','text/plain'],
                        :storage => :file_system,
                        :message => "Invalid File Format" 
 validates_attachment_size :data, :less_than => 5.megabytes


#----------------Coded List----------------------------------- 
CATEGORY = [
        #  Displayed       stored in db
        [ "Surat","1" ],
        [ "Memo","2" ],
        [ "Pekeliling", "3" ],
        [ "Lain-Lain", "4" ]
 ]
 
 ACTION = [
         #  Displayed       stored in db
         [ "Segera","1" ],
         [ "Biasa","2" ],
         [ "Makluman", "3" ]
  ]
  
  CLASSIFICATION = [
           #  Displayed       stored in db
           [ "Peringkat","1" ],
           [ "Tidak Peringkat","2" ]
    ]
   def stafffiled_details 
         suid = stafffiled_id.to_a
         exists = Staff.find(:all, :select => "id").map(&:id)
         checker = suid & exists     

         if stafffiled_id == nil
            "" 
          elsif checker == []
            "Staff No Longer Exists" 
         else
           stafffilled.mykad_with_staff_name
         end
    end

  
end
