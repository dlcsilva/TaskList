package tasklist

class Categoria {

  String nome

  static hasMany  = [tarefas:Tarefa]

    static constraints = {
    }
}
