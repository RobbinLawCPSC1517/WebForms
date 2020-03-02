using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Person
    {
        public string SIN { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public double Wage { get; set; }
        public string Phone { get; set; }
        public Person()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public Person(string sin,
                        string name,
                        int age,
                        double wage,
                        string phone)
        {
            SIN = sin;
            Name = name;
            Age = age;
            Wage = wage;
            Phone = phone;
        }
    }
}