

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Region List</title>
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="create" action="create">New Region</g:link></span>
        </div>
        <div class="body">
            <h1>Region List</h1>
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
                    <g:each in="${regionInstanceList}" status="i" var="regionInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${regionInstance.id}">${fieldValue(bean:regionInstance, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:regionInstance, field:'name')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${regionInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
