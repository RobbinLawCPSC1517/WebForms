using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebFormsDemo
{
    public class Person
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double Salary { get; set; }
        public string Phone { get; set; }
        public Person()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public Person(int id,
                        string name,
                        double salary,
                        string phone)
        {
            ID = id;
            Name = name;
            Salary = salary;
            Phone = phone;
        }
    }
}