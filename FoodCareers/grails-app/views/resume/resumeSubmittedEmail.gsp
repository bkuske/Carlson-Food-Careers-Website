<%@ page contentType="text/html" %>
<p>A resume has been submitted on <g:formatDate format="EEE, MMM d, yyyy - h:mm a" value="${new Date()}"/><br/></p>


<div class="grid_10 prefix_1" id="content">
	<div class="form-group">
		<h3>Contact Information</h3>
		<label>Name:</label> <strong><g:fieldValue bean="${cmd}" field="name"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>Contact Phone Number:</label> <strong><g:fieldValue bean="${cmd}" field="phone"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>E-mail Address:</label> <strong><g:fieldValue bean="${cmd}" field="email"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<h3>Personal Information</h3>
		<label>Current/Most Recent Salary:</label> <strong><g:fieldValue bean="${cmd}" field="currentSalary"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>Current/Most Recent Bonus:</label> <strong><g:fieldValue bean="${cmd}" field="mostRecentBonus"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>Minimum Salary Needed:</label> <strong><g:fieldValue bean="${cmd}" field="minSalary"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>Why are you looking for a new job at this time?</label> <strong><g:fieldValue bean="${cmd}" field="why"/></strong>
	</div>
	<br/>
	<div class="form-group checkboxes">
		<em>Regions of Interest:</em></label><br/>
		<div class="regions">
			<g:each var="region" in="${cmd.regionsOfInterest}">
				<li><g:fieldValue bean="${region}" field="name"/></li>
			</g:each>
		</div>
	</div>
	<br/>
	<div class="form-group">
		<label>Specific cities or states of interest:</label> <strong><g:fieldValue bean="${cmd}" field="specificCities"/></strong>
	</div>
	<br/>
	<div class="form-group">
		<label>Citizen Status:</label> <strong><g:fieldValue bean="${cmd}" field="citizenStatus"/></strong>
	</div>
	<div class="form-group left">
		<h3>Position Code</h3>
		<g:fieldValue bean="${cmd}" field="positionCodes"/>
	</div>

	<div class="form-group left">
		<h3>Comments/Message</h3>
		<g:fieldValue bean="${cmd}" field="comments"/>
	</div>

</div><!--/content-->