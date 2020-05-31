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
        
        private static List<Person> People = new List<Person>();

        protected void Page_Load(object sender, EventArgs e)
        {
            //MessageLabel.InnerHtml = "";
        }
        protected Exception GetInnerException(Exception ex)
        {
            while (ex.InnerException != null)
            {
                ex = ex.InnerException;
            }
            return ex;
        }
        protected void ShowMessage(string message, string cssclass)
        {
            MessageLabel1.Attributes.Add("class", cssclass);
            MessageLabel1.InnerHtml = message;
        }
        protected bool Validation(object sender, EventArgs e)
        {
            int age = 0;
            double wage = 0;
            if (string.IsNullOrEmpty(SIN.Text))
            {
                ShowMessage("SIN is required", "alert alert-info");
                return false;
            }
            if (string.IsNullOrEmpty(Name.Text))
            {
                ShowMessage("Name is required", "alert alert-info");
                return false;
            }
            if (string.IsNullOrEmpty(Age.Text))
            {
                ShowMessage("Age is required", "alert alert-info");
                return false;
            }
            if (!int.TryParse(Age.Text, out _))
            {
                ShowMessage("Age must be a whole number", "alert alert-info");
                return false;
            }
            if (int.TryParse(Age.Text, out age))
            {
                if (age < 0 || age > 150)
                {
                    ShowMessage("Age must be between 0 and 150", "alert alert-info");
                    return false;
                }
            }
            if (string.IsNullOrEmpty(Wage.Text))
            {
                ShowMessage("Wage is required", "alert alert-info");
                return false;
            }
            if (!double.TryParse(Wage.Text, out _))
            {
                ShowMessage("Wage must be a real number", "alert alert-info");
                return false;
            }
            if (double.TryParse(Wage.Text, out wage))
            {
                if (wage < 0.00 || wage > 200.00)
                {
                    ShowMessage("Wage must be between $0.00 and $200.00", "alert alert-info");
                    return false;
                }
            }
            if (string.IsNullOrEmpty(Phone.Text))
            {
                ShowMessage("Phone Number is required", "alert alert-info");
                return false;
            }
            return true;
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            //MessageLabel.InnerHtml = "SIN = " + SIN.Text + " Name = " + Name.Text;
            var isValid = Validation(sender, e);
            if (isValid)
            {
                bool found = false;
                foreach (var item in People)
                {
                    if (item.SIN == SIN.Text)
                    {
                        found = true;
                    }
                }
                if (found)
                {
                    //MessageLabel.InnerHtml = "Record already exists.";
                    ShowMessage("Record already exists.", "alert alert-info");
                }
                else
                {
                    Person newitem = new Person(SIN.Text, Name.Text, int.Parse(Age.Text), double.Parse(Wage.Text), Phone.Text);
                    People.Add(newitem);
                    PeopleGridView.DataSource = People;
                    PeopleGridView.DataBind();
                    ShowMessage("Record added.", "alert alert-success");
                }
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            SIN.Text = "";
            Name.Text = "";
            Age.Text = "";
            Wage.Text = "";
            Phone.Text = "";
        }
    }
}