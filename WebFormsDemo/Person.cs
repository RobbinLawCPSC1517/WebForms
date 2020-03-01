using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Person
    {
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public double Credits { get; set; }
        public string EmergencyPhoneNumber { get; set; }
        public Person()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public Person(int studentid,
                        string studentname,
                        double credits,
                        string emergencyphonenumber)
        {
            StudentID = studentid;
            StudentName = studentname;
            Credits = credits;
            EmergencyPhoneNumber = emergencyphonenumber;
        }
    }
}