# This file contains the substitution list for 
# L&H TTS3000 German (SAPI 4, Anna and Stefan)
# (the author of rules is Regine Müller).
#
# Diese Datei enthält die Aussprache-Korrekturen für 
# L&H TTS3000 German (SAPI 4, Anna und Stefan)
# optimiert für Grimms Märchen
# (Autorin dieser Korrekturliste ist Regine Müller).
#
#
# This file can be used to correct the pronunciations of the 
# text-to-speech engine.
#
# On each line, the second set of letters is the phonetic pronunciation
# replacement for the first set of letters.
#
# Be aware that the replacements occur in the order they appear.
# For instance, these two lines:
#
# rat=mouse
# mouse=hamster
#
# rat becomes hamster. This may not be what was intended.
#
# Comment lines start with the pound sign(#) and are ignored.
#
#
# The left hand string can contain a vbscript regular expression pattern.
# Below are the characters and sequences that can be used.
#  
#  
#  \  Marks the next character as either a special character or a literal. 
#  For example, "n" matches the character "n". "\n" matches a newline character. 
#  The sequence "\\" matches "\" and "\(" matches "(". 
#  
#  ^  Matches the beginning of input. 
#  
#  $  Matches the end of input. 
#  
#  *  Matches the preceding character zero or more times. 
#  For example, "zo*" matches either "z" or "zoo". 
#  
#  +  Matches the preceding character one or more times. 
#  For example, "zo+" matches "zoo" but not "z". 
#  
#  ?  Matches the preceding character zero or one time. 
#  For example, "a?ve?" matches the "ve" in "never".  
#  
#  . Matches any single character except a newline character. 
#   
#  (pattern)  Matches pattern and remembers the match. 
#  \1 refers to the match in the left hand string
#  $1 refers to the match in the right hand string.
#  To match parentheses characters ( ), use "\(" or "\)". 
#  
#  x|y Matches either x or y. For example, 
#  "z|food" matches "z" or "food". "(z|f)oo" matches "zoo" or "food".  
#  
#  {n} n is a nonnegative integer. Matches exactly n times. 
#  For example, "o{2}" does not match the "o" in "Bob," 
#  but matches the first two o's in "foooood". 
#  
#  {n,}  n is a nonnegative integer. Matches at least n times. 
#  For example, "o{2,}" does not match the "o" in "Bob" 
#  and matches all the o's in "foooood." 
#  "o{1,}" is equivalent to "o+". "o{0,}" is equivalent to "o*". 
#  
#  {n,m}  m and n are nonnegative integers. 
#  Matches at least n and at most m times. 
#  For example, "o{1,3}" matches the first three o's in "fooooood." 
#  "o{0,1}" is equivalent to "o?". 
#  
#  [xyz]  A character set. 
#  Matches any one of the enclosed characters. 
#  For example, "[abc]" matches the "a" in "plain".  
#  
#  [^xyz]  A negative character set. 
#  Matches any character not enclosed. 
#  For example, "[^abc]" matches the "p" in "plain".  
#  
#  [a-z]  A range of characters. 
#  Matches any character in the specified range. 
#  For example, "[a-z]" matches any lowercase alphabetic 
#  character in the range "a" through "z".  
#  
#  [^m-z]  A negative range characters. 
#  Matches any character not in the specified range. 
#  For example, "[m-z]" matches any character not 
#  in the range "m" through "z".  
#  
#  \b  Matches a word boundary, that is, 
#  the position between a word and a space. 
#  For example, "er\b" matches the "er" in "never" 
#  but not the "er" in "verb".  
#  
#  \B  Matches a nonword boundary. 
#  "ea*r\B" matches the "ear" in "never early".  
#  
#  \d  Matches a digit character. Equivalent to [0-9].  
#  
#  \D  Matches a nondigit character. Equivalent to [^0-9].  
#  
#  \f  Matches a form-feed character.  
#  
#  \n  Matches a newline character.  
#  
#  \r  Matches a carriage return character.  
#  
#  \s  Matches any white space including space, tab, form-feed, etc. 
#  Equivalent to "[ \f\n\r\t\v]". 
#  
#  \S  Matches any nonwhite space character. 
#  Equivalent to "[^ \f\n\r\t\v]".  
#  
#  \t  Matches a tab character.  
#  
#  \v  Matches a vertical tab character.  
#  
#  \w  Matches any word character including underscore. 
#  Equivalent to "[A-Za-z0-9_]". 
#   
#  \W  Matches any nonword character. 
#  Equivalent to "[^A-Za-z0-9_]".  
#  
#  \num  Matches num, where num is a positive integer. 
#  A reference back to remembered matches. For example, 
#  "(.)\1" matches two consecutive identical characters.  
#  
#  \n Matches n, where n is an octal escape value. 
#  Octal escape values must be 1, 2, or 3 digits long. 
#  For example, "\11" and "\011" both match a tab character. 
#  "\0011" is the equivalent of 
#  "\001" & "1". Octal escape values must not exceed 256. 
#  If they do, only the first two digits comprise the expression. 
#  Allows ASCII codes to be used in regular expressions. 
#  
#  \xn Matches n, where n is a hexadecimal escape value. 
#  Hexadecimal escape values must be exactly two digits long. 
#  For example, "\x41" matches "A". 
#  "\x041" is equivalent to "\x04" & "1". 
#  Allows ASCII codes to be used in regular expressions. 
#
@(\s)ß=$1sz
@^ß=sz
@b weg=b feck
@b w=b f
@bw=bf
@äße=ähße
@säß=sääß
@fäß=fähß
@rechtmäßig=recht-mäßig
@Wunschring=Wunnschring
@([^i])eß=$1eeß
@[bB]läschen=blääs-chen
@([^aA])[bB]läs=$1blääs
@\b[bB]läst=blääst
@Pferdefuß=Pferde-fuß
@([^aAeäÄ])uß=$1uuß
@loszuwerden=loszuwehrden
@loswerden=loswehrden
@\blos([^e])=lohs$1
@Kloß=Klohß
@([^A-Za-zä])[uU]m=$1um-
@um-s\b=ums
@Gänsestall=Gänse-stall
@Stalleselein=Stall-ehselein
@([^i])stall=$1schtall
@([^r])[aA]tm([^o])=$1ahtm$2
@\b[aA]tm([^o])=ahtm$1
@arbeit=-arbeit
@[aA]ller=aller-
@[aA]tem=atem-
@[aA]ß=aaß
@[gG]rasse=grass-ße
@rässlich=rhässlich
@ässchen=äss-chen
@beer=behr
@[bB]eere=bere
@[bB]eisammen=bei-sammen
@(\s)berg([^e])=$1berg-$2
@^berg([^e])=berg-$1
@([^üÜ])[bB]erg([^esg])=$1berg-$2
@[bB]escher=bescheer
@[bB]eschwer=beschweer
@eunruhig=e-unruhig
@blass=blassss
@boshaft=bohshaft
@[bB]os([^s])=boos$1
@brat=-braat
@[dD]reschen\b=dre-schen
@dreschend\b=dreschschend
@([^u])[fF]els=$1fells
@[fF]lächen=flechen
@stoß=schtohß
@[fF]uß=fuuß
@[gG]as\b=gaas
@[gG]ehunger=ge-hunger
@Gottes=gottes-
@größte=-größte
@zuhalt=zu-halt
@daran=daran-
@Hemdlein=Hemddlein
@[hH]emd=hemmd
@[hH]eran=heran-
@herauf\b=her-rauf
@[hH]erauf=herrauf-
@[hH]erbei=herbei-
@[hH]erbei-zu=herbei-zu-
@[hH]erein=herein-
@[hH]erunter=herunter-
@[hH]erunter-zu=herunter-zu-
@[hH]ernach=her-nach
@[hH]erz([^uio])=herrz$1
@herrzens\b=herzens
@herrzensa=herzens-a
@[hH]erzu=herzu-
@neherrz=ne-herrz
@herzog=heerzog
@[hH]inein=hinein-
@hinaufzu=hinaufzu-
@[hH]inauf=hinauf-
@[hH]inab=hinab-
@[hH]indurch([^\W])=hin-durch$1
@[hH]inunter=hinunter-
@[hH]inüber=hinüber-
@[hH]inüber-zu=hinüber-zu-
@[hH]inweg=hinweg-
@[hH]ingeh=hinn-geh
@hintenauf=hinten-auf
@voran=voran-
@vorüber=vorüber-
@darüber=darüber-
@[hH]ust=huust
@([^ea])iß=$1ieß
@isschen=iss-chen
@([^L])erchen=$1er-chen
@([^wW])elchen=$1el-chen
@männ=-männ
@männer-chen=männer-chen
@Menschenkind=Menschen-kind
@([^fF])[rR]öschen=$1-rös-chen
@\bRöschen=rös-chen
@([^l])öschen=$1öschschen
@verlöschen=verlöschschen
@müschen=müs-chen
@änschen=äns-chen
@lieschen=-lies-chen
@rutschten=rutsch-ten
@[hH]orche=horrche
@verlosch=verloschsch
@roschen=roschschen
@Rumpelstilzchen=Rummpelschtielzchen
@geschlich=ge-schlich
@euera=euer-a
@vogel=fogel
@vögel=fögel
@Sommerfögel=Sommer-fögel
@Frevel=Freefel
@gravitätisch=gravietätisch
@Viehhändler=Vieh-händler
@Vivat=Wiewatt
@Federvieh=Feder-fieh
@[lL]ebens([^\Wgm])=leebens$1
@[kK]amin=kaa-mihn
@[kK]opf([^e])=kopf-$1
@[kK]öst=kösst
@[kK]ran([^kz])=krahn$1
@[kK]rume=kruume=
@([^t])äuschen=$1äus-chen
@äschen=ääs-chen
@lebendigen=lebenndigen
@[lL]iebkos=liebkoos
@[lL]öcher=-löcher
@Masse\b=Massse
@[mM]erk=merrk
@[mM]ond=mohnd
@Mus\b=muus
@([^t])ober=$1-ober
@zinn-oberrot=zinnober-rot
@[oO]bst=ohbst
@([^r])oß=$1ohß
@ausschtohßend=ausstooßend
@ngroß=ngrooß
@öß=ööß
@gösse=gössß-ße
@össchen=össß-chen
@[oO]ster=ooster
@Paten=Paten-
@Pferdes\b=Pfehrdes
@[pP]ferdes([^\s\.])=pferde-s$1
@[qQ]uak=quaak
@quem=quehm
@([^aot])ras([^acips])=$1raas$2
@[rR]ät=reht
@[rR]eise([^nr])=reise-$1
@[sS]chaf([^ft])=schaaf$1
@[sS]chämt=-scheemt
@schläf=-schleef
@[sS]chrump=schrummp
@Schutz=Schutz-
@spiel=schpiel
@spitz=schpitz
@sprach\'s=sprach es
@sprach=schprach
@spräch=schpräch
@spring=schpring
@sprung=schprung
@ßch=ß-ch
@Schneeweiß-chen=Schnee-weiß-chen
@stab=schtab
@stäb=schtäb
@stach's=stach es
@[sS]tach=schtaach
@ställ=schtäll
@dergestalt=deergestalt
@stalt=schtalt
@stamm=schtamm
@Wohlstand=Woohlstand
@stand=schtand
@stang=schtang
@staude=schtaude
@steh=schteh
@widerschtehen=widerstehen
@[sS]teinalt=stein-alt
@steg=schteg
@Quadratsteinen=Qua-dratschteinen
@[sS]tein=-schtein
@stell=schtell
@steuer=schteuer
@stick=schtick
@stieg=schtieg
@stiel=schtiel
@still=schtill
@stoff=schtoff
@stock=schtock
@[sS]töck=schtöck
@[sS]tolp=schtollp
@stör=schtör
@schtörte=schtöhrte
@strahl=schtrahl
@Straaßen=Straaßen-
@strauch=schtrauch
@strauß=schtrauß
@sprichst\:=sprichst :
@kunstreich=kunst-reich
@streich=schtreich
@strick=schtrick
@[sS]trümpf=schtrümmpf
@stub=schtub
@stück=schtück
@stuhl=schtuhl
@stülp=schtüllp
@[tT]ön([^n])=töhn$1
@[tT]ot=toot
@tootenbett=too-ten-bett
@[tT]rost=trost-
@üß=üüß
@üsschen=üss-chen
@üssi=üßßi
@üssel([^n])=üssel-$1
@Vaterunser=vater-unnsar
@vater=-vater
@[vV]erwest=verweest
@ver=-ver
@vorbei=vor-bei
@wälder=wällder
@wese=-wese
@[wW]est=wesst
@[sS]chwesster\b=schwester 
@[wW]ohl=wohl-
@wohl-ig=wohlig
@[wW]usch=wuhsch
#@([^nt])[zZ]er([^eior])=$1zer-$2
#@zer-s\b=zers
@zerzaus=zer-zaus
@[zZ]uschnitt=zuhschnitt
@nsprech=n-sprech
@mausetot=mause-tot
@flussab=fluss-ab
@Nachtessen=Nacht-essen
@Prinzessin=Prin-zessin
@umkreist=umm-kreist
@händelang=hände-lang
@Froschkönig=Frosch-könig
@Kamerad\b=Kame-rad
@sooft=so-oft
@geholte=gehoolte
@wiederer=wiider-er
@[iI]ch's=igs
@Tagewerk=Tage-werk
@[hH]autab=haut-ab
@[hH]albaus=halb-aus
@[gG]anzaus=ganz-aus
@Dreieinig=Drei-einig
@forteilte=fort-eilte
@Töchterlein=Töchter-lein
@holdselig=holld-sehlig
@hold=holld
@Küsterfrau=Küster-frau
@[eE]rmahn=er-mahn
@Hochzeitstafel=Hochzeits-tafel
@Hochzeit=Hocht-zeit
@ha\b=haa
@\s\'= ' 
@[tT]ob=tohb
@Deichsel=Deixel
@gewichst=gewixt
@Bösewicht=Böse wicht
@[fF]enster([^n])=fenster-$1
@Wanduhr=Wand-uhr
@sperrangelweit=sperr-angel-weit
@gewürgt=gewürkkt
@väter=fäter
@stärkt=stärrkt
@Kaufmannes=Kauf-mannes
@horch=horrch
@gehorrchten=gehorchten
@erholte=erhoolte
@Schlafkammer=schlaf-kammer
@schteinerne=schteinnerne
@liebster=liebstter
@prüfte=prüüfte
@Vöglein=Vöhglein
@herberg=herrberg
@ir\'s=ier's
@bisherig=bishehrig
@spän=schpän
@[sS]chwächste=schwächs-te
@Auerochs=Auer-ochs
@rachsüchtig=rach-süchtig
@[lL]ilie=lielie
@lielie\b=lielje
@verleumd=verläumd
@Kutschw=kuttschw
@[kK]utsche=kudsche
@[tT]ust=tuust
@[tT]ue\b=tuhe
@[tT]u\b=tuh
@weitererzählt=weiter-erzählt
@Nähnadel=Näh-nadel
@Schabernack=Schahbernack
@zerrte=zärrte
@Rehkälbchen=Reh-kälbchen
@Hundegebell=Hunndegebell
@Türlein=Tührlein
@spürte=spührte
@derentwillen=derent-willen
@rfrau=r-frau
@[wW]ächt=-wecht
@voll=-voll
@holst=hohlst
@Zauberin=Zauhberin
@Beet=Beht
@Wüstenei=Wüüstenei
@Kindelein=Kinndelein
@Spinnerinnen=Spinne-rinnen
@Weggehen=Weckgehen
@Fadendrehen=Faden-drehen
@Stiefmutter=Stief-mutter
@\bAde\b=Adee
@Holzaxt=Holz-axt
@Kneischen=Kneis-chen
@erschraken=errsch-raken
@Brothäuslein=Brohthäuslein
@geknetet=gekneetet
@Backofen=Back-ofen
@grauselich=grauhselich
@Schlangenblätter=Schlangen-blätter
@Gelübde=Gelüpde
@chlafend=chlahfend
@verborgen=verborrgen
@Sperling=Sperrling
@Ameisen=A-meisen
@Fittich=Fitttich
@verblend=verblennd
@Te\b=Tee
@eklig=eeklig
@hinkam=hinkahm
@kristallene=kristallne
@gärt=gährt
@Ha\b=Hha
@Herberge=Herrberge
@geblendet=geblenndet
@hässig=hässsig
@beschwert=beschwehrt
@köstlich=kösstlich
@Vögelchen=Vögel-chen
@Mäuschen=Mäus-chen
@Kikeriki=Kickerikie
@Nottaufe=Not-taufe
@Morgenstern=Morgen-stern
@Glasberg=Glahsberg
@Weinglas=Weinnglaas
@Glaskasten=Glas-kasten
@[gG]las=glaas
@Zwerglein=Zwerg-lein
@Packan=Pack-an
@Quere=Quehre
@Holzkeule=Hollzkeule
@Türchen=Tür-chen
@erbrachen=erbraachen
@Gemahlin=Gemahlinn
@ermüdet=ermühdett
@verfälscht=verfällscht
@[mM]ach\'s=mach'ss
@Adieu=Adiö
@weggeholt=weggehohlt
@schämst=schähmst
@Else=Ellse
@wehtäte=weh-täte
@Vogelgarn=Vogel-garn
@zerrissene\b=zerrissenne
@Warteinweil=Wart-einweil
@trübselig=trübsehlig
@Aha=Aaha
@Blasbalg=Blahsbalg
@geschürt=geschührt
@kämst=kähmst
@wärst=währst
@du\'s=duus
@Goldesel=Gold-esel
@Gräbelein=Grähbelein
@Rumpelkammer=Rummpelkammer
@Wams=Wamms
@Schlafenszeit=Schlahfenszeit
@Bügeleisen=Bügel-eisen
@Glotzaugen=Glotz-augen
@Bauersmann=Bauhersmann
@nachbrächte=nach-brächte
@dasjenige=dassjehnige
@demjenigen=dehmjehnigen
@Mauseloch=Mause-loch
@mausetot=mause-tot
@Wald-tiere=Waldtiere
@Schlafengehen=Schlafen-gehen
@Fingerlein=Finger-lein
@inständig=innschtändig
@blutrot=blut-rot
@Genesung=Geneesung
@betörte=betöhrte
@Stopfnadel=Stopf-nadel
@Siegellack=Siegel-lack
@zuschlagen=zuhschlagen
@Goliath=Gooliath
@[kK]lipp\b=klippp
@davongingen=davon-gingen
@Lobsprüche=Lobschprüche
@[sS]trip\b=strippp
@[sS]trap\b=strapp
@Piephühner=Piebhühner
@humpelte=hummpelte
@plumpte=plummpte
@Indianerrufe=Indianer-rufe
@hervorgeholt=hervorgehohlt
@Felsenabsturz=Felsen-absturz
@Benzinpreise=Benzin-preise
@geimpft=ge-impft
@[pP]rotzerei=pbrotzerei
@Vulkan=Vul-kahn
@TShirt=T-Shirt
@Apache=Apatsche
@Sennora=Senjoohra
@abraten=ab-raten
@Fundevogel=Funndevogel
@hintennach=hinten-naach
@hättst=hätttst
@Saaltüre=Saahltüre
@allgemeines=allgemeinnes
@Spieglein=Spiehglein
@dahergesprungen=daher-gesprungen
@Krämerin=Krhämerin
@[sS]chnür=schnühr
@[lL]iebstes=Liebsstes
@Tellerlein=Teller-lein
@Löffelein=Löffe-lein
@Gäbelein=Gähbelein
@Becherlein=Becher-lein
@Lebewohl=Lehbewohl
@Ländereien=Lände-reien
@beherrsche=be-herrsche
@Waldecke=Wald-ecke
@Stieftochter=Stief-tochter
@tröpfelte=tröpppfelte
@Meilenstiefel=Meilenschtiefel
@Geigenspiel=Geigenschpiel
@albern=allbern
@schaufelte=schauffelte
@zuschließ=zuhschließ
@darauflos=darauf-los
@Bergesabhang=Berges-abhang
@Granatenberg=Granaten-berg
@Simeliberg=Simeli-berg
@\bherzu\b=heerzu
@großzügig=groß-zügig
@weiterfuhr=weiter-fuhr
@Tannäpfel =Tann-äpfel
@[fF]rühmorgens=früh-morrgens
@Schneegänsen=Schnee-gänsen
@fortziehen=forrrtziehen
@wüst=wüüst
@Hofleute=Hof-leute
@Has\b=Haas
@loszuwerden=loszuwehrden
@Häslein=Hähslein
@Henkelkorb=Henkel-korb
@zucker([^ns])=zucker-$1
@dir\.=dier.
@Bürle=Bührle
@Kälblein=Kälb-lein
@Käsebrot=Kähsebrot
@Ofenkachel=Ofen-kachel
@[wW]ahrsag=wahr-sag
@krr=krä
@Kuhfell=Kuh-fell
@durchlöcherten=durchlöcher-ten
@fünftausend=fünf-tausend
@Sirup=Sierupp
@heimbrächte=heim-brächte
@Geratewohl=Gerate-wohl
@wohinaus=wo-hinaus
@zuschnüren=zuhschnüren
@Öllämpchen=Öhllämpchen
@hinging=hinnging
@Sternenkleid=Sterrnenkleid
@grämte=grähmte
@Nachteule=Nacht-eule
@siebentausend=sieben-tausend
@Brauttagen=Braut-tagen
@murmelte=murrmelte
@Zachiel=Zachjjel
@Tautropfen=Tau-tropfen
@heimkam=heimkahm
@Sense=Sennse
@Maulesel=Maul-esel
@Edelknabe=Ehdelknabe
@heimkommen=heihmkommen
@pust=puust
@Liedlein=Liehdlein
@entkam=entkahm
@Wildbret=Wildbrett
@stumpf=stummpf
@Teufels=Teufels-
@[gG]espenster=Geschpennster
@Lammfleisch=Lamm-fleisch
@Pferdefleisch=Pferde-fleisch
@kurzweg=kurzwägg
@[gG]estorbenen=gestorbbenen
@zuschlug=zuhschlug
@Edelmann=Ehdelmann
@vergnügtem=vergnügtemm
@[kK]lump=klummp
@[äÄ]cker=Ekker
@Schubkarren=Schuhbkarren
@[gG]änse=gännse
@Spinneweb=Spinne-wehb
@wunderbare=wunder-bare
@[qQ]uält=quählt
@durchreitet=durrchreitet
@verlumpt=verlummpt
@Missetat=Misse-tat
@dazubleiben=dahzubleiben
@dalag=dahlag
@[bB]etet=behtet
@Fremdling=Fremmdling
@[fF]ürs([^t])=führs$1
@möcht\'s=möchtt's
@[iI]mmerfort=immer-fort
@Sattelzeug=Satttelzeug
@Stubentür=Stuben-tür
@verlornes=verlohrnes
@Diamant=Dia-mannt
@gutmachen=gut-machen
@[lL]iebster=Liebstter
@Kleinode=Klein-ode
@dehmütig\b=deh-mütig
@Wasserfluss=Wasser-fluss
@hernieder=her-nieder
@[hH]ütet=hühtet
@geärgert=geärrgert
@Eisenofen=Eisen-ofen
@[oO]benan=oben-an
@Egge=Ägge
@Schmiedegesell=Schmiede-gesell
@bedungen=bedunngen
@durchkomm=durrchkomm
@fortlassen=forttlassen
@Schäferrock=Schäfer-rock
@Betrügerin=Betrühgerin
@[gG]läserne=glähserne
@Mörsel=Mörrsel
@[gG]nädig=gnäädig
@drangsalte=drangssaalte
@hernach=her-naach
@wünscht=wünnscht
@frischgedecktes=frischgedeckttes
@brächt=brecht
@adlig=ahdlig
@Abecebuch=Abezeebuch
@heimkehren=heimmkehren
@gestrebt=ge-strebt
@Art\.=Ahrt.
@Studentenkniffe=Studenten-kniffe
@trübselig=trühbselig
@Vogelscheuche=Vogel-scheuche
@lobte=loobte
@Zaunkönig=Zaun-könig
@trabte=trab-te
@lärmten=lärrmten
@Brummbär=Brummmbär
@vierfüßig=viehrfüßig
@Gebraus=Ge-braus
@Hornisse=Hor-nisse
@durchessen=durrch-essen
@hagebüchnen=hahgebüchnen
@Hoftor=Hooftor
@abgeäschert=abgeäschschert
@Hausunke=Haus-unke
@Zweiglein=Zweig-lein
@vollbracht=voll-bracht
@einerlei=ei-nerlei
@Zimmeraxt=Zimmer-axt
@hübscher=hüpscher
@Felleisen=Fell-eisen
@Schneiderlein=Schneihderlein
@Meistertochter=Meister-tochter
@Haustüre=Hausstüre
@Lasttier=Lastttier
@Speisekammer=Speihsekammer
@Barmherzigkeit=Barm-herzigkeit
@übst=üübst
@unterschied=unterschiid
@Hinterbeine=Hinnterbeine
@Garaus=Gar-aus
@gutmütige=gut-mütige
@Guttat=Guuttat
@Hofs=Hohfs
@Übermut=Ühbermut
@Zuckererbsen=Zucker-erbsen
@fortreiten=forttreiten
@Igel=Iegel
@Büblein=Bühblein
@unschuldig=unnschuldig
@warteten=warte-ten
@[zZ]ungen=tsungen
@durchfahren=durrchfahren
@herkäme=hehrkäme
@Dreschflegel=Dresch-flegel
@Hörner=Hörrner
@müssten's=müsstten's
@silber=sillber
@Heidlerche=Heid-lerche
@barmherzig=barm-herzig
@Mägdedienste=Mähgdedienste
@Häscher=Häscherr
@Katzenaugen=Katzen-augen
@Heumonat=Heu-monat
@Hui=Huie
@hurlehau=hurle-hau
@Hauhau=Hau-hau
@ringsumher=rings-umhehr
@Krautesel=Kraut-esel
@daherging=dahehrging
@Flucht=Fluchttt
@Jägerranzen=Jähgerranzen
@Eselin=Ehsellin
@mittendrein=mitten-drein
@Vogelkäfig=Vogel-käfig
@Fechtmeister=Fechttmeister
@Hufeisen=Huf-eisen
@Schweinehirtentochter=Schweine-hirten-tochter
@[vV]errückter=verrückterr
@Walfisch=Wahlfisch
@Meerkatze=Mehrkatze
@\b[hH]m\!=hm
@durchsetzte=durrch-setzte
@Pflugrad=Pfluhgrad
@übergefahren=ühbergefahren
@haspelte=hasspelte
@geschickter=geschickterr
@Zweiäuglein=Zweihäuglein
@Dreiäuglein=Dreihäuglein
@Schwestern=Schvestern
@gedecktes=gedecktess
@Tischlein=Tisch-lein
@Wagestück=Wahgestück
@Vorzeiten=Vor-zeiten
@einschläfst=eihnschläfst
@geharnischte=geharrnischte
@Schweinehirt=Schweine-hirt
@Herde=Hehrde
@wollene=wolllenne
@missgönnten=miss-gönnten
@verstopfte\b=verstopf-te
@Reginer=Rehginer
@hinwegfliegen=hinweg-fliegen
@nackter=nackterr
@Überfluss=Ühberfluss
@erlernt=erlerrnt
@fortjag=forttjag
@übermächtig=üübermächtig
@widersetzt=wider-setzt
@mächtiger=mächttiger
@Semsi=Semmsii
@zurückbekam=zurückbekahm
@Reichtümer=Reich-tümer
@Eselein=Ehselein
@Essigkrug=Essig-krug
@Schlafkämmerlein=Schlaf-kämmerlein
@Hinterhalt=Hinnterhalt
@daherritt=daheerritt
@Konstantinopel=Kons-tantinopel
@Stümpfe=Stümmpfe
@bissene\b=bissenne
@Hahnenbalken=Hahnennbalken
@Wunderdinge=Wunnderdinge
@federleicht=fehderleicht
@vierblättriges=viehrblättriges
@blaublühenden=blau-blühenden
@durchwaten=durrchwaten
@Haferkasten=Haaferkasten
@fortregnen=forttregnen
@totzuarbeiten=tot-zuarbeiten
@nebeneinander=neben-einander
@Kot\b=Koht
@[bB]üb=bühb
@Schnäbelein=Schnähbelein
@Sterntaler=Sterrntaler
@Polterabend=Polter-abend
@Rätselmärchen=Rätsel-märchen
@zuleide\b=zu-leide
@übernachtet=übernachtett
@blökt=blöhkt
@Pelzwerk=Pellzwerk	
@unsereiner=unser-einer
@Heuschrecke=Heuhschrecke
@Maulaffen=Maul-affen
@Rosenbäumchen=Rosen-bäumchen
@Schneiderbürschchen=Schneider-bürschchen
@zueilte=zuh-eilte
@entzog=entzoog
@bläulichen=bläuhlichen
@abgewendet=abgewenndet
@heirat=heihrrat
@zuvorkommender=zuvor-kommender
@unterirdische=unnter-irdische
@Abendessens=Abend-essens
@[bB]ienen=Bienen-
@Biene=Biehne
@Gänslein=Gänzlein
@Restchen=Resstchen
@jahraus=jahr-auhs
@jahrein=jahr-eihn
@Dörner=Dörrner
@Schwerter=Schwehrter
@Tannenast=Tannen-ast  
@Tannendreher=Tannen-dreher
@heimkehrte=heimmkehrte
@Eingangstüre=Eingangs-türe
@[zZ]entner=Zenntner
@Zwerges=Zwerrges
@Meeresstrand=Meeres-strand
@Waldsperling=Waldschperrling
@Waldtaube=Wald-taube
@wohlriechend=woohlriechend
@Elfenbein=Elllfenbein
@Maimorgen=Mai-morgen
@gegebene=gegehbenne
@Adlers=Aadlers
@klatscht=klattscht
@watschelte=wattschelte
@Mäuseloch=Mäuhseloch
@aufbrachen=aufbraachen
@Berge=Bergge
@verbergen=verberggen
@Schuhu=Schu-hu
@fortlief=forrtlief
@gräuliche=gräuhliche
@Heugabel=Heuhgaabel
@Kriegstaten=Kriehgstaten
@Querbalken=Quehrbalken
@Ringeltanz=Ringel-tanz
@Unterwelt=Unnterwelt
@Aufenthalt=Auhfenthalt
@Kornsäcke=Korrnsäcke
@Hirse\b=Hirrse
@Hirsenbrei=Hirssenbrei
@Daseins=Daaseins
@erheben=erhehben
@pockennarbig=pocken-narbig
@Faulenzer=Fauhlennzer
@austrocknet=austrocknett
@hakte=hahkte
@Zimmerleute=Zimmerrleute
@Werkstätte=Werkschtätte
@weiterreden=weiter-reden
@Flügelpferde=Flühgelpfehrde
@auszuhalten=ausszuhalten
@Bauerndirne=Bauern-dirne
@Hälse=Hällse
@hätschelte=hättschelte
@wildem=willdemm
@mittendurch=mitten-durch
@herumirren=herum-irren
@[sS]maragd=sma-ragd
@[sS]chönste=schöönste
@uhu=u-hu
@kamst=kahmst
@ringsherum=rings-herum
@gestraft=ge-straaft
@Moosrose=Mohsrose
@[eE]hrerbietig=Ehr-erbietig
@Schuhmacher=Schuh-macher
@davongehen=davonngehen
@[sS]ooft=so-oft
@blas\b=blaas
@strömt=ströhmt
@Schäferin=dSchäferrin
@Strohlager=Stroh-lager
@Fliegen(\S)=Fliehgenn$1
@tölpisch=töllpisch
@hoffärtig=hofffärtig
@Weidenbäume=Weihdennbäume
@heimreisen=heihmreisen
@Häcksel=Häkksel
@Näscher=Näscherr
@geöffnete([^m])=geöffnette$1
@faulenzen=faulllenzen
@Ellbogen=Ell-bogen
@schöpfte=schöppfte
@Wetterfahne=Wetter-fahne
@Kronleuchter=Krohnleuchter
@untergehen=unntergehen
@Kohlenkasten=Kohlen-kasten
@hinabgestürzt=hi-nappgestürzt
@heimziehen=heihmziehen
@Hirtenkleid=Hirrtenkleid
@Haarband=Haahrband
@Glühwürmer=Glüh-würmer
@Sturmwind=Sturrmwind
@Buxtehuder=Buxte-huder
@verlassene=verlahssenne
@Ärmste=Ärrmste
@Schatzkammer=Schattzkammer
@Bäuerlein=Bbäuerlein
@Himmelsgegenden=Himmels-gegenden
@überraschte=überrraschte
@untertauch=unttertauch
@zumut=zu-mut
@Tierhändler=Tierhändlerr
@ungeratener=ungerahtener
@färbte=färrbte
@daliegen=dah-liegen
@Dorfkirche=Dorffkirche
@Leinewand=Leihne-wand
@bezwingen=be-zwingen
@erregte=errehgte
@Kornähre=Korn-ähre
@Segens=Seegens
@weggewendet=weg-ge-wendet
@Habsucht=Habsuchttt
@mildtätig=milddtätig
@Kirchhofs=Kirchhohfs
@stiefel=schtiefel
@Haderlumpen=Hahderlumpen
@Brotmesser=Brot-messer
@eingehakt=eingehahkt
@dächte=dechte
@Büffelleder=Büffel-leder
@Unterfutter=Unnterfutter
@manierlich=manier-lich
@Freudengeschrei=Freuhdengeschrei
@eisernes=eihsernes
@Bekanntmachung=Bekannntmachung
@weitläufig=weittläufig
@zurechtmachen=zurecht-machen
@Linnentücher=Linnen-tücher
@Kaufleuten=Kauffleuten
@grämst=grähmst
@hinzuläd=hinzu-lähd
@lädst=lähdst
@(.)lädt=$1läädt
@bläs\b=blääs
@schröpfte=schröppfte
@schmier\b=schmiehr
@schliffene\b=schlifffenne
@umgeschlungen=ummgeschlungen
@schleckte([rst])=schlecktte$1
@zernagten=zernag-ten
@zerschpringen=zer-springen
@zerrissene=zerrissehne
@Bartmesser=Bahrtmesser
@Messerlein=Messerrlein
@erwerbe\b=erwerrbe
@Sterbelager=Sterrbelager
@verderbten=verderrbten
@unbeholfene=unbeholffene
@Erd=Ehrd
@betrübtem=betrübttem
@--=-
@-+([\.\?!,;:])=$1
@\!",= !",
@\?",= ?",
@\.",= .",
@\.'=.