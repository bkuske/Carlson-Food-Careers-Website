<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        
        <title>Carlson Food Careers | Open Position(s) List</title>
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="create" action="create">New Open Position</g:link></span>
        </div>
        <div class="body">
			<h1>Open Position(s) List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table class="job-cat-list">
                    <thead>
                        <tr>
                        
                   	        
                                <g:sortableColumn property="positionTitle" title="Position Title" />

                   	        <th>Category</th>
                   	    
                   	        <th>Region</th>
                   	    
                   	        <g:sortableColumn property="postedDate" title="Posted Date" />

                                <g:sortableColumn property="visible" title="Visible" />

                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobOpportunityInstanceList}" status="i" var="jobOpportunityInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            
                            <td><g:link action="edit" id="${jobOpportunityInstance.id}">${jobOpportunityInstance.positionTitle}</g:link></td>
                            
                            <td>${jobOpportunityInstance.category.name}</td>
                        
                            <td>${jobOpportunityInstance.region.name}</td>
                        
                            <td><g:formatDate format="MM/dd/yyyy" date="${jobOpportunityInstance.postedDate}"/></td>

                            <td><input  type="checkbox" disabled="true" ${jobOpportunityInstance.visible == true ? "checked" : ""} /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${jobOpportunityInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
