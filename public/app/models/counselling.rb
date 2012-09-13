class Counselling < ActiveRecord::Base
  belongs_to :student
  belongs_to :cofile
 
   def self.find_main
     Student.find(:all, :condition => ['student_id IS NULL'])
   end
   
   # code for repeating field session
   has_many :scsessions, :dependent => :destroy

   def new_scsession_attributes=(scsession_attributes)
     scsession_attributes.each do |attributes|
       scsessions.build(attributes)
     end
   end

   after_update :save_scsessions

   def existing_scsession_attributes=(scsession_attributes)
     scsessions.reject(&:new_record?).each do |scsession|
       attributes = scsession_attributes[scsession.id.to_s]
       if attributes
         scsession.attributes = attributes
       else
         scsessions.delete(scsession)
       end
     end
   end

   def save_scsessions
     scsessions.each do |scsession|
       scsession.save(false)
     end
   end
   # 07/11/2011 - Shaliza fixed for student and file no longer exist.
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
    
     def studenticno_details 
            suid = student_id.to_a
            exists = Student.find(:all, :select => "id").map(&:id)
            checker = suid & exists     

            if student_id == nil
               "" 
             elsif checker == []
               "Student No Longer Exists" 
            else
              student.formatted_mykad
            end
      end
      
      def file_details 
              suid = cofile_id.to_a
              exists = Cofile.find(:all, :select => "id").map(&:id)
              checker = suid & exists     

              if cofile_id == nil
                 "" 
               elsif checker == []
                 "File No Longer Exists" 
              else
                cofile.file_no_and_name
              end
        end
end
