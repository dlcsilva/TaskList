package tasklist

class Tarefa {

  String nome
  Date deadline
  Categoria categoria
  Boolean completada

    static constraints = {
    }
    static mapping = {
      sort deadline: "desc"
}

}
