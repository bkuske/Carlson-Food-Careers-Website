<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Carlson Food Careers | Submit your Resume</title>
    <meta name="layout" content="main" />
  </head>
	<body id="resumePage">
<g:uploadForm action="submit">

<div class="grid_10 prefix_1" id="content">
	<h1>Submit your Resume</h1>
		<p>Please enter the following information. Your information is kept strictly confidential and will not be released without your approval.  <strong>Our relationship with you will be built on mutual trust and respect.</strong></p>
		<div id="form-messages">
			<g:if test="${flash.error}">
				 <div id="error" class="errorbox">
						${flash.error}
				 </div>
			</g:if>
			<g:if test="${flash.message}">
				 <div class="messagebox">
						${flash.message}
				 </div>
			</g:if>
			<g:if test="${cmd.hasErrors()}">
				<div id="form-errors" class="errorbox">
					<g:renderErrors bean="${cmd}" />
				</div>
			</g:if>
		</div><!-- #form-messages -->
		<div class="form-group">
			<h3>Contact Information</h3>
			<label><strong>Name</strong> <br /><em>First, Last</em></label>
			<g:textField class="postion" name="name" value="${cmd.name}"/>
		</div>
		<div class="form-group">
			<label><strong>Contact Phone Number</strong></label>
			<g:textField class="postion" name="phone" value="${cmd.phone}"/>
		</div>
		<div class="form-group">
			<label><strong>E-mail Address</strong></label>
			<g:textField class="postion" name="email" value="${cmd.email}"/>
		</div>
		<div class="form-group">
			<h3>Personal Information</h3>
			<label><strong>Current/Most Recent Salary</strong> <br /><em>numbers only, no commas, periods or $</em></label>
			<g:textField class="postion" name="currentSalary" value="${cmd.currentSalary}"/>
		</div>
		<div class="form-group">
			<label><strong>Current/Most Recent Bonus</strong></label>
			<g:textField class="postion" name="mostRecentBonus" value="${cmd.mostRecentBonus}"/>
		</div>
		<div class="form-group">
			<label><strong>Minimum Salary Needed</strong> <br /><em>numbers only, no commas, periods or $</em></label>
			<g:textField class="postion" name="minSalary" value="${cmd.minSalary}"/>
		</div>
		<div class="form-group">
			<label><strong>Why are you looking for a new job at this time?</strong></label>
			<g:textField class="postion" name="why" value="${cmd.why}"/>
		</div>
		<div class="form-group checkboxes">
			<label><strong>Check here if you are willing to relocate</strong><br />
			<em>If so, please check all areas of interest:</em></label><br />
			<div class="regions">
				<g:each var="region" in="${regions}">
					<div class="region"><input class="tick" type="checkbox" name="regionOfInterest" value="${region.id}"/> <span>${region.name}</span></div>
				</g:each>
			</div>
		</div>
		<div class="form-group">
			<label><strong>List any specific cities or states of interest:</strong></label>
			<g:textField class="postion" name="specificCities" value="${cmd.specificCities}"/>
		</div>
		<div class="form-group">
			<label><strong>Citizen Status</strong></label>
			<select name="citizenStatus" class="status" value="${cmd.citizenStatus}">
				<option value="US Citizen">US Citizen</option>
				<option value="Student visa">Student visa</option>
				<option value="Green Card">Green Card</option>
				<option value="Other visa">Other visa</option>
			</select>
		</div>
		<div class="form-group left">
			<h3>Position Code</h3>
			<p>List Position Code(s) that you are interested in. <g:link controller="positions" action="list">Click here</g:link> to view Open Positions.</p>
			<g:textField class="postion" name="positionCodes" value="${cmd.positionCodes}"/>
		</div>

		<div class="form-group left">
			<h3>Resume Entry<span class="req">*</span></h3>
			<p>Upload resume as a file. Only Real Text (.rtf) and Microsoft Word (.doc) files will be accepted.</p>
			<input class="resume" type="file" name="resume" value="${cmd.resume}"/>
		</div>

		<div class="form-group left">
			<h3>Comments/Message</h3>
				<g:textArea name="comments" value="${cmd.comments}"/><br />
				<input class="submit" type="submit" value="Submit"/>
		</div>

	</div><!--/content-->
	<div class="grid_4 omega prefix_1" id="r-side">

</div>
</g:uploadForm>
</body>
</html>
