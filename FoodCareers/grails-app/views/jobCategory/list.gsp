

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Job Category List</title>
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="create" action="create">New Job Category</g:link></span>
        </div>
        <div class="body">
            <h1>Job Category List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table class="list">
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="name" title="Name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${jobCategoryInstanceList}" status="i" var="jobCategoryInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${jobCategoryInstance.id}">${fieldValue(bean:jobCategoryInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:jobCategoryInstance, field:'name')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${jobCategoryInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
