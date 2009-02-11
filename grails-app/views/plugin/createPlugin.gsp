<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>New Plugin</title>
    <meta content="subpage" name="layout" />
</head>
<body>
    <div id="contentPane">
        <div id="infoLinks" style="margin-left:520px;">
            <g:link controller="plugin" action="list">All Plugins</g:link><br/>
        </div>
            <h1>Create Plugin</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${pluginInstance}">
            <div class="errors">
                <g:renderErrors bean="${pluginInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="title">Title:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'title','errors')}">
                                    <input type="text" id="title" name="title" value="${fieldValue(bean:pluginInstance,field:'title')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="description">Description:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'description','errors')}">
                                    <input type="text" id="description" name="description" value="${fieldValue(bean:pluginInstance,field:'description')}"/>
                                </td>
                            </tr> 
                        
                            %{--<tr class="prop">--}%
                                %{--<td valign="top" class="name">--}%
                                    %{--<label for="installation">Installation:</label>--}%
                                %{--</td>--}%
                                %{--<td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'installation','errors')}">--}%
                                    %{--<input type="text" id="installation" name="installation" value="${fieldValue(bean:pluginInstance,field:'installation')}"/>--}%
                                %{--</td>--}%
                            %{--</tr> --}%
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="faq">Faq:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'faq','errors')}">
                                    <input type="text" id="faq" name="faq" value="${fieldValue(bean:pluginInstance,field:'faq')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="screenshots">Screenshots:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'screenshots','errors')}">
                                    <input type="text" id="screenshots" name="screenshots" value="${fieldValue(bean:pluginInstance,field:'screenshots')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="author">Author:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'author','errors')}">
                                    <input type="text" id="author" name="author" value="${fieldValue(bean:pluginInstance,field:'author')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="authorEmail">Author Email:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'authorEmail','errors')}">
                                    <input type="text" id="authorEmail" name="authorEmail" value="${fieldValue(bean:pluginInstance,field:'authorEmail')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="official">SpringSource Official:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:pluginInstance,field:'official','errors')}">
                                    <g:checkBox name="official" value="${pluginInstance?.official}" ></g:checkBox>
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