<html>
    <head>
        <title>Carlson Food Careers</title>
        <meta name="layout" content="main" />
    </head>
    <body>
      <div class="grid_10 prefix_1" id="content">
        <h1>Open Positions</h1>
        <h2>${category.name}</h2>

        <table>
          <thead>
              <tr>
                <g:sortableColumn property="postedDate" title="Posted Date" />
                <g:sortableColumn property="positionTitle" title="Position Title" />
                <th>Salary Range</th>
                <th>Location</th>
              </tr>
          </thead>
          <tbody>
          <g:each in="${jobs}" status="i" var="opportunity">
              <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                  <td><g:formatDate format="MM/dd/yyyy" date="${opportunity.postedDate}"/></td>

                  <td><g:link action="job" id="${opportunity.id}">${fieldValue(bean:opportunity, field:'positionTitle')} (${fieldValue(bean:opportunity, field:'jobCode')})</g:link></td>

                  <td>${fieldValue(bean:opportunity, field:'salaryRange')}</td>


                  <td>${opportunity.region.name}</td>

              </tr>
          </g:each>

          
          
          </tbody>
        </table>
         <g:link class="submit" controller="positions" id="${category.id}">< Back</g:link>
      </div>
      <div class="grid_4 omega prefix_1" id="r-side">

        <g:render template="sideCategory" model="['categories':categories]" />

      </div>
    </body>
</html>