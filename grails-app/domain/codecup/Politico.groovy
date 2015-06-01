package codecup


class Politico {
    String nome
    String descricao
    String fotoUrl
    double qualidade
    //ArrayList<Obra> obras
    static hasMany = [obras : Obra]

    static constraints = {
        nome blank : false
        obras blank : true

    }

    public static void updateQualidade(){
        for(Politico p : Politico.findAll()){
            double qtd = 0;
            for(Obra obra : p.obras){
                qtd += obra.dataTermino.after(obra.dataPlanejada) ? 0.5 : 0
                qtd += obra.precoFinal > obra.precoPlanejado ? 0.5 : 0
            }
            p.qualidade = p.obras.size() > 0 ? qtd/p.obras.size() : 0
            p.save flush: true
        }
    }

    public String toString(){
        return nome
    }
}
