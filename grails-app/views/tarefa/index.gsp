<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main"/>
        <title>Tarefas</title>
        <g:javascript library="jquery" />

        <script type="text/javascript">
          function carregarLista(){
            <g:remoteFunction controller="tarefa" action="lista" update="listaTarefas" />
          }
          function excluir(id){
            if(confirm("Deseja realmente excluir?")){
              <g:remoteFunction controller="tarefa" action="excluir" update="listaTarefas" id="'+id+'"/>

            }
          }
        </script>

    </head>
    <body>
      <header>
        <span>Lista de Tarefas</span>
      </header>
      <section>
        <div id="completa"></div>
        <div id="formTarefas"></div>
      </section>
      <section>
        <div id="listaTarefas">
          <g:render template="lista" model="[tarefas: tarefas]"> </g:render>
        </div>
      </section>
      <section>
        <nav>
        <g:remoteLink controller="tarefa" action="adicionar" update="formTarefas">Adicionar Tarefas</g:remoteLink>
        &nbsp;&nbsp;
        <g:link controller="categoria" action="index">Adicionar Categorias</g:link>
      </nav>
      </section>
        <g:if test="${tarefas.size() > 0}">
          <footer>Você tem ${tarefaCount - tarefasCompletadasCount} tarefas</footer>
        </g:if>
        <g:else>
          <footer> Você tem 0 tarefas </footer>
        </g:else>
    </body>
</html>
