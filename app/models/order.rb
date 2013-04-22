class Order < ActiveRecord::Base
#  belongs_to :user
  has_many :ordercontents
  has_many :trackings
  has_many :statuses, :through => :trackings

  @@nouns_male=["animale", "aprile", "bicchiere", "caffelatte", "cameriere", "cane", "carabiniere", "carattere", "carnevale", "cognome", "colore", "dicembre", "dottore", "errore", "fiore", "fiume", "genitore", "giornale", "latte", "male", "mare", "mese", "minestrone", "Natale", "nome", "novembre", "ospedale", "ottobre", "paese", "pallone", "pane", "pantalone", "pepe", "pesce", "piede", "ponte", "presidente", "professore", "re", "ristorante", "salame", "sale", "settembre", "signore", "sole", "studente", "caffe", "amore"].uniq
  @@nouns_female=["arte", "attenzione", "canzone", "capitale", "carne", "chiave", "colazione", "estate", "fame", "gente", "immigrazione", "informazione", "mezzanotte", "moglie", "nave", "nazione", "neve", "notte", "religione", "sete", "stagione", "stazione", "televisione"].uniq
  @@adjectives=["saporito", "colorato", "antipatico", "melanconico", "piccolo", "grande", "masochista", "scorbutico", "lussurioso", "invidioso", "pigro", "avaro", "dolce", "romantico", "pulito", "caro", "salato", "bisognoso di affetto", "stupendo", "lungo", "largo", "grosso", "distante", "timido", "ignavo", "sincero", "affidabile", "iracondo", "irascibile", "burbero", "brusco", "rozzo", "importante", "poetico", "ineguagliabile", "insuperabile", "abbacchiato", "abbagliante", "abbandonato", "abbiente,abboccato", "abbordabile", "abissale", "abietto", "abituale", "assuefatto", "abitudinario", "abnorme", "abominevole", "inerte", "abusivo", "accaldato", "infreddolito", "accanito", "accentuato", "acceso", "spento", "accessibile", "accessorio", "secondario", "accetto", "accidentale", "accidioso", "acclive", "accollato", "accomodante", "scostante", "acconcio", "accostabile", "accreditato", "indebitato", "diligente", "acerbo", "maturo", "acido", "amaro", "acqueo", "plumbeo", "acquoso", "evanescente", "mutevole", "acquiescente", "acquitrinoso", "pungente", "aculeato", "adatto", "adamantino", "addetto", "afflitto", "assopito", "adiacente", "pingue", "adorabile", "adulterato", "illeggitimo", "adultero", "fedele", "affabile", "scortese", "affannato", "serafico", "tranquillo", "afferente", "estraneo", "affermato", "sofferente", "affettuoso", "indifferente", "devoto", "acuminato", "congiunto", "mesto", "frettoloso", "afono", "terrificante", "agevole", "unito", "empatico", "aggressivo", "intelligente", "agile", "agitato", "agnostico", "ateo", "agreste", "bucolico", "alacre", "aitante", "borioso", "albo", "algido", "frigido", "potente", "arido", "alienato", "straniero", "razzista", "progressista", "allampanato", "allarmante", "giulivo", "allettevole", "allibito,alloglotto", "allucinante", "visionario", "mirabile", "sconvolgente", "fertile", "altero", "altisonante", "amante", "ambiguo", "ameno", "ostile", "stantio", "giovane", "bramoso", "brulicante", "assiduo", "soave", "aberrante", "disilluso", "crudele", "dissimile", "inumano", "eterogeneo", "ingiusto", "copioso", "incolume", "immoto", "immorale", "generoso", "libero", "scostumato", "legittimo", "lieto", "ligio", "trasparente", "coerente", "coordinato", "liquidato", "liquefatto", "anemico", "metodico", "ossessivo", "metaforico", "dimezzato", "puro", "offeso", "umiliato", "irrispettoso", "miscredente", "pusillanime", "tempestivo", "sentenzioso", "idilliaco", "episodico", "arguto", "sagace", "osceno", "licenzioso", "entusiasta", "eroico", "sensuale", "efebico", "persistente", "delirante", "insoluto", "innato", "infimo", "indefesso", "incoraggiante", "rabbuiato", "arcigno", "levigato", "ruvido", "fastidioso", "piacevole", "superfluo", "impellente", "logoro", "consueto", "giovevole", "trionfatore", "triviale", "antico", "atavico", "tronfio", "tumultuoso", "vorticoso", "feroce", "reale", "virtuoso", "essenziale", "vituperabile", "vitreo", "viziato", "incorruttibile", "vivido", "avvizzito", "volgare", "vorace", "volitivo", "spontaneo", "estroverso", "voluttuario", "vacuo", "xenofobo", "zelante", "gremito", "investigativo", "intriso", "mellifluo", "manomesso", "commestibile", "virile", "effemminato", "materialista", "bellicoso", "encomiastico", "paonazzo", "prode", "procelloso", "incline", "procace", "persuasivo", "onesto", "rescisso", "represso", "repentino", "eccitato", "ravveduto", "previdente", "riflessivo", "tenace", "retto", "retrogrado", "retrospettivo", "introspettivo", "lucido", "obnubilato", "infetto", "pernicioso", "lugubre", "truculento", "esiguo", "minatorio", "millantatore", "multiforme", "minuzioso", "mistico", "elegiaco", "puerile", "candido", "castigato", "casereccio", "diurno", "dispotico", "imparziale", "amorfo", "edotto", "fisico"].uniq

 public
 def generatePhrase
    mark=rand(0..9999)
   if mark.odd?
    num1=rand(0..((@@nouns_male.count)-1))
    num2=rand(0..((@@adjectives.count)-1))
    @@nouns_male[num1].to_s+"-"+@@adjectives[num2]+"-"+mark.to_s
   else
    num1=rand(0..((@@nouns_female.count)-1))
    num2=rand(0..((@@adjectives.count)-1))
    @@nouns_female[num1].to_s+"-"+@@adjectives[num2].gsub(/o$/,"a") + "-" +mark.to_s
   end
 end


#
#
 # def status=(s1)
   # t1 = Tracking.new
   # t1.order=self
   # t1.status=s1
   # t1.save!
 # end
#
 # def statuses
   # self.trackings
 # end
end
