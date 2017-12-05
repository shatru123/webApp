

<html>
<%@ include file="Header.jsp"%>
<head>
<script type="text/javascript" src="validate.js"></script>
</head>

<body bgcolor="1E6E79">


	<form action="#" name="BookProject" onSubmit="return(validate());"
		bgcolor="#808080">
		<table cellpadding="8" width="60%" bgcolor="1E6E79" align="center" cellspacing="2">

			<tr>
				<td colspan=2><font size=6 style=""><b>Personal Details</b></font></td>
			</tr>


			<tr>
				<td>Name</td>
				<td>Last Name</td>
			</tr>
			<br></br>
			<tr>
				<td><input type=text name=textnames id="textname" size="30"></td>
				<td><input type=text Lastname=textnames id="textname" size="30"></td>
			</tr>


			<tr>
				<td>Personal Address</td>
				<td>Gender</td>
				<br></br>
			<tr>
				<td><input type="text" name="personaladdress"
					id="personaladdress" size="30"></td>
				<td><input type="radio" name="sex" value="male" size="10">Male
					<input type="radio" name="sex" value="Female" size="10">Female</td>
			</tr>




			<tr>
				<td>Course</td>
				<td>Branch</td>
				<br></br>
			<tr>
				<td><select name="Course">
						<option value="-1" selected>select..</option>
						<option value="BE/B.Tech">BE/B.TECH</option>
						<option value="MCA">MCA</option>
						<option value="MBA">MBA</option>
						<option value="BCA">BCA</option>
						<option value="Diploma">DIPLOMA</option>
				</select></td>
				<td><select name="Branch">
						<option value="-1" selected>select..</option>
						<option value="Computer">COMPUTER ENGG. & SCIENCE</option>
						<option value="Computer">INFORMATION TECHNOLOGY</option>
						<option value="Entc">ENTC</option>
				</select></td>
			</tr>



			<tr>
				<td>College Name / Institute Name</td>
				<td>Mobile No</td>
			</tr>
			<br></br>
			<tr>
				<td><input type="text" name="collegename" id="collegename"
					size="30"></td>
				<td><input type="text" name="mobileno" id="mobileno" size="30"></td>
			</tr>


			<tr>
				<td>City</td>
				<td>State</td>
				<br></br>
			<tr>
				<td><select name="District">
						<option value="-1" selected>select..</option>
						<option value="Ahmednagar">AHMEDNAGAR</option>
						<option value="Akola">AKOLA</option>
						<option value="Amravati">AMRAVATI</option>
						<option value="Aurangabad">AURANGABAD</option>
						<option value="Beed">BEED</option>
						<option value="Bhandara">BHANDARA</option>
						<option value="Buldhana">BULDHANA</option>
						<option value="Chandrapur">CHANDRAPUR</option>
						<option value="Dhule">DHULE</option>
						<option value="Gadchiroli">GADCHIROLI</option>
						<option value="Gondia">GONDIA</option>
						<option value="Hingoli">HINGOLI</option>
						<option value="Jalgaon">JALGAON</option>
						<option value="Jalna">JALNA</option>
						<option value="Kolhapur">KOLHAPUR</option>
						<option value="Latur">LATUR</option>
						<option value="Mumbai">MUMBAI</option>
						<option value="Nagpur">NAGPUR</option>
						<option value="Nanded">NANDED</option>
						<option value="Nandurbar">NANDURBAR</option>
						<option value="Nashik">NASHIK</option>
						<option value="Osmanabad">OSMANABAD></option>
						<option value="Parbhni">PARBHANI</option>
						<option value="Pune">PUNE</option>
						<option value="Raigad">RAIGAD</option>
						<option value="Ratnagiri">RATNAGIRI</option>
						<option value="Sangli">SANGLI</option>
						<option value="Satara">SATARA</option>
						<option value="Sindhudurg">SINDHUDURG</option>
						<option value="Solapur">SOLAPUR</option>
						<option value="Thane">THANE</option>
						<option value="Wardha">WARDHA</option>
						<option value="wASHIM">WASHIM</option>
						<option value="Yavatmal">YAVATMAL</option>
				</select> </select></td>
				<td><select Name="State">
						<option value="-1" selected>select..</option>
						<option value="New Delhi">MAHARASHTRA</option>
				</select></td>
			</tr>

			<tr>
				<td>Pin Code</td>
				<td>Email Id</td>
			</tr>
			<br></br>
			<tr>
				<td><input type="text" name="pincode" id="pincode" size="30"></td>
				<td><input type="text" name="emailid" id="emailid" size="30"></td>
			</tr>


			<!-- <td><input type="checkbox" name="love" value="love" id="love"><label for="love">I agree with all terms and condition . </label></td> -->
			<td><input type="checkbox" name="tandc"  id="tandc"><label for="love">I agree with all terms and condition . </label></td>

			<tr>
				<td><input type="reset" value="RESET"></td>
				<td colspan="4"><input type="submit" value="SUBMIT" /></td>
			</tr>

		</table>
	</form>
</body>
</html>
<%@ include file="Footer.jsp"%>