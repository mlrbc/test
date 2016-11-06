package ga

class Jogo {
    String mandante;
    String visitante;
    String placar;
    Date data
    static hasMany = [titulares: Jogador , reservas: Jogador , gols : Jogador]

    static constraints = {
        mandante blank : false , nullable: false
        visitante blank: false , nullable: false
        placar blank: false , nullable: false
        titulares nullable: true
        reservas nullable: true
        gols nullable: true

    }
}