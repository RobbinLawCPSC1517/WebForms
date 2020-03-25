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
            MessageLabel.Text = "";
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            MessageLabel.Text = "SIN = " + SIN.Text + " Name = " + Name.Text;
            if (Page.IsValid)
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
                    MessageLabel.Text = "Record already exists.";
                }
                else
                {
                    Person newitem = new Person(SIN.Text, Name.Text, int.Parse(Age.Text), double.Parse(Wage.Text), Phone.Text);
                    People.Add(newitem);
                    PeopleGridView.DataSource = People;
                    PeopleGridView.DataBind();
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