<%@ page import="tasklist.Categoria" %>
<div id="mensagem"></div>
<g:formRemote name="formTarefa" url="[controller: 'tarefa', action: 'salvar']" update="mensagem" onSuccess="carregarLista()">
  <br/>
  <label>Tarefa</label>
    <input type="text" required="required" name="nome" class="large" value="${tarefa.nome}" placeholder="Estudar e programar"
         maxlength="100"/>
  <label>Finalizar até</label>
    <input type="date" required="required" name="deadline" class="large" value="${tarefa.deadline}" />
  <label>Categoria</label>
      <g:select optionKey="id" optionValue="nome" name="categoria" from="${Categoria.list()}" noSelection="${['null':'Selecione uma Categoria']}" />

    <br/><br/>

      <input type="submit" class="button" name="btnSalvarTarefa" id="saveTask" value="Salvar" />
      <input type="reset" class="button" name="btnLimparTarefa" id="clearTask" value="Limpar" />

</g:formRemote>
