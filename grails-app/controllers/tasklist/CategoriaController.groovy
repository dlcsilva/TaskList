  package tasklist

class CategoriaController {

    def index() {
      def lista = Categoria.list()
        render(view:"/categoria/index", model: [categorias: lista])
    }

    def adicionar (){
      Categoria novaCategoria = new Categoria()
        render(template:"/categoria/form", model: [categoria: novaCategoria])
    }

    def alterar (){
      Categoria categoria = Categoria.get(params.id)
        render(template:"/categoria/form", model: [categoria: categoria])
    }

    def excluir (){
      Categoria excluirCategoria = Categoria.get(params.id)
        excluirCategoria.delete(flush:true)

        def lista = Categoria.list()
          render(template:"/categoria/lista", model: [categorias: lista])
    }

    def lista (){
      def lista = Categoria.list()
      render(template:"/categoria/lista", model: [categorias: lista])
    }

    def salvar (){

      Categoria categoria = null

      if (params.id){
        categoria = Categoria.get(params.id)
      }else{
        categoria = new Categoria()

      }
      categoria.nome = params.nome

      categoria.validate()
        if (!categoria.hasErrors()){
          categoria.save(flush:true)
          render("Salvo com sucesso!")

        }else{
          render("Ocorreu algum problema e não foi possível salvar!")
        }
    }
}
