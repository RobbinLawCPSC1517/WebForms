using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsDemo
{
    public partial class PersonForm : System.Web.UI.Page
    {
        
        private static List<Person> StudentData = new List<Person>();

        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }
        protected void AddStudent_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool found = false;
                foreach (var item in StudentData)
                {
                    if (item.StudentID == int.Parse(StudentID.Text))
                    {
                        found = true;
                    }
                }
                if (found)
                {
                    MessageLabel.Text = "Student already on record. Data not added.";
                }
                else
                {
                    Person newitem = new Person(int.Parse(StudentID.Text), StudentName.Text, double.Parse(Credits.Text), EmergencyPhoneNumber.Text);
                    StudentData.Add(newitem);
                    StudentList.DataSource = StudentData;
                    StudentList.DataBind();
                }
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            StudentID.Text = "";
            StudentName.Text = "";
            Credits.Text = "";
            EmergencyPhoneNumber.Text = "";
        }
    }
}