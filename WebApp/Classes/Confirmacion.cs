using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApp.App_Code;

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

            //Obtener el total de registros en la tabla
            //de bitacora de confirmaciones para un estudiante
            int count = model.Student_Confirmations.Where(sc => sc.student_id == studentId
                                                    && sc.semester_id == currentSemester.id).Count();

            //Si es mayor a 0, está confirmado para el semestre
            return count > 0;
        }

        public static Result ConfirmClasses(int studentId)
        {
            Result result = new Result();

            try
            {
                Model.dbModelDataContext model = new Model.dbModelDataContext();
                List<Model.Student_schedule> semesterSchedule = new List<Model.Student_schedule>();

                Model.Semester currentSemester = GetCurrentSemester();

                //Obtener semestre actual
                semesterSchedule = model.Student_schedules.Where(ss => ss.student_id == studentId
                                        && ss.Schedule.Semester.id == currentSemester.id).ToList();

                //Por cada clase que el estudiante haya inscrito, cambiar el estado
                //A cconfirmada o descartada
                foreach (var item in semesterSchedule)
                {
                    switch (item.status_id)
                    {
                        case (int)ClassStatus.DescartadaEstudiante:
                            item.status_id = (int)ClassStatus.Descartada;
                            break;
                        case (int)ClassStatus.Inscrita:
                            item.status_id = (int)ClassStatus.Confirmada;
                            break;
                        default: break;

                    }
                }

                //Guardar Información en la BD
                model.SubmitChanges();

                result.Status = true;
                result.Message = "Actualizado";
            }
            catch (Exception ex)
            {
                result.Status = false;
                result.Message = ex.Message;
            }


            return result;
        }

        public static GetConfirmedStudentReportResult GetConfirmedStudentReport(int semesterId)
        {
            GetConfirmedStudentReportResult result = new GetConfirmedStudentReportResult();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            var filteredList = from sc in model.Student_Confirmations
                               where sc.semester_id == semesterId
                               select new ConfirmedStudent
                               {
                                   CareerName = "Ing. Computación",
                                   GroupName = "1M1-CO",
                                   StudentId = sc.student_id,
                                   StudentName = sc.Student.first_name + ' ' + sc.Student.last_name,
                                   License = sc.Student.license,
                                   ConfirmationDate = Convert.ToDateTime(sc.confirmation_date)
                               };

            result.confirmedStudents = filteredList.ToList();

            return result;
        }

        public static TeacherReportResult GetTeacherReport(int semesterId, int teacherId, int classId)
        {
            TeacherReportResult result = new TeacherReportResult();

            Model.dbModelDataContext model = new Model.dbModelDataContext();

            var filteredList = from ss in model.Student_schedules
                               join sch in model.Schedules on ss.schedule_id equals sch.id
                               join t in model.Teachers on sch.teacher_id equals t.id
                               where sch.semester_id == semesterId && t.id == teacherId
                               && sch.class_id == classId && ss.status_id == (int)ClassStatus.Confirmada
                               select new TeacherReportRow
                               {
                                   CareerName = "Ing. Computación",
                                   GroupName = "1M1-CO",
                                   StudentId = (int)ss.student_id,
                                   StudentName = ss.Student.first_name + ' ' + ss.Student.last_name,
                                   License = ss.Student.license,
                                   ClassId = sch.Class.id,
                                   ClassName = sch.Class.name,
                                   TeacherId = sch.Teacher.id,
                                   TeacherName = sch.Teacher.name
                               };

            result.confirmedStudents = filteredList.GroupBy(f => f.StudentId).Select(s => s.FirstOrDefault()).ToList();

            return result;
        }

        /// <summary>
        /// Guarda el registro de confirmación del estudiante
        /// </summary>
        /// <param name="studentId">Id del estudiante</param>
        public static Result RegisterStudentConfirmation(int studentId)
        {
            //Objeto de tipo resultado, para retornar la respuesta
            Result result = new Result();

            try
            {
                //Instancia del modelo de base de datos
                Model.dbModelDataContext model = new Model.dbModelDataContext();

                //Obtener el semestre actual para guardar el registro
                Model.Semester currentSemster = GetCurrentSemester();

                //Objeto de tipo Student_Confirmation, el cual equivale a una nueva fila en la Base de datos
                Model.Student_Confirmation studentConfirmation = new Model.Student_Confirmation();

                //Añadir la infromación al objeto
                studentConfirmation.confirmation_date = DateTime.Now;
                studentConfirmation.student_id = studentId;
                studentConfirmation.semester_id = currentSemster.id;

                //Insertar el registro en la tabla 
                model.Student_Confirmations.InsertOnSubmit(studentConfirmation);
                model.SubmitChanges();

                result.Message = "Registro de confirmación guardado";
                result.Status = true;
            }
            catch (Exception ex)
            {
                result.Message = ex.Message;
                result.Status = false;
            }
            return result;

        }
    }
}