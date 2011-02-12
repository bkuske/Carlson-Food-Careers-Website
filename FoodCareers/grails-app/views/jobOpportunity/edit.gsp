<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Edit Job Opportunity</title>
        <resource:dateChooser />
        <ckeditor:resources />

        <ckeditor:config
          skin ="v2"
          width="525"/>

        <ckeditor:config var="toolbar">
          [
              ['Cut','Copy','Paste','PasteText','-', 'SpellChecker'],
              ['Undo','Redo','-','Find','Replace','-','RemoveFormat'],
              '/',
              ['Bold','Italic','Underline','Strike'],
              ['NumberedList','BulletedList','-','Outdent','Indent'],
              ['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
              ['Link','Unlink']
          ]
        </ckeditor:config>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" action="list">Open Position List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Open Position</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Open Position</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${jobOpportunityInstance}">
            <div class="errors">
                <g:renderErrors bean="${jobOpportunityInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${jobOpportunityInstance?.id}" />
                <input type="hidden" name="version" value="${jobOpportunityInstance?.version}" />
                <div class="dialog">
                    <table class="list">
                        <tbody>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="positionTitle">Position Title:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'positionTitle','errors')}">
                                    <input type="text" id="positionTitle" name="positionTitle" value="${fieldValue(bean:jobOpportunityInstance,field:'positionTitle')}"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="category">Category:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'category','errors')}">
                                    <g:select optionValue="name" optionKey="id" from="${JobCategory.list()}" name="category.id" value="${jobOpportunityInstance?.category?.id}" noSelection="['null':'']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="region">Region:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'region','errors')}">
                                    <g:select optionValue="name" optionKey="id" from="${Region.list()}" name="region.id" value="${jobOpportunityInstance?.region?.id}" noSelection="['null':'']"></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="postedDate">Posted Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'postedDate','errors')}">
                                   
                                  <richui:dateChooser name="postedDate" format="MM/dd/yyyy" value="${jobOpportunityInstance?.postedDate}" />

                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td colspan="2" valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'description','errors')}">
                                    <ckeditor:editor name="description" >
                                        ${fieldValue(bean:jobOpportunityInstance,field:'description').decodeHTML()}
                                    </ckeditor:editor>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="desiredSkills">Desired Skills:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'desiredSkills','errors')}">
                                    <input type="text" id="desiredSkills" name="desiredSkills" value="${fieldValue(bean:jobOpportunityInstance,field:'desiredSkills')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="jobCode">Job Code:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'jobCode','errors')}">
                                    <input type="text" id="jobCode" name="jobCode" value="${fieldValue(bean:jobOpportunityInstance,field:'jobCode')}"/>
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="salaryRange">Salary Range:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'salaryRange','errors')}">
                                    <input type="text" id="salaryRange" name="salaryRange" value="${fieldValue(bean:jobOpportunityInstance,field:'salaryRange')}"/>
                                </td>
                            </tr>

                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="visible">Visible:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'visible','errors')}">
                                    <g:checkBox name="visible" value="${jobOpportunityInstance.visible}" />

                                </td>
                            </tr>
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="hideFromHomePage">Hide from Home Page:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:jobOpportunityInstance,field:'hideFromHomePage','errors')}">
                                    <g:checkBox name="hideFromHomePage" value="${jobOpportunityInstance.hideFromHomePage}" />

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
