<%--

    Copyright 2012 Netflix, Inc.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

--%>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <title>Application Security Access</title>
</head>
<body>
  <div class="body">
    <h1>Application Security Access</h1>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>
    <g:form method="post">
      <input type="hidden" id="name" name="name" value="${name}"/>
      <div class="dialog">
        <table>
          <tbody>
          <tr class="prop">
            <td class="name">Application Name:</td>
            <td class="value">${app.name}</td>
          </tr>
          <tr class="prop">
            <td class="name">Security Group Name:</td>
            <td class="value">${name}</td>
          </tr>
          <tr class="prop">
            <td class="name">Security Group Description:</td>
            <td class="value">${group.description}</td>
          </tr>
          <tr>
            <td class="name">Security Groups Accessible from this Application:</td>
            <td class="value">
              <table>
                <tbody>
                <g:each var="g" in="${groups}">
                  <tr>
                    <td>
                      <g:checkBox name="selectedGroups" value="${g.key}" checked="${g.value[0]}"/> ${g.key}
                      <input type="text" id="${g.key}" name="${g.key}" value="${g.value[1]}"/>
                    </td>
                  </tr>
                </g:each>
                </tbody>
              </table>
            </td>
          </tr>
          </tbody>
        </table>
      </div>
      <div class="buttons">
        <g:buttonSubmit class="save" value="Update Security Groups" action="securityUpdate"/>
      </div>
    </g:form>
  </div>
</body>
</html>
