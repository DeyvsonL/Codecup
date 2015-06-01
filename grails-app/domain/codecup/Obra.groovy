package codecup

class Obra {
    String nome
    String fotoUrl
    double precoPlanejado
    double precoFinal
    String descricao
    double longitude
    double latitude
    Date dataPlanejada
    Date dataTermino
    String empresa
    String engenheiro

    //Politico politico
    //Empresa empresa
    static hasOne = [politico : Politico]

    static constraints = {
        nome unique: true
        precoPlanejado blank: false
        dataPlanejada blank: false
    }

    public String getStatus(){
        String saida = ""
        if(this.dataPlanejada.getTime() < System.currentTimeMillis()){
            saida += "A obra está atrasada!\n"
        } else {
            saida += "A obra está no prazo!\n"
        }
        if(this.precoPlanejado<this.precoFinal){
            saida += "O valor da obra estourou!\n"
        } else {
            saida += "O valor da obra está dentro do previsto!"
        }

        return saida

    }

    public String getFormatedData() {
        return dataPlanejada.day + "/" + dataPlanejada.month + "/" + dataPlanejada.year
    }
}
