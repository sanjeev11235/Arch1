package com.sanjeev.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents(){
		
		//create an empty list
		List <Student> students =new ArrayList<Student>();
		
		//add sample data
		students.add(new Student("Mary","public","mary@luv2code.com"));
		students.add(new Student("John","Doe","john@luv2code.com"));
		students.add(new Student("Ajay","Rao","ajay@luv2code.com"));
		
		//return the list
		return students;
	}
}
