<ul>
  <li class="header"><h3>Categories</h3></li>
  <g:each var="category" in="${categories}">
    <li><g:link action="category" id="${category.id}">${category.name} (${JobOpportunity.countByCategoryAndVisible(category, true)})</g:link></li>
  </g:each>
</ul>