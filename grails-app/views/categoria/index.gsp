<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="layout" content="main"/>
        <title>Categorias</title>
        <g:javascript library="jquery" />

        <script type="text/javascript">
          function carregarLista(){
            <g:remoteFunction controller="categoria" action="lista" update="listaCategorias" />
          }
          function excluir(id){
            if(confirm("Deseja realmente excluir?")){
              <g:remoteFunction controller="categoria" action="excluir" update="listaCategorias" id="'+id+'"/>

            }
          }

        </script>

    </head>
    <body>
      <header>
        <span>Lista de Categorias</span>
      </header>
      <section>
        <div id="formCategorias"></div>
      </section>
      <section>
        <div id="listaCategorias">
          <g:render template="lista" model="[categorias: categorias]"> </g:render>
        </div>
      </section>
      <section>
        <nav>
        <g:remoteLink controller="categoria" action="adicionar" update="formCategorias">Adicionar Categorias</g:remoteLink>
        &nbsp;&nbsp;
        <g:link controller="tarefa" action="index">Adicionar Tarefas</g:link>
      </nav>
      </section>
        <footer>Você tem ${categorias.size()} categorias</footer>
    </body>
</html>
