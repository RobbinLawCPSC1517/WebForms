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
        
        private static List<Person> PersonData = new List<Person>();

        protected void Page_Load(object sender, EventArgs e)
        {
            MessageLabel.Text = "";
        }
        protected void Add_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool found = false;
                foreach (var item in PersonData)
                {
                    if (item.ID == int.Parse(ID.Text))
                    {
                        found = true;
                    }
                }
                if (found)
                {
                    MessageLabel.Text = "Record already exists. Data not added.";
                }
                else
                {
                    Person newitem = new Person(int.Parse(ID.Text), Name.Text, double.Parse(Salary.Text), Phone.Text);
                    PersonData.Add(newitem);
                    PersonList.DataSource = PersonData;
                    PersonList.DataBind();
                }
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            ID.Text = "";
            Name.Text = "";
            Salary.Text = "";
            Phone.Text = "";
        }
    }
}