<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>
	<div class="d-flex justify-content-center align-center">

		<div class="w-50 align-middle border border-info  border-3 mt-2"
			style="height: 500px">

			<h6 class="p-3 text-primary " style="text-align: center">
				<u> Batch Details :- </u>
			</h6>
			<div class="border border-secondary m-3 p-2">
				<table class="table table-hover border border-secondary ">
					<tbody>
						<tr class="table-primary fs-6">
							<th>Student Id</th>
							<td>${st.studentId}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>Student Name</th>
							<td>${st.studentFullName}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>Course Name</th>
							<td>${st.studentCourse}</td>
						</tr>
						<tr class="table-primary fs-6">
							<th>Fees Paid</th>
							<td>${st.feesPaid}</td>
						</tr>						
						<tr class="table-danger fs-6">
							<th>Batch Number</th>
							<td>${st.batchNumber}</td>
						</tr>						
					</tbody>
				</table>
				<form action="changebatch">
					<input type="text" name="studentid" value="${st.studentId}"
						hidden="true">
					<div class="bg-dark p-2  d-flex justify-content-between">
						<label for="batch" class="text-info"><b>Select 
								the Shift <br> Batch
						</b></label> 					
						<select class="select form-control-sm" name="batchNumber">
												<option value="#">Select Batch Number</option>
												<option value="FDJ-160">FDJ-160</option>
												<option value="REG-160">REG-160</option>
												<option value="FDJ-161">FDJ-161</option>
												<option value="REG-161">REG-161</option>
												<option value="FDJ-162">FDJ-162</option>
												<option value="REG-162">REG-162</option>
												<option value="FDJ-163">FDJ-163</option>
												<option value="REG-163">REG-163</option>
												<option value="FDJ-164">FDJ-164</option>
												<option value="REG-164">REG-164</option>
												<option value="FDJ-165">FDJ-165</option>
												<option value="REG-165">REG-165</option>
												<option value="FDJ-178">FDJ-178</option>
												<option value="REG-178">REG-178</option>
												<option value="FDJ-177">FDJ-177</option>
												<option value="REG-177">REG-177</option>
											</select> <label class="form-label select-label">Batch Number</label>
						
					</div>
					<div class="d-flex justify-content-center pt-5">
						<button class="btn btn-success btn-sm ">Add Batch</button>
					</div>
				</form>

			</div>
		</div>
	</div>

</body>
</html>