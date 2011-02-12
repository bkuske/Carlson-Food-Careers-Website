<html>
    <head>
        <title>Carlson Food Careers | Open Positions</title>
		<meta name="layout" content="main" />
    </head>
    <body>
      <div class="grid_10 prefix_1" id="content">
        <h1>Open Positions</h1>
          <p>Our clients do not compromise on their requirements. Please apply only for the position(s) for which you have the education, skills and experience.
          <p>Ethics, confidentiality and full disclosure are important to our long-term reputation.  We consider your resume to be your property. We do not submit it to any client until:
        <ul>
          <li>We have discussed the position description with you</li>
          <li>We feel you meet the client’s requirements</li>
          <li>We believe you would be a good fit for their corporate culture</li>
          <li>Their corporate culture would be a good fit for you</li>
        </ul>
        <p><strong>Please click on a job category</strong></p>
        <ul>
          <g:each var="category" in="${categories}">
            <li><g:link action="category" id="${category.id}">${category.name} (${JobOpportunity.countByCategoryAndVisible(category, true)})</g:link></li>
          </g:each>
        </ul>
      </div>
      <div class="grid_4 omegna prefix_1" id="r-side">
<g:render template="/page/sidebar" />
      </div>
    </body>
</html>