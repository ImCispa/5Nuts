namespace Applicazione.Comune.Modello
{
    public class Movimento
    {
        public int Id { get; set; }
        public int IdUtente { get; set; }
        public int IdGioco { get; set; }
        public int IdOpzioneGioco { get; set; }
        public int Punti { get; set; }
    }
}
