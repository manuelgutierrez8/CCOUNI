using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApp.Classes
{
    public class Confirmacion
    {
        public static Model.Semester GetCurrentSemester()
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();
            return model.Semesters.Where(s => s.current == true).First();
        }

        public static bool IsStudentConfirmed(int studentId)
        {
            Model.dbModelDataContext model = new Model.dbModelDataContext();

            Model.Semester currentSemester = GetCurrentSemester();

            return model.Student_Confirmations.Where(sc => sc.student_id == studentId
                                                    && sc.semester_id == currentSemester.id).Count() > 0;
        }
    }
}