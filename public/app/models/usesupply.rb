class Usesupply < ActiveRecord::Base
 belongs_to :supplier
 belongs_to :issuesupply,       :class_name => 'staff', :foreign_key => 'issuedby'
 belongs_to :receivesupply,       :class_name => 'staff', :foreign_key => 'receivedby'
 
 def issuestaff_details # 14/11/2011 - Shaliza added code for issuestaff and received staff no longer exists in show page-->
   suid = issuedby.to_a
   exists = Staff.find(:all, :select => "id").map(&:id)
   checker = suid & exists
   
   if issuedby == nil
     ""
   elsif checker == []
     "Staff No Longer Exists"
   else
     issuesupply.mykad_with_staff_name
   end
 end
 
 def receivedby_details
    suid = receivedby.to_a
    exists = Staff.find(:all, :select => "id").map(&:id)
    checker = suid & exists

    if receivedby == nil
      ""
    elsif checker == []
      "Staff No Longer Exists"
    else
      receivesupply.mykad_with_staff_name
    end
  end
end