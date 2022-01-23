using Applicazione.Comune.Enumeratore;

namespace Applicazione.Comune.Modello
{
    public class Gioco
    {
        public int Id { get; set; }
        public int IdTorneo { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
        public GiocoStato Stato { get; set; }
        public DateTime DataApertura { get; set; }
        public DateTime? DataChiusura { get; set; }
        public int? IdOpzioneGiocoVincente { get; set; }
    }
}
