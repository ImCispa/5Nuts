using Applicazione.Comune.AccessoDati;

namespace Applicazione.OperazioniGioco
{
    public class CreaGiocoRichiesta
    {
        public int? IdTorneo { get; set; }
        public string Titolo { get; set; }
        public string Descrizione { get; set; }
        public DateTime DataApertura { get; set; }
        public DateTime? DataChisura { get; set; }
    }

    public class CreaGiocoGestore
    {
        private readonly IAccessoDatiGioco _accessoDatiGioco;

        public CreaGiocoGestore(IAccessoDatiGioco AccessoDatiGioco)
        {
            _accessoDatiGioco = AccessoDatiGioco;
        }

        public int Gestore(CreaGiocoRichiesta Richiesta, int IdElaborazione)
        {
            if (Richiesta.Titolo == null || Richiesta.Titolo == string.Empty)
            {
                return 0;
            }
            if (Richiesta.Descrizione == null || Richiesta.Titolo == string.Empty)
            {
                return 0;
            }
            if (Richiesta.DataApertura <= DateTime.Now)
            {
                return 0;
            }
            if (Richiesta.DataChisura != null && Richiesta.DataChisura <= DateTime.Now)
            {
                return 0;
            }

            return _accessoDatiGioco.Crea();
        }
    }
}
