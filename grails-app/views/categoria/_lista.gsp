<br/>
<g:if test="${categorias.size() > 0}">
    <table>
      <colgroup>
        <col width="50%">
        <col width="50%">
      </colgroup>
      <thead>
        <tr>
          <th>Categoria</th>
          <th>Ações</th>
        </tr>
      </thead>

    <g:each var="categoria" in="${categorias}">
      <tbody>
        <tr>
          <td>${categoria.nome}</td>
          <td>
          <nav>
            <g:remoteLink controller="categoria" action="alterar" update="formCategorias" id="${categoria.id}">Editar</g:remoteLink>
            &nbsp;
            <a href="#" onclick="excluir('${categoria.id}')">Deletar</a>
          </nav>
          </td>
        </tr>
      </tbody>
    </g:each>
    </table>
</g:if>
<g:else>
  <h3> Não há categorias cadastradas! </h3>
</g:else>
<br/>
