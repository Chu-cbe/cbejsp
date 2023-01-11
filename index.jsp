<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CBE</title>
<link href="asset/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
<script type="text/javascript" src="asset/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://requirejs.org/docs/release/2.3.5/minified/require.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>





</head>
<body>



	<div class="card border-dark ">
		<div class="card-header" style="background: #0086b3">

			<label class="visually-hidden text-white" for="inlineFormSelectPref">
				Select API Method: </label> <select class="form-select"
				id="inlineFormSelectPref">
				<option value="1">Product</option>
				
			</select>

		</div>
		<div class="card-body text-dark" style="background: #256D85">
			<div class="row text-white.">


				<div class="col text-left" style="background: #256D85;">
					<div class="card border-dark ">
						<div class="card-header text-white" style="background: #0086b3">
							Method Parameters
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								class="btn btn-primary" id="btn_action" type="button"
								value="Create Request JSON">
						</div>
						<div class="card-body bg-secondary" style="height: 1000px;">

							<table class="table table-bordered bg-white">
								<thead>
									<tr>
										<th scope="col">Name</th>
										<th scope="col">Value</th>
										<th scope="col">Include</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><label>TestCall</label></td>
										<td><select class="form-select" id="test_call"
											name="test_call">

												<option value="True" selected>True</option>
												<option value="False">False</option>

										</select></td>
										<td>Mandatory</td>


									</tr>
									<tr>
										<td>CleintInternalCallID</td>
										<td><input type="text" id="cicallid" name="cicallid"
											class="form-control" aria-describedby="emailHelp"
											placeholder="Enter" required> <p id="valid_cicid" style="color:red;">Please Enter Call ID</p></td>
											
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>CleintInternalCustomerID</td>
										<td><input type="text" id="cicid" name="cicid"
											class="form-control" aria-describedby="emailHelp"
											placeholder="Enter" required><p id="valid_cicusid" style="color:red;">Please Enter Customer ID</p></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>PersonalID</td>
										<td><input type="text" id="pid" name="pid "
											class="form-control" aria-describedby="emailHelp"
											placeholder="Enter"><p id="valid_pid" style="color:red;">Please Enter personal ID</p></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>DateOfBirth</td>
										<td><input type="date" id="dob" name="dob"
											class="form-control" aria-describedby="emailHelp"
											placeholder="Enter"><p id="valid_dateid" style="color:red;">Please Enter date of birth</p></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>Gender</td>
										<td><select class="form-select" id="gender" name="gender">

												<option value="M">Male</option>
												<option value="F">Female</option>

										</select></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>MartialStatus</td>
										<td><select class="form-select" id="m_status"
											name="m_status">
												<option value="single">Single</option>
												<option value="married">Married</option>
												<option value="divorced">Divorced</option>
												<option value="widowed">Widowed</option>
										</select></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>No of Dependents</td>
										<td><input type="text" id="no_dependents"
											name="no_dependents" class="form-control"
											aria-describedby="emailHelp" placeholder="Enter"><p id="valid_ndep" style="color:red;">Please Enter number dependents</p></td>
										<td>Mandatory</td>
									</tr>
									<tr>
										<td>Employment Status</td>
										<td><select class="form-select" id="emp_status"
											name="emp_status">
												<option value="unemployed">UnEmployed</option>
												<option value="employed">Employed</option>

										</select></td>
										<td>Mandatory</td>
									</tr>

									<tr>
										<td>Education</td>
										<td><select class="form-select" id="education"
											name="education">
												<option value="primary">Primary</option>
												<option value="secondary">Secondary</option>
												<option value="secondary">Graduate</option>

										</select></td>
										<td>Mandatory</td>
									</tr>
								</tbody>
							</table>

							<h5 class="card-title"></h5>
							<p class="card-text"></p>
						</div>
					</div>
				</div>
				<div class="col text-left" style="background: #256D85;">
					<div class="card border-dark ">
						<div class="card-header text-white" style="background: #0086b3">
							Request JSON
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
								class="btn btn-primary" id="btnn_action" type="button"
								value="Call method">
						</div>
						<div class="card-body" style="height: 500px; width: =300px">
							<h5 class="card-title"></h5>
							<p class="card-text" id="str_json_request"></p>
						</div>
					</div>
				</div>
				<div class="col text-left" style="background: #256D85;">
					<div class="card border-dark text-white">
						<div class="card-header" style="background: #0086b3">Response
							JSOn</div>
						<div class="card-body bg-info" style="height: 1000px">
							<h5 class="card-title"><pre id="res"></pre></h5>
							<p class="card-text"></p>
						</div>
					</div>

				</div>
			</div>
			<!-- hjhgjhgjh  -->

		</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		$('#valid_cicid').hide();
		$('#valid_cicusid').hide();
		$('#valid_pid').hide();
		$('#valid_ndep').hide();
		$('#valid_dateid').hide();
		//$('#dob').datepicker({ changeYear: true, changeMonth: true, yearRange: '1920:' + year + '', defaultDate: d});

		$("select").change(function() {
			
			
			$("#frm").toggle();
		});
		
		btn_action = document.getElementById("btn_action");
		btn_action.addEventListener("click", send_request);
		//btn_action = document.getElementById("btn_action");
		//btn_action.addEventListener("click", call_method);
		

		function send_request() {
			
		  var test_call = document.getElementById("test_call").value;
		  var cicallid =  document.getElementById("cicallid").value;
		  var cicid =  document.getElementById("cicid").value;
		  var pid =  document.getElementById("pid").value;
		  var dob =  document.getElementById("dob").value;
		  var gender =  document.getElementById("gender").value;
		  var m_status =  document.getElementById("m_status").value;
		  var no_dependents =  document.getElementById("no_dependents").value;
		  var emp_status =  document.getElementById("emp_status").value;
		  var education =  document.getElementById("education").value;
		 // var d = new Date();
		 // var year = d.getFullYear();
		  //d.setFullYear(year);
		 // $('#dob').datepicker({ changeYear: true, changeMonth: true, yearRange: '1920:' + year + '', defaultDate: d});

		  //var now =new Date();
		  
		  var res =  document.getElementById("res").value;
		 // var err =  document.getElementById("err").value;
			if(cicallid == ""){
				$('#valid_cicid').show();
				return;
			}
			else{
				$('#valid_cicid').hide();
				
				
				
			}
			if(cicid == ""){
				$('#valid_cicusid').show();
				return;
			}
			else
				{
				$('#valid_cicusid').hide();
				
				}
			
			if(pid == ""){
				$('#valid_pid').show();
				return;
				
			}
			else
				{
				
				$('#valid_pid').hide();
				
				}
			if(dob == ""){
				//|| (dob < now && now.getFullYear() - dob.getFullYear() < 120))){
				$('#valid_dateid').show();
				return;
			}
			
			else
				{
				
				$('#valid_dateid').hide();
				
				}
			if(no_dependents == ""){
				$('#valid_ndep').show();
				return;
			}
			else
				{
				
				$('#valid_ndep').hide();
				
				}
		  //alert(test_call + " " + cicallid + " " + cicid + " " + pid + " " + dob + " " + gender + " " + m_status + " " +no_dependents + " " + emp_status + " " + education);
		  
		  var formObject = {
   				"Test Call ": test_call,"CleintInternalCallID" : cicallid, "CleintInternalCustomerID":cicid, "PersonalID" : pid,
   				"DateOfBirth" : dob, "Gender":gender, "MartialStatus": m_status, "No of Dependents":no_dependents, "Employment Status": emp_status,
   				"Education" : education
   			};	
		  const myJSON = JSON.stringify(formObject,null, 2);
		  document.getElementById("str_json_request").innerHTML = myJSON;
		  
		  
		 //if{(CleintInternalCallID=="")
			 
			 // document.getElementById("err").innerHTML="Enter your client Id";
			  
			  
		 //}
		  
		  
		  
		  
		 // const inpObj = document.getElementById("id1");
		  /*
	      const  rqst = new XMLHttpRequest();
		  rqst.open("GET","https://dog.ceo/api/breeds/list/all");
		  rqst.setRequestHeader("Content-Type", "application/json");

		  rqst.onload =()=>console.log(rqst.responseText);
		  rqst.send(data);
		  */
			

			
		 
		  
		 
		}
		

	});
	
	
	
	
	
	
	
	
	$(document).ready(function() {
		$("select").change(function() {
			$("#frm").toggle();
				
	});
		
		btn_action = document.getElementById("btnn_action");
		btn_action.addEventListener("click", call_api);
		
		
		
		/*function call_api2(){
			$.getJSON("asset/test.json", function(json) {
			 let res = json.response;
			 console.log("app " +res.ScoreGroup);
			});
		}
		*/
		 function call_api() {

		     const request =new XMLHttpRequest();
		     request.open("GET", "https://dog.ceo/api/breeds/list/all");
		     request.responseType='JSON';
		     request.send();
		     request.onload=()=>{
		    	 
		    	 console.log(request);
		    	 if(request.status===200){
		    		 
		    		  // console.log(JSON.parse(request.response));
		    		  console.log('respone',request.response);
		    		  
		    		  let a = JSON.parse(request.response);
		    		  
		    		  //alert(a.message.australian[0]);
		    		  // let resp = ""
		    		  // for(let i = 0; i < a.message.bulldog.length; i++){
		    			  //alert(a.message.bulldog[i] + "\n");
		    			 // resp = resp + a.message.bulldog[i] + " ";
		    		  // }
		    		  
		    		  document.getElementById("res").innerHTML = JSON.stringify(a, null, 1);
		    	 }
		    		  else
		    			  {
		    			  console.log('${request.status}');
		    			  }
		     }
		     }
		    			  
			 
	 
	     
		     });	
	
</script>