class Sauriopass
  @@animals = ["lagarto", "hormiga", "armadillo", "murcielago", "oso", "castor", "abeja", "escarabajo", "pajaro", "bufalo", "toro", "becerro", "camello", "canario", "gato", "pollo", "chimpance", "serpiente", "gallo", "vaca", "coyote", "cangrejo", "cocodrilo", "ciervo", "perro", "delfin", "burro", "pato", "aguila", "elefante", "pez", "mosca", "zorro", "rana", "jirafa", "saltamontes", "gallina", "hipopotamo", "caballo", "jaguar", "canguro", "cordero", "leopardo", "leon", "mono", "mosquito", "raton", "avestruz", "buho", "loro", "pinguino", "cerdo", "conejo", "mapache", "rata", "escorpion", "foca", "tiburon", "oveja", "perezoso", "caracol", "serpiente", "arana", "ardilla", "cisne", "tigre", "pavo", "tortuga", "avispa", "ballena", "lobo", "cebra"]
  @@adjectives = ["abstracto", "aburrido", "adorable", "afectuoso", "agotador", "agradable", "agudo", "alargado", "alegre", "alto", "amable", "amargo", "amarillo", "ambicioso", "ambiguo", "amigable", "amoroso", "amplio", "ancho", "angelical", "animado", "ansiado", "ansioso", "antiguo", "apasionado", "apatico", "ardiente", "arrogante", "arrugado", "artesanal", "astuto", "atento", "azul", "bajo", "barato", "bello", "blanco", "blando", "bondadoso", "bonito", "brillante", "bueno", "burlon", "caliente", "calmo", "caluroso", "cansado", "caprichoso", "carismatico", "carinoso", "caro", "cauteloso", "celeste", "celoso", "chiquito", "cobarde", "coherente", "colorido", "complejo", "considerado", "contagioso", "contento", "cordial", "correcto", "corto", "crocante", "cruel", "cuadrado", "cuidadoso", "culto", "curioso", "calido", "comodo", "danino", "decepcionado", "delgado", "delicado", "delicioso", "dependiente", "desconfiado", "desordenado", "despistado", "diferente", "dificil", "directo", "distante", "divertido", "dorado", "dulce", "duro", "debil", "eficiente", "elegante", "emocionado", "encantador", "enfadado", "enfermo", "engreido", "enojado", "enorme", "entrometido", "especial", "espontaneo", "estrecho", "estresante", "estudioso", "exitoso", "extraordinario", "extrano", "extrovertido", "familiar", "famoso", "fascinante", "feliz", "feo", "fino", "flaco", "fresco", "fragil", "frio", "fuerte", "fugaz", "facil", "generoso", "gordo", "gracioso", "grande", "gris", "grueso", "helado", "hermoso", "honrado", "horrible", "hueco", "humilde", "habil", "humedo", "imperfecto", "impulsivo", "incorruptible", "increible", "incomodo", "indeciso", "independiente", "indestructible", "indiferente", "infantil", "ingenuo", "inmenso", "inocente", "insensible", "inteligente", "interesante", "intrepido", "invisible", "irresponsable", "largo", "lento", "libre", "limpio", "lindo", "liviano", "lleno", "luminoso", "maduro", "malcriado", "maleable", "malo", "maravilloso", "marron", "mediano", "miedoso", "misterioso", "moderno", "modesto", "molesto", "monotono", "negro", "nervioso", "noble", "nuevo", "nitido", "odioso", "opaco", "ordenado", "organizado", "orgulloso", "original", "oscuro", "ostentoso", "paciente", "pacifico", "peludo", "pequeno", "perfecto", "pesado", "petiso", "plano", "pobre", "precioso", "preocupado", "profundo", "prolijo", "protector", "practico", "palido", "quebrado", "quemado", "rayado", "realista", "redondo", "refinado", "responsable", "rico", "rojo", "rosado", "roto", "rubio", "ruidoso", "rapido", "rigido", "rustico", "sabio", "salado", "saludable", "satisfecho", "seco", "sencillo", "sensible", "silencioso", "simple", "simpatico", "sobrio", "suave", "sucio", "sutil", "talentoso", "tenebroso", "tenso", "terco", "torpe", "trabajador", "tramposo", "transparente", "travieso", "triste", "turbio", "timido", "usado", "vacio", "valiente", "veloz", "venenoso", "verde", "viejo", "violento", "violeta", "vulgar", "acido", "agil", "unico"]
  
  @@alterations = [["a", "@"], ["i", "!"], ["t", "+"], ["e", "3"], ["c", "("], ["o", "*"], ["s", "$"], ["d", ")"], ["k", "<"]]
  
  def self.harden(passw)
    new_passw = passw
    while new_passw == passw do
      alter = @@alterations.sample
      new_passw = passw.sub(alter[0], alter[1])
    end
    new_passw
  end
  
  def self.simple
    @@animals.sample + @@adjectives.sample + rand(10..99).to_s
  end
  
  def self.strong
    harden(@@animals.sample + @@adjectives.sample + rand(100..999).to_s)
  end
end
