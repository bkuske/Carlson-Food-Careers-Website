<html>
    <head>
        <title>Carlson Food Careers | ${job.positionTitle}</title>
		<meta name="layout" content="main" />
    </head>
    <body>
      <div class="grid_10 prefix_1" id="content">
        <h1>Open Positions</h1>
        <script type="text/javascript" src="http://w.sharethis.com/button/sharethis.js#publisher=c3ee7bec-a7af-44b6-b451-ca696189ae5f&amp;type=website"></script>
        <h2>${job.positionTitle}</h2>
        <table class="job">
        <tbody>
        <tr>
        <td><strong>Posted Date:</strong></td><td><g:formatDate format="MM/dd/yyyy" date="${job.postedDate}"/></td>
        </tr>
        <tr class="even">
        <td><strong>Salary Range:</strong></td><td> ${job.salaryRange}</td>
        </tr>
        <tr>
        <td colspan="2"> ${job.description}</td>
        </tr>
        <tr class="even">
        <td><strong>Job Code:</strong></td><td> ${job.jobCode}</td>        
        </tr>
        <tr>
        <td><strong>Location:</strong></td><td> ${job.region.name}</td>        
        </tr>        
        </tbody>
        </table>

        <g:link class="back-link submit" controller="positions" action="category" id="${category.id}">< Back</g:link>
        <g:link class="resume-link submit" controller="resume" params="${[jobid:job.jobCode]}">Submit Resume ></g:link>
        <script type="text/javascript" src="http://w.sharethis.com/button/sharethis.js#publisher=c3ee7bec-a7af-44b6-b451-ca696189ae5f&amp;type=website"></script>
      
        
      </div>
      <div class="grid_4 omega prefix_1" id="r-side">

           <g:render template="sideCategory" model="['categories':categories]" />
           
      </div>
    </body>
</html>
