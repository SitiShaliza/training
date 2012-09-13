class Leaveforstudent < ActiveRecord::Base
  belongs_to :student
  belongs_to :staff

  validates_presence_of :student_id, :leavetype
  validates_numericality_of :telno
  
  
  def self.find_main
    Student.find(:all, :condition => ['student_id IS NULL'])
  end
  
  def self.find_main
    Staff.find(:all, :condition => ['staff_id IS NULL'])
  end
  
 
 STUDENTLEAVETYPE = [
        #  Displayed       stored in db
        [ "Weekend Day","Weekend Day" ],
        [ "Weekend Overnight","Weekend Overnight" ],
        [ "Emergency","Emergency" ],
        [ "Cuti Perayaan","Cuti Perayaan" ],
        [ "Mid Term Break","Mid Term Break" ],
        [ "End of Semester","End of Semester" ]
  ]
  
  
def self.search(search)
     if search
       @leaveforstudent = Leaveforstudent.find(:all, :conditions => ['leavetype LIKE ?' , "%#{search}%"])
     else
      @leaveforstudent = Leaveforstudent.find(:all)
     end
end

def approver_details 
      suid = staff_id.to_a
      exists = Staff.find(:all, :select => "id").map(&:id)
      checker = suid & exists     
  
      if staff_id == nil
         "" 
       elsif checker == []
         "Staff No Longer Exists" 
      else
        staff.staff_name_with_title
      end
end

def bil
   v=1
end

end
