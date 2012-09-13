class Klass < ActiveRecord::Base
  
  #Link to Model Timetableentry
   has_many :klass,  :class_name => 'TimeTableEntry', :foreign_key => 'klass_id'
   
  #Link to Model Intake
     belongs_to :intakeclass,  :class_name => 'Student', :foreign_key => 'intake_id'
     
  belongs_to :programme
  belongs_to :subject
  
  
  #Link to student
   has_and_belongs_to_many :students
   #has_and_belongs_to_many :programmes
   
   attr_accessible :intake_id
   
   def intake_details
     suid = intake_id.to_a
     exists = Student.find(:all, :select => "id").map(&:id)
     checker = suid & exists

     if intake_id == nil
       ""
     elsif checker == []
       "-"
     else
       intakeclass.intake
     end
   end
   
   def programme_details
      suid = programme_id.to_a
      exists = Programme.find(:all, :select => "id").map(&:id)
      checker = suid & exists

      if programme_id == nil
        ""
      elsif checker == []
        "-"
      else
        programme.programme_with_specialisation
      end
    end
    
    def subject_details
       suid = subject_id.to_a
       exists = Subject.find(:all, :select => "id").map(&:id)
       checker = suid & exists

       if subject_id == nil
         ""
       elsif checker == []
         "-"
       else
         subject.name
       end
     end
end
