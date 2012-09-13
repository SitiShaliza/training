class Librarytransaction < ActiveRecord::Base
  
  before_save :varmyass
  
  belongs_to :accession, :foreign_key => 'book_id'
  belongs_to :staff
  belongs_to :student
  
  
  
  
  def varmyass
    if extended == true
      self.returnduedate = returnduedate + 14.days
      self.extended = false
    end
  end
  
  def extoond
    if extended == false
      '(Extended)'
    elsif extended == nil
      'never'
    else
    end
      
  end
  
  def loaner
    if student_id == nil && staff_id == nil
      ""
    elsif ru_staff == true
      staff.staff_name_with_position
    elsif student_id != nil
      student.name
   else
     ""
    end 
  end
  
#  def borrower_name
#     stid = staff_id.to_a
#     suid = student_id.to_a
#     stexists = Staff.find(:all, :select => "id").map(&:id)
#    stuexists = Student.find(:all, :select => "id").map(&:id)
#     staffchecker = stid & stexists
#     studentchecker = suid & stuexists

 #       if student_id == nil && staff_id == nil
 #            ""
#        elsif staff_id == nil && stexists == [ ]
#             "Student No Longer Exists"
 #       elsif student_id == nil && studentchecker == [ ]
#             "Staff No Longer Exists"
#        elsif staff_id == nil
#             " #{student.name}"
#        else
#          staff.name
#        end
#    end
    
def staff_details
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
 
 def student_details
    suid = student_id.to_a
    exists = Student.find(:all, :select => "id").map(&:id)
    checker = suid & exists

    if student_id == nil
      ""
    elsif checker == []
      "Student No Longer Exists"
    else
      student.name
    end
  end 
    
    
      
    
    

  
  named_scope :all,         :conditions => [ "id IS NOT ?", nil ]
  named_scope :borrowed,    :conditions => { :returned => false }
  named_scope :returned,    :conditions => { :returned => true }
  named_scope :overdue, lambda { |time| { :conditions => ["returnduedate < ?", Time.now] } }
  
  FILTERS = [
    {:scope => "all",        :label => "All Transactions"},
    {:scope => "borrowed",   :label => "Borrowed"},
    {:scope => "returned",    :label => "Returned"},
    {:scope => "overdue",    :label => "Overdue"}
  ]
  
end
