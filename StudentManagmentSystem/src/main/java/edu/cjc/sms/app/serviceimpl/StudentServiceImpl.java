package edu.cjc.sms.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.cjc.sms.app.model.Student;
import edu.cjc.sms.app.repositary.StudentRepositary;
import edu.cjc.sms.app.servicei.StudentServiceI;

@Service
public class StudentServiceImpl implements StudentServiceI
{

	@Autowired
	StudentRepositary sr;
	
	@Override
	public void saveData(Student s) {
		
		sr.save(s);
		
	}

	@Override
	public List<Student> getAllStudent() {
		
		return sr.findAll();
	}

	@Override
	public List<Student> getStudentByBatch(String batchNumber) {
		
		return sr.findAllByBatchNumber(batchNumber);
	}

	@Override
	public Student getSingleData(int studentId) {
		
		return sr.findById(studentId).get();
	}

	@Override
	public void updateStudentFees(int studentId, double ammount) {
		
		Student s	= sr.findById(studentId).get();
		s.setFeesPaid(s.getFeesPaid()+ammount);
		sr.save(s);
	}

	@Override
	public void deleteStudent(int studentId) {
		
		sr.deleteById(studentId);
	}


	@Override
	public void updateStudentBatch(int studentId, String batchNumber) {
		
		Student s = sr.findById(studentId).get();
		s.setBatchNumber(batchNumber);
		sr.save(s);
		
	}

	@Override
	public Student getSingleBatch(int studentId) {
		
		return sr.findById(studentId).get();
	}



	

}










