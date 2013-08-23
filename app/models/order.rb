class Order < ActiveRecord::Base
#  validates :name, :presence => true
  validates :email, :presence => true
  validates :telephone, :presence => true
  validate :delivery_time_can_not_be_too_soon
  validates :street, :presence => true

#  validates :telephone, :presense => true

  has_many :ordercontents, :dependent => :destroy
  has_many :trackings
  has_many :statuses, :through => :trackings

  cattr_reader :starttime, :duration, :months
  attr_reader :testItem

  @@starttime = 1.hour.seconds # nearest time to make the order (in seconds): one can ask the delivery for the time (current_time + @@starttime)
  @@duration = 10.days.seconds # latest time (in seconds) for which the order can be made: one can not ask for deliveries later than (current_time + @@starttime + @@duaration)

  @@months=[nil,"gennaio", "febbraio", "marzo", "aprile", "maggio", "giugno", "luglio", "agosto",
    "settembre", "ottobre", "novembre", "dicembre"]


  def starttime
    @starttime = Time.now + @@starttime
  end
  def endtime
    @endtime = Time.now + @@starttime + @@duration
  end

  def yearspan
    ((self.starttime.year)..(self.endtime.year))
  end

  def monthspan
    startM = self.starttime.month
    endM = self.endtime.month
    if endM<startM
      endM = endM + 12
    end
    (@@months + @@months[1..-1])[startM..endM]
  end

  def dayspan
    startD = self.starttime.day
    endD = self.endtime.day
    if endD<startD
      endD = endD + 31
    end
    ((0..31).to_a + (1..31).to_a)[startD..endD].uniq
  end

  def hourspan
    (13..22)
  end

  def minspan
#    (0..59).step(5)
    ["00","05",10,15,20,25,30,35,40,45,50,55]
  end



  @@nouns_male=["animale", "aprile", "bicchiere", "caffelatte", "cameriere", "cane", "carabiniere", "carattere", "carnevale", "cognome", "colore", "dicembre", "dottore", "errore", "fiore", "fiume", "genitore", "giornale", "latte", "male", "mare", "mese", "minestrone", "Natale", "nome", "novembre", "ospedale", "ottobre", "paese", "pallone", "pane", "pantalone", "pepe", "pesce", "piede", "ponte", "presidente", "professore", "re", "ristorante", "salame", "sale", "settembre", "signore", "sole", "studente", "caffe", "amore"]
  @@nouns_female=["arte", "attenzione", "canzone", "capitale", "carne", "chiave", "colazione", "estate", "fame", "gente", "immigrazione", "informazione", "mezzanotte", "moglie", "nave", "nazione", "neve", "notte", "religione", "sete", "stagione", "stazione", "televisione"].uniq
  @@adjectives=["saporito", "colorato", "antipatico", "melanconico", "piccolo", "grande", "masochista", "scorbutico", "lussurioso", "invidioso", "pigro", "avaro", "dolce", "romantico", "pulito", "caro", "salato", "bisognoso di affetto", "stupendo", "lungo", "largo", "grosso", "distante", "timido", "ignavo", "sincero", "affidabile", "iracondo", "irascibile", "burbero", "brusco", "rozzo", "importante", "poetico", "ineguagliabile", "insuperabile", "abbacchiato", "abbagliante", "abbandonato", "abbiente,abboccato", "abbordabile", "abissale", "abietto", "abituale", "assuefatto", "abitudinario", "abnorme", "abominevole", "inerte", "abusivo", "accaldato", "infreddolito", "accanito", "accentuato", "acceso", "spento", "accessibile", "accessorio", "secondario", "accetto", "accidentale", "accidioso", "acclive", "accollato", "accomodante", "scostante", "acconcio", "accostabile", "accreditato", "indebitato", "diligente", "acerbo", "maturo", "acido", "amaro", "acqueo", "plumbeo", "acquoso", "evanescente", "mutevole", "acquiescente", "acquitrinoso", "pungente", "aculeato", "adatto", "adamantino", "addetto", "afflitto", "assopito", "adiacente", "pingue", "adorabile", "adulterato", "illeggitimo", "adultero", "fedele", "affabile", "scortese", "affannato", "serafico", "tranquillo", "afferente", "estraneo", "affermato", "sofferente", "affettuoso", "indifferente", "devoto", "acuminato", "congiunto", "mesto", "frettoloso", "afono", "terrificante", "agevole", "unito", "empatico", "aggressivo", "intelligente", "agile", "agitato", "agnostico", "ateo", "agreste", "bucolico", "alacre", "aitante", "borioso", "albo", "algido", "frigido", "potente", "arido", "alienato", "straniero", "razzista", "progressista", "allampanato", "allarmante", "giulivo", "allettevole", "allibito", "alloglotto", "allucinante", "visionario", "mirabile", "sconvolgente", "fertile", "altero", "altisonante", "amante", "ambiguo", "ameno", "ostile", "stantio", "giovane", "bramoso", "brulicante", "assiduo", "soave", "aberrante", "disilluso", "crudele", "dissimile", "inumano", "eterogeneo", "ingiusto", "copioso", "incolume", "immoto", "immorale", "generoso", "libero", "scostumato", "legittimo", "lieto", "ligio", "trasparente", "coerente", "coordinato", "liquidato", "liquefatto", "anemico", "metodico", "ossessivo", "metaforico", "dimezzato", "puro", "offeso", "umiliato", "irrispettoso", "miscredente", "pusillanime", "tempestivo", "sentenzioso", "idilliaco", "episodico", "arguto", "sagace", "osceno", "licenzioso", "entusiasta", "eroico", "sensuale", "efebico", "persistente", "delirante", "insoluto", "innato", "infimo", "indefesso", "incoraggiante", "rabbuiato", "arcigno", "levigato", "ruvido", "fastidioso", "piacevole", "superfluo", "impellente", "logoro", "consueto", "giovevole", "trionfatore", "triviale", "antico", "atavico", "tronfio", "tumultuoso", "vorticoso", "feroce", "reale", "virtuoso", "essenziale", "vituperabile", "vitreo", "viziato", "incorruttibile", "vivido", "avvizzito", "volgare", "vorace", "volitivo", "spontaneo", "estroverso", "voluttuario", "vacuo", "xenofobo", "zelante", "gremito", "investigativo", "intriso", "mellifluo", "manomesso", "commestibile", "virile", "effemminato", "materialista", "bellicoso", "encomiastico", "paonazzo", "prode", "procelloso", "incline", "procace", "persuasivo", "onesto", "rescisso", "represso", "repentino", "eccitato", "ravveduto", "previdente", "riflessivo", "tenace", "retto", "retrogrado", "retrospettivo", "introspettivo", "lucido", "obnubilato", "infetto", "pernicioso", "lugubre", "truculento", "esiguo", "minatorio", "millantatore", "multiforme", "minuzioso", "mistico", "elegiaco", "puerile", "candido", "castigato", "casereccio", "diurno", "dispotico", "imparziale", "amorfo", "edotto", "fisico"].uniq

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

 # def sendOrderContent
  # UserMailer.welcome_email(self).deliver
  # UserMailer.notificationEmail(self).deliver
 # end

 def delivery_time_can_not_be_too_soon
    if time < Time.now + @@starttime
      errors.add("Ora di consegna:", "ci vogliono almeno #{@@starttime/60} minuti per l\'elaborazione.
        Quindi ordinazioni prima delle #{(Time.now + @@starttime).strftime("%H:%M")} non possono essere accettate.")
    end
 end

end
