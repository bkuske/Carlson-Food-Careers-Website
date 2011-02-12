

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Edit Job Category</title>
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="list" action="list">Job Category List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Job Category</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Job Category</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobCategoryInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobCategoryInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${jobCategoryInstance?.id}" />
                <input type="hidden" name="version" value="${jobCategoryInstance?.version}" />
                <div class="dialog">
                    <table class="list">
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobCategoryInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:jobCategoryInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
