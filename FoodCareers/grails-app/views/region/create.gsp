

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Create Region</title>         
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="list" action="list">Region List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Region</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${regionInstance}">
            <div class="errors">
                <g:renderErrors bean="${regionInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:regionInstance,field:'name','errors')}">
                                    <input type="text" id="name" name="name" value="${fieldValue(bean:regionInstance,field:'name')}"/>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
