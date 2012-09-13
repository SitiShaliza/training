class Studentattendance < ActiveRecord::Base
	 belongs_to :timetable
     belongs_to :student
     
     

     
     def student_details
      suid = student_id.to_a
      exists = Student.find(:all, :select => "id").map(&:id)
      checker = suid & exists

      if student_id == nil
        ""
      elsif checker == []
        "-"
      else
        student.student_name_with_programme
      end
    end

end
