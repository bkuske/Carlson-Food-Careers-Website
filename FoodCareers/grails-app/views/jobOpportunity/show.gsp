<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Show JobOpportunity</title>
    </head>
    <body>
        <div class="nav">
            
            <span class="menuButton"><g:link class="list" action="list">Open Position List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Open Position</g:link></span>
        </div>
        <div class="body">
            <h1>Show Open Position</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table class="list">
                    <tbody>

                        <tr class="prop">
                            <td valign="top" class="name">Position Title:</td>

                            <td valign="top" class="value">${fieldValue(bean:jobOpportunityInstance, field:'positionTitle')}</td>

                        </tr>
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name">Category:</td>
                            
                            <td valign="top" class="value"><g:link controller="jobCategory" action="show" id="${jobOpportunityInstance?.category?.id}">${jobOpportunityInstance?.category?.name.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Region:</td>
                            
                            <td valign="top" class="value"><g:link controller="region" action="show" id="${jobOpportunityInstance?.region?.id}">${jobOpportunityInstance?.region?.name.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Posted Date:</td>
                            
                            <td valign="top" class="value"><g:formatDate format="MM/dd/yyyy" date="${jobOpportunityInstance.postedDate}"/></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Description:</td>
                            
                            <td valign="top" class="value">${jobOpportunityInstance.description}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Desired Skills:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobOpportunityInstance, field:'desiredSkills')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Job Code:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobOpportunityInstance, field:'jobCode')}</td>
                            
                        </tr>
                    
                        
                    
                        <tr class="prop">
                            <td valign="top" class="name">Salary Range:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:jobOpportunityInstance, field:'salaryRange')}</td>
                            
                        </tr>

                        <tr class="prop">
                            <td valign="top" class="name">Visible:</td>

                            <td valign="top" class="value"><input  type="checkbox" disabled="true" ${jobOpportunityInstance.visible == true ? "checked" : ""} /></td>

                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${jobOpportunityInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
