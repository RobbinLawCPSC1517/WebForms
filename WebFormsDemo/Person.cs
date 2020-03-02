using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Person
    {
        public int SIN { get; set; }
        public string Name { get; set; }
        public double Salary { get; set; }
        public string Phone { get; set; }
        public Person()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public Person(int sin,
                        string name,
                        double salary,
                        string phone)
        {
            SIN = sin;
            Name = name;
            Salary = salary;
            Phone = phone;
        }
    }
}