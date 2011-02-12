<g:each in="${jobs}" status="i" var="job">
  <h3><g:link controller="positions" action="job" id="${job.id}">${job.positionTitle}</g:link> </h3>
  <p><em>Date Posted:</em>  <g:formatDate format="d MMMMM yyyy" date="${job.postedDate}"/></p>
</g:each>
