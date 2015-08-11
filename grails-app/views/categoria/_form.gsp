<div id="mensagem"></div>
<g:formRemote name="formCategoria" url="[controller: 'categoria', action: 'salvar']" update="mensagem" onSuccess="carregarLista()">
  <br/>
  <label>Nome</label>
    <input type="text" required="required" name="nome" class="large" value="${categoria.nome}" placeholder="Digite o nome da categoria..."
         maxlength="100"/>

    <br/><br/>

    <input type="hidden" name="id" value="${categoria.id}" />
    <input type="submit" class="button" name="btnSalvarCategoria" value="Salvar" />
    <input type="reset" class="button" name="btnLimparCategoria" value="Limpar" />

</g:formRemote>
