<br/>
<g:if test="${tarefas.size() > 0}">
    <table>
      <colgroup>
        <col width="40%">
        <col width="15%">
        <col width="15%">
        <col width="30%">
      </colgroup>
      <thead>
        <tr>
          <th>Tarefa</th>
          <th>Deadline</th>
          <th>Categoria</th>
          <th>Ações</th>
        </tr>
      </thead>

    <g:each var="tarefa" in="${tarefas}" status="i">
      <tbody>
        <tr class="${((i % 2) == 0 ? 'even' : 'odd')}
							${(tarefa.deadline < new Date() - 1 ? 'overdue' : 'null')}
							${((((tarefa.deadline.time - (new Date()-1).time) / (24 * 60 * 60 * 1000)) <= 5) &&
							(((tarefa.deadline.time - (new Date()-1).time) / (24 * 60 * 60 * 1000)) >= 0) ? 'warning': 'null')}">
          <td class="${tarefa.completada ? 'taskCompleted': ''}">${tarefa.nome}</td>
          <td class="${tarefa.completada ? 'taskCompleted': ''}">${tarefa.deadline}</td>
          <td class="${tarefa.completada ? 'taskCompleted': ''}">${tarefa.categoria?.nome}</td>
          <td>

              <nav>
            <g:if test="${!tarefa.completada}">

                  <g:remoteLink controller="tarefa" action="alterar" update="formTarefas" id="${tarefa.id}" class="editRow">Editar</g:remoteLink>
                  &nbsp;
                  <g:remoteLink controller="tarefa" action="completar" update="completa" id="${tarefa.id}" class="completeRow">Completar</g:remoteLink>
                  &nbsp;
            </g:if>
                  <a href="#" onclick="excluir('${tarefa.id}')" class="deleteRow">Deletar</a>
              </nav>
          </td>
        </tr>
      </tbody>
    </g:each>
    </table>
</g:if>
<g:else>
  <h3> Não há tarefas cadastradas! </h3>
</g:else>
<br/>
