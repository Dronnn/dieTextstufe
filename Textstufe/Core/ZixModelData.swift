// Generated from the ZIX v0.2.5 artifacts. Do not edit by hand.
// Source: https://github.com/machinelearningZH/zix_understandability-index
// See THIRD_PARTY_NOTICES.md for attribution and licensing.

enum ZixModelData {
    static let featureMeans: [Double] = [13.027339771495559, 5.293706274689018, 0.5398912275791652, 0.6042187508489198, 0.7104232378501972, 7.2647732946122865]
    static let featureScales: [Double] = [5.270208328349536, 3.0924847517427874, 0.13947879422093715, 0.1541570811301047, 0.13901246284336297, 1.345796650774944]
    static let coefficients: [Double] = [2.0351506183719907, -2.143949734772969, -0.1533694371561715, -0.615419118856878, 0.12972162987393587, -1.5477195646018889]
    static let intercept: Double = 4.251873884592504

    /// Goethe A1 lemmas as distributed by ZIX (Swiss spelling, `ss` instead of `ß`).
    static let vocabularyA1: Set<String> = set(vocabA1Blob)

    /// Goethe A2 lemmas as distributed by ZIX.
    static let vocabularyA2: Set<String> = set(vocabA2Blob)

    /// Goethe B1 lemmas as distributed by ZIX.
    static let vocabularyB1: Set<String> = set(vocabB1Blob)

    /// Frequency score per lemma (0–10000), one entry per line as `lemma<TAB>score`.
    static let wordScores: [String: Double] = parseWordScores(wordScoreBlob)

    private static let vocabA1Blob = """
ab
abend
aber
abfahren
abfahrt
abfliegen
abflug
abgeben
abholen
absender
acht
achtung
achtzehn
achtzig
adresse
all
alle
allein
alleine
also
alt
alter
an
anbieten
ander
anfang
anfangen
angebot
anklicken
ankommen
ankreuzen
ankunft
anmachen
anmelden
anmeldung
anrede
anruf
anrufbeantworter
anrufen
ansage
anschluss
antwort
anzeige
anziehen
apartment
apfel
appetit
april
arbeit
arbeiten
arbeitslos
arbeitsplatz
arm
arzt
auch
auf
auf sein
aufgabe
aufhören
aufstehen
aufzug
auge
august
aus
aus sein
ausflug
ausfüllen
ausgang
auskunft
ausland
ausländer
ausländisch
ausmachen
aussage
aussehen
aussteigen
ausweis
ausziehen
auto
autobahn
automat
automatisch
baby
bad
baden
bahn
bahnhof
bahnsteig
bald
balkon
banane
bank
bar
bauch
baum
beamter
bedeuten
beginnen
bei
beide
bein
beispiel
bekannt
bekannte
bekommen
benutzen
beruf
besetzen
besichtigen
best
bestellen
besuchen
bett
bezahlen
bier
bild
billig
birne
bis
bisschen
bitt
bitte
bitten
blau
bleiben
bleistift
blick
blume
bogen
brauchen
braun
breit
brief
briefmarke
bringen
brot
bruder
brötchen
buch
buchstabe
buchstabieren
bus
butter
bäckerei
bös
böse
café
cd
cent
chef
cm
computer
da
daneben
dank
danken
dann
datum
dauern
dein
denn
der
der kopf unter arm tragen
der kopf unter der arm tragen
deutsch
deutsche
deutschland
dezember
dich
dienstag
dir
doktor
donnerstag
doppelzimmer
dorf
dort
draussen
drei
dreissig
dreizehn
dritter
drucken
drucker
drücken
durch
durchsage
durst
dusche
duschen
dürfen
ecke
ehefrau
ehemann
ei
eilig
ein
einer
einfach
eingang
einhundert
einkaufen
einladen
einladung
einsteigen
eintausend
eintritt
einzelzimmer
elf
eltern
empfehlen
empfänger
ende
enden
entschuldigen
entschuldigung
er
ergebnis
erklären
erlauben
erster
erwachsene
erzählen
es
essen
euer
euro
europa
europäer
europäisch
fahren
fahrer
fahrkarte
fahrrad
fallen
falsch
familie
familienname
familienstand
farbe
fax
februar
fehlen
fehler
feierabend
feiern
feiertag
fernsehen
fertig
feuer
fieber
film
finden
firma
fisch
flasche
fleisch
fliegen
flughafen
flugzeug
formular
foto
frage
frau
frei
freitag
freizeit
fremd
freuen
freund
früh
frühjahr
frühling
frühstück
frühstücken
fuss
fussball
führung
fünf
fünfzehn
fünfzig
für
garten
gast
geben
geburtsjahr
geburtsort
geburtstag
gebären
gegen
gehen
gehören
gelb
geld
gemüse
gepäck
gerade
geradeaus
gern
gerne
geschenk
geschwister
geschäft
gespräch
gestern
getränk
gewicht
gewinnen
glas
glauben
gleich
gleis
glück
glücklich
glückwunsch
grad
grade
gradeaus
gramm
gratulieren
grau
grillen
gross
grosseltern
grossmutter
grossvater
gruppe
gruss
grösse
grün
gut
gültig
günstig
haar
haben
halb
halbpension
halle
hallo
halten
haltestelle
hand
handy
haus
hausaufgabe
hausfrau
hausmann
heimat
heiraten
heissen
helfen
hell
herbst
herd
herr
herzlich
heut
heute
hier
hilfe
hinten
hobby
hoch
hochzeit
holen
hotel
hund
hundert
hunger
hähnchen
hören
ich
ihm
ihn
ihr
immer
in
information
international
internet
ja
jacke
jahr
januar
jeder
jetzt
job
jugendliche
juli
jung
juni
kaffee
kaputt
karte
kartoffel
kasse
kaufen
kein
kennen
kennenlernen
kg
kilo
kilogramm
kilometer
kind
kindergarten
kino
kiosk
klar
klasse
kleidung
klein
km
kochen
koffer
kollege
kommen
konto
kopf
kosten
krank
kreditkarte
kriegen
kuchen
kugelschreiber
kulturell
kunde
kundin
kurs
kurz
können
küche
kühlschrank
kümmern
lachen
laden
land
lang
lange
langsam
laufen
laut
leben
lebensmittel
ledig
legen
lehrer
leicht
leider
leise
lernen
lesen
letzt
leute
licht
lieb
lieben
lied
liegen
links
liter
lkw
lokal
lustig
lösung
machen
mai
man
mann
maschine
meer
mehr
mein
meist
mensch
meter
miete
mieten
milch
milliarde
million
minute
mit
mitbringen
mitkommen
mitmachen
mitnehmen
mittag
mitte
mittwoch
moment
montag
morgen
mund
mutter
mädchen
männlich
märz
möbel
mögen
möglich
müde
müssen
nach
nachmittag
name
nehmen
nein
neu
neun
neunzehn
neunzig
nicht
nichts
nie
noch
norden
normal
november
nummer
nur
nächst
oben
obst
oder
oft
ohne
oktober
oma
opa
ordnung
ort
osten
papier
partner
partnerin
party
pass
pause
pfund
plan
platz
polizei
pommes frites
post
postleitzahl
praktikum
praxis
preis
problem
prospekt
prozent
prüfung
pünktlich
qm
quadratmeter
rad fahren
rauchen
raum
rechnung
rechts
regen
regnen
reis
reise
reisebüro
reiseführer
reisen
reparatur
reparieren
restaurant
rezeption
richtig
riechen
rot
ruhig
saft
sagen
salat
salz
samstag
satz
scheinen
schicken
schild
schinken
schlafen
schlecht
schliessen
schluss
schlüssel
schmecken
schnell
schon
schrank
schreiben
schuh
schule
schwarz
schwer
schwester
schwimmbad
schwimmen
schön
schüler
sechs
sechzehn
sechzig
see
sehen
sehenswürdigkeit
sehr
sein
seit
sekunde
selbstständig
selbständig
september
sich
sie
sieben
siebenzig
siebzehn
siebzig
sitzen
so
sofa
sofort
sohn
sollen
sommer
sonnabend
sonne
sonntag
speisekarte
speisenkarte
spielen
sport
sprache
sprechen
spät
st
stadt
stehen
stelle
stellen
stock
strasse
strassenbahn
student
studieren
studium
stunde
suchen
süden
tag
tanzen
tasche
tausend
taxi
tee
teil
telefon
telefonieren
termin
test
teuer
text
thema
ticket
tisch
tochter
toilette
tomate
tot
treffen
treppe
trinken
tun
uhr
um
umziehen
und
unser
unten
unter
unterricht
unterschreiben
unterschrift
urlaub
vater
verbieten
verdienen
verein
verkaufen
verkäufer
vermieten
vermieter
verstehen
verwandte
viel
vielleicht
vier
viertel
vierter
vierzehn
vierzig
von
vor
vormittag
vorname
vorsicht
vorstellen
vorwahl
wagen
wandern
wann
warten
warum
was
waschen
wasser
weg sein
wehtun
weiblich
wein
weit
weiter
welcher
welt
wenig
wer
werden
westen
wetter
wichtig
wie
wie viel
wieder holen
wiederholen
wiederhören
wiedersehen
willkommen
wind
winter
wir
wissen
wo
woche
wochenende
wochentag
woher
wohin
wohnen
wohnung
wollen
wunderbar
zahlen
zehn
zeit
zeitung
zentimeter
zigarette
zimmer
zirka
zoll
zu
zu sein
zufrieden
zug
zurzeit
zurück
zusammen
zwanzig
zwei
zweihundert
zweiter
zwischen
zwölf
öffnen
öl
über
übernachten
überweisen
"""

    private static let vocabA2Blob = """
abschliessen
ahnung
aktiv
aktuell
als
ampel
anders
angst
ansehen
anzug
apotheke
apparat
arm
artikel
auf jeder fall
auf kein fall
aufmachen
aufpassen
aufregen
aufräumen
ausbildung
ausgeben
ausgehen
auspacken
ausruhen
ausser
ausserdem
ausserhalb
aussprechen
ausstellung
austauschen
austragen
babysitter
backen
ball
band
basketball
basteln
bauen
baustelle
beantworten
bedanken
beeilen
beenden
begründen
belieben
bequem
beraten
berg
berichten
berühmt
bescheid
beschreiben
beschweren
besonders
bestehen
bestätigen
besuch
besuchen
bewerben
bewerbung
bewölkt
bibliothek
blatt
blog
blond
bluse
blöd
bohne
braten
brille
brücke
buchen
bunt
büro
cafeteria
chatt
chefin
comic
creme
dabei
dafür
dagegen
damals
dame
darauf
darüber
dass
datei
denken
deshalb
deutlich
dick
ding
direkt
disco
diskutieren
doch
dorther
dorthin
dringend
drinnen
drüben
dumm
dunkel
dünn
echt
egal
ehepartner
eigen
eigentlich
ein mal
einiger
einkaufszentrum
einpacken
eintragen
einverstanden
einzeln
einziehen
eis
endlich
eng
erdgeschoss
erfahrung
erinnern
erlaubnis
ermässigung
erreichen
erst
etwas
fach
fahrplan
fallen
fan
fantastisch
fast
faul
feier
fenster
ferien
fest
festival
fett
fit
fleissig
flohmarkt
flug
fluss
fotoapparat
fotografieren
freiwillig
freundin
freundlich
frisch
froh
früh
fundsache
furchtbar
fühlen
führerschein
gabel
ganz
garage
gefährlich
gegenteil
gegenüber
gehalt
geldbörse
genau
genug
gericht
gerät
geschichte
geschirr
gesund
gesundheit
gewitter
gitarre
grippe
hals
hamburger
handtuch
hart
hauptstadt
haushalt
heft
heiss
heizung
hemd
her
heraus
herein
herstellen
herunterladen
himmel
hin
hinter
hoffen
hoffentlich
homepage
hose
husten
händetuch
hängen
hässlich
idee
informieren
insel
instrument
intelligent
interesse
interessieren
interview
jeans
jemand
joggen
jugendherberge
kalender
kalt
kamera
katze
kaufhaus
keller
kenntnis
kette
kirche
klappen
klavier
kleid
klub
klug
kollegin
komisch
kontakt
kontrollieren
konzert
kosmetik
kostenlos
krankenhaus
krankenkasse
krankheit
kredit
kreuzung
krimi
kultur
kunst
käse
körper
kühl
kündigen
lampe
landschaft
langweilig
laptop
lassen
leer
leidtun
leihen
liebe
liefern
link
lust
löffel
lüge
lügen
magen
mail
mailbox
mal
malen
mancher
manchmal
mannschaft
mantel
markt
medikament
meinen
meinung
meistens
menge
merken
messe
messer
mindestens
mineralwasser
mitarbeiter
mittagessen
mittel
mobiltelefon
mode
modern
motor
motorroller
museum
musik
müll
mütze
nachbar
nachbarin
nachricht
nass
natur
natürlich
nebelig
neben
nebenan
neblig
nennen
nervös
nett
niemand
nirgends
note
notieren
notiz
notwendig
nudel
nächste
nähe
nützlich
offen
ohr
online
orange
organisieren
paar
packen
paket
parfüm
park
parken
passen
passieren
passwort
person
pferd
pflanze
photographieren
pizza
plakat
planen
plötzlich
portion
poster
postkarte
praktisch
preiswert
privat
pro
probieren
produkt
programm
projekt
prüfen
pullover
putzen
qualität
quiz
rad
radio
raten
rathaus
raus
rechnen
recht
reden
reich
reifen
reihe
rein
reinigung
reiten
renovieren
rentner
rentnerin
reservieren
rest
rezept
rind
ring
rock
romantisch
rose
rucksack
rufen
ruhe
rund
rundgang
rätsel
rücken
sache
sammeln
sauber
sauer
schade
schaffen
scharf
schenken
schere
schiff
schimpfen
schirm
schlafzimmer
schlimm
schloss
schmerz
schmutzig
schnee
schneiden
schneie
schokolade
schrecklich
schriftlich
schwach
schwanger
schwein
schwierig
schädlich
schülerin
seife
seite
selbst
sendung
service
setzen
singen
situation
sogar
sonnig
sonst
spannend
sparen
spass
spazieren
spaziergang
spiel
sportlich
sportplatz
sprechstunde
stadtplan
star
stark
stattfinden
sterben
stiefel
stift
stipendium
stockwerk
strand
streiten
streng
stress
stressig
studentin
stuhl
stören
stück
super
supermarkt
suppe
surfen
sympathisch
süss
süssigkeit
tablet
tablette
tafel
taschengeld
tasse
tauschen
team
teilen
teilnehmen
teller
tennis
theater
tief
tier
tipp
titel
toll
topf
torte
total
tour
tourist
touristin
tragen
trainieren
training
traum
traurig
trocken
träumen
tschüss
typisch
tür
umsteigen
umzug
unbedingt
unfall
universität
unterhalten
unterkunft
unternehmen
unterschied
untersuchen
unterwegs
verabreden
veranstaltung
verbieten
vereinbar
vergessen
vergleichen
verkehr
verkehrsmittel
verletzen
verlieben
verlieren
vermieterin
verpassen
verreisen
verschieben
verschieden
verspätung
versuchen
vertrag
vogel
voll
volleyball
vorbei
vorbereiten
vorgestern
vorher
vorn
vorne
vorschlag
vorwärts
wach
wahr
wahrscheinlich
wald
warm
webseite
wechseln
wecken
weg
wegen
weich
weil
weinen
wenigstens
wenn
werkstatt
wettbewerb
wieder
windig
wirklich
witz
witzig
wohnzimmer
wolke
workshop
wunsch
wurschen
wurst
wählen
wäsche
wünschen
zahl
zahn
zeichnen
zeigen
zeitschrift
zelt
zentrum
zettel
zeugnis
ziehen
ziel
zirkus
zitrone
zoo
zu beispiel
zucker
zuerst
zuhören
zuletzt
zumachen
zurückfahren
zurückgeben
zurückgehen
zurückkommen
zurücklaufen
ändern
ärgern
üben
überall
übermorgen
übersetzen
übersetzung
"""

    private static let vocabB1Blob = """
abbiegen
abbildung
abenteuer
abfall
abfalleimer
abgas
abhangen
abheben
abhängen
abhängig
abitur
ablehnen
abmachen
abnehmen
abonnement
abonnieren
absagen
abschied
abschluss
abschnitt
abschreiben
absenderin
absolut
abstimmen
abt
abteilung
abwart
abwartin
abwaschen
abwesend
abwärts
achten
aktion
aktivität
akzeptieren
alarm
alkohol
allerbest
allerdings
allerschönst
allgemein
alltag
alltäglich
alphabet
altenheim
alternativ
alternative
altersheim
amt
amüsieren
analysieren
anbieter
andererseits
anderseits
andrerseits
anerkennen
anfang
angabe
angeben
angehörige
angenehm
angestellter
anhaben
ankündigen
anlage
anleitung
annehmen
annonce
anschaffen
anschliessen
anschnallen
ansprechen
anspruch
anstellen
anstrengen
anstrengend
antrag
anwalt
anwenden
anwesend
anwältin
anzahl
anzeigen
aprikose
arbeiter
arbeiterin
arbeitserlaubnis
arbeitslosigkeit
arbeitsstelle
architekt
architektin
art
asyl
atem
atmen
aufenthalt
auffallen
auffordern
aufforderung
aufführen
aufgeben
aufhalten
aufheben
aufladen
auflösen
aufmerksam
aufnahme
aufnehmen
aufschreiben
auftrag
auftreten
auftritt
aufwachen
aufwärts
augenblick
ausbilden
ausdruck
ausdrucken
auseinander
ausfahrt
ausfallen
ausgabe
aushilfe
ausländerin
ausnahme
ausreichen
ausrichten
ausschliessen
ausschliesslich
aussen
aussprache
ausstellen
aussuchen
auswahl
auswählen
auszeichnen
autor
autorin
backofen
backrohr
badewanne
ballett
bancomat
bancomatkarte
bankleitzahl
bankomat
bankomatkarte
bar
bargeld
bart
batterie
bau
bauer
bauernhof
beachten
beamtin
beantragen
bedarf
bedeutung
bedienen
bedienungsanleitung
bedingung
beeinflussen
befinden
befreien
befriedigend
begegnen
begeistern
beginn
begleiten
begrenzen
begründung
begrüssen
behalten
behandeln
behaupten
behindern
behörde
beinah
beinahe
beissen
beitrag
bekanntgeben
beleg
beleidigen
bemerken
bemühen
benzin
benötigen
beobachten
beratung
berechnen
bereich
bereit
bereits
bericht
beruflich
berufstätig
beruhigen
beschliessen
beschreibung
beschränken
beschädigen
beschäftigen
beschäftigung
besetzen
besond
besorgen
besprechen
besprechung
besserung
bestimmen
bestrafen
bestätigung
beteiligen
betrag
betragen
betreuen
betreuer
betreuerin
betreuung
betrieb
betriebsrat
betriebsrätin
betrunken
bevor
bevölkerung
bewegung
beweis
beweisen
bewohner
bewohnerin
beziehung
bieten
bildschirm
billett
bio
biologie
biologisch
bisher
blass
blind
blitz
blitzen
bloss
bluten
blühen
boden
boot
botschaft
braten
brechen
bremse
bremsen
brennen
briefkasten
brieftasche
briefträger
briefträgerin
briefumschlag
broschüre
brust
brötli
bub
buchhandlung
buffet
burg
büchse
büfett
bühne
bürger
bürgerin
bürste
chance
chipkarte
coiffeur
coiffeuse
couch
cousin
cousine
couvert
dach
daher
dahin
damit
danach
dankbar
darstellen
darstellung
dasselbe
datum
dauer
dauernd
decke
dekorieren
denkmal
derselbe
dessert
desto
deswegen
detail
dialekt
dialog
dicht
dieb
dienen
dienst
dieser
diesmal
digital
diplom
direktor
direktorin
diskothek
diskussion
distanz
diät
doktorin
dokument
donner
donnern
doppelt
dose
dreck
drehen
drin
droge
drogerie
druck
durcheinander
durchschnitt
durchschnittlich
durstig
duzen
eben
ebenfalls
ebenso
eck
eckig
ehe
ehepaar
eher
ehrlich
eignen
eile
eilen
ein paar
einbahnstrasse
einbrechen
einbrecher
einbrecherin
einbruch
eindeutig
eindruck
einerseits
einfahrt
einfall
einfallen
einfluss
einfügen
einführen
einführung
einheitlich
einige
einkauf
einkommen
einnahme
einnehmen
einrichten
einrichtung
einsam
einschalten
einschliesslich
einschreiben
einsetzen
einstellen
eintreten
einwohner
einwohnerin
einzahlen
einzahlung
einzelheit
einzig
eisenbahn
elegant
elektrisch
elektronisch
empfang
empfangen
empfehlung
endgültig
energie
enkel
enkelin
entdecken
entfernen
entfernung
entgegenkommen
enthalten
entlang
entlassen
entlassung
entscheiden
entscheidung
entschliessen
entsorgen
entspannen
entstehen
enttäuschen
enttäuschung
entweder
entwickeln
entwickelung
entwicklung
erdapfel
erde
ereignen
ereignis
erfahren
erfinden
erfindung
erfolg
erfolgreich
erforderlich
erfordern
erfüllen
ergänzen
erhalten
erholen
erholung
erhöhen
erhöhung
erinnerung
erkennen
erklärung
erkundigen
erkälten
erkältung
erleben
erlebnis
erledigen
erleichtern
ernst
ernsthaft
ernte
ernähren
ernährung
ersatz
erschrecken
erschöpfen
ersetzen
erstellen
erwachsen
erwarten
erziehen
erziehung
erzählung
eröffnen
eröffnung
essig
etage
etwa
eventuell
ewig
experte
export
extra
extrem
fabrik
fachfrau
fachleute
fachmann
fahrbahn
fahrzeug
fair
faktor
fall
falls
fangen
fantasie
farbig
faschierter
fasching
fasnacht
fassen
faulenzen
fauteuil
feber
feld
fernbedienung
fernsehen
fernseher
fest
festhalten
festlegen
festnehmen
festplatte
festsetzen
feststehen
feststellen
fett
feucht
feuerwehr
feuerzeug
figur
finanziell
finanzieren
finger
flach
fleck
fleischhauer
flexibel
fliehen
fliessen
fliessend
flucht
flur
fläche
flöte
flüssigkeit
folge
folgen
folgend
fordern
forderung
form
forschung
fortbildung
fortschritt
fortsetzen
fortsetzung
forum
fotograf
fotografie
frech
freiheit
fremdsprache
fressen
freude
freundschaft
friede
frieden
frieren
friseur
frist
frisur
frucht
fröhlich
fundbüro
funktionieren
fussgänger
fussgängerin
fussgängerzone
fähigkeit
fähre
fällig
färbig
fördern
führen
führerausweis
fürchten
füttern
galerie
gang
gar
garantie
garantieren
garderobe
gas
gasthaus
gaststätte
gebiet
gebirg
gebrauchen
gebrauchsanweisung
geburt
gebäck
gebäude
gebühr
gedanke
gedicht
geduld
gefahr
gefängnis
gefühl
gegend
gegensatz
gegenstand
gegner
geheim
geheimnis
gehsteig
geldautomat
gelegenheit
gelingen
gelten
gemeinsam
gemeinschaft
gemütlich
genauso
genehmigen
generation
geniessen
genügen
gerecht
gering
geschehen
geschlecht
geschmack
geschwindigkeit
geschwindigkeitsbeschränkung
gesellschaft
gesetz
gespannt
gewalt
gewerkschaft
gewinn
gewissen
gewohnen
gewohnheit
gewöhnen
gewöhnlich
gewürz
giessen
gift
giftig
girokonto
glace
glatt
gleichberechtigt
gleichfalls
gleichzeitig
gold
golf
gott
grafik
gras
gratis
gratulation
greifen
grenze
grill
grillieren
grund
grundstück
gründen
gründlich
grüssen
gucken
gymnastik
hackfleisch
hafen
hageln
halbtags
hallenbad
halt
haltbar
hammer
handel
handeln
handwerker
hassen
hauptbahnhof
hausmeister
hausmeisterin
haustier
haut
heben
heim
heimlich
heimweh
heizen
held
heldin
henderl
hendl
herausfinden
herausforderung
herkunft
hersteller
herunterfahren
herz
hieher
hierher
hinterher
hinterlassen
hinweis
hinweisen
historisch
hitze
hochladen
hof
hoffnung
holz
honig
humor
hungrig
hupe
husten
hut
hälfte
händler
händlerin
häufig
höchstens
höflich
höhe
hörer
hörerin
hübsch
hügel
hühnchen
hütte
ideal
illegal
imbiss
import
indem
individuell
industrie
infektion
ingenieur
inhalt
inklusive
innen
inner
innerhalb
inserat
insgesamt
installieren
institut
integration
integrieren
intelligenz
intensiv
intensivkurs
interessant
interessieren
interkulturell
inzwischen
irgendein
irgendwann
irren
jause
je
jeder mal
jederzeit
jedoch
jemals
jeweils
journalist
journalistin
jugend
kabel
kabine
kaffeehaus
kakao
kampf
kanal
kandidat
kanne
kantine
kapitel
kaputtgehen
kaputtmachen
karneval
karotte
karriere
kassette
kasten
katalog
katastrophe
kauf
kaum
kellner
kellnerin
kennzeichen
kerze
kindheit
kissen
kiste
klagen
klasse
klassenarbeit
kleben
klettern
klick
klicken
klima
klimaanlage
klingel
klingeln
klingen
klinik
klopfen
kloss
klären
knapp
kneipe
knie
knochen
knopf
knödel
koch
kommunikation
komplett
kompliziert
kompromiss
konferenz
konfitüre
konflikt
konkurrenz
konsulat
konsum
konsumieren
kontrolle
konzentrieren
kopie
kopieren
kopierer
korrekt
korridor
korrigieren
kosten
kostüm
kraft
kraftfahrzeug
kraftwerk
kranke
krankenpfleger
krankenschwester
krankenwagen
kreativ
kreis
kreuz
krieg
kriminalpolizei
krise
kritik
kritisch
kritisieren
kräftig
kuli
kunststoff
kursleiter
kursleiterin
kurve
kuss
kuvert
kälte
kämpfen
käufer
käuferin
köchin
könig
körperlich
kündigung
künstler
künstlerin
künstlich
kürzlich
küssen
küste
lage
lager
landen
landung
landwirtschaft
langeweile
langweile
langweilen
laster
laufwerk
laune
lautsprecher
lebenslauf
lecker
leder
lehre
lehrerin
lehrling
lehrstelle
leiden
leisten
leistung
leiten
leiter
leiterin
leitung
lerner
lernerin
leser
leserin
lexikon
lieferung
lift
limonade
linie
link
lippe
liste
literatur
loben
loch
locker
lohn
lohnen
los
losfahren
luft
lächeln
länge
längst
lärm
löschen
lösen
magazin
mager
mahlzeit
mahnung
mal
maler
malerin
mangel
mappe
margarine
marille
marke
markieren
marmelade
material
matura
mauer
maximal
mechaniker
mechanikerin
medium
medizin
mehl
mehrere
mehrheit
mehrwertsteuer
meinetwegen
meister
melden
meldung
mensa
menschlich
menü
merkwürdig
messen
metall
methode
metropole
metzger
mieter
mieterin
migrant
migrantin
migration
mild
minderheit
minimal
mischen
mitarbeiterin
miteinander
mitglied
mitteilen
mitten
mittler
mittlerweile
mobil
mobilbox
mobilität
modell
mond
monitor
motorrad
musikalisch
musiker
musikerin
muskel
mut
mutig
muttersprache
märchen
möblieren
möglicherweise
möglichkeit
möglichst
möhre
müesli
mühe
müllabfuhr
mülltonne
mündlich
münze
müsli
nachdem
nachdenken
nachfrage
nachher
nachhilfe
nachschlagen
nachspeise
nacht
nachteil
nachwuchs
nadel
nagel
nah
nahrungsmittel
nase
national
nebel
nebenbei
neffe
negativ
nerv
netz
netzwerk
neugierig
neuigkeit
neulich
nicht
nichtraucher
nichtraucherin
niedrig
nirgendwo
noch mal
nochmals
nordsee
normalerweise
not
notaufnahme
notausgang
notfall
notruf
nun
nutzen
nähen
nähern
nämlich
nötig
nützen
ob
ober
obwohl
ofen
offenbar
offiziell
onkel
oper
operation
operieren
opfer
optimistisch
orchester
ordentlich
ordination
ordnen
ordner
organisation
original
ostsee
ozean
panne
paradeiser
parallel
parkieren
passagier
passagierin
passiv
patient
patientin
pauschal
pech
peinlich
pension
pensionieren
pensionist
pensionistin
per
perfekt
perron
personal
personalie
personenstand
persönlich
pfanne
pfeffer
pflanze
pflaster
pflaume
pflegen
pfleger
pflegerin
pflicht
picknick
pille
pilz
planung
plastik
politik
politiker
politikerin
politisch
polizist
polizistin
populär
portemonnaie
positiv
poulet
praktikant
praktikantin
prima
produktion
produzieren
professor
professorin
profi
profisportler
profisportlerin
prost
protest
protestieren
prozess
präsentation
präsentieren
publikum
punkt
puppe
qualifikation
quartier
quer
quittung
rabatt
radfahrer
radfahrerin
rahm
rand
rasen
rasieren
rat
ratschlag
raucher
raucherin
rauf
reagieren
reaktion
realisieren
realistisch
realität
recherche
rechner
recht
rechtlich
rechtzeitig
rede
reduzieren
referat
reform
regal
regel
regelmässig
regeln
region
regional
reichen
reif
reihenfolge
reinigen
reklame
rekord
relativ
religion
rennen
rente
reportage
reporter
reporterin
reservierung
respekt
retten
richter
richterin
richtung
riesig
risiko
roh
rohr
rolle
roman
rufnummer
runde
rundfahrt
runterwerfen
rückfahrt
rückkehr
rückwärts
saal
sack
sahne
saison
salbe
salon
salzig
samen
sand
satt
schachtel
schade
schaden
schalten
schatten
schauen
schaufenster
schauspieler
schauspielerin
scheibe
scheiden
scheidung
schein
schick
schieben
schief
schiessen
schlaf
schlagober
schlagrahm
schlagsahne
schlange
schlank
schliesslich
schmal
schmerzmittel
schminken
schmuck
schmutz
schnitzel
schnupfen
schreck
schrecken
schreiben
schreien
schrift
schriftsteller
schriftstellerin
schritt
schularbeit
schuld
schuldig
schulter
schutz
schwammerl
schwangerschaft
schweigen
schwierigkeit
schwitzen
schätzen
schüssel
schütteln
schützen
seitdem
sekretär
sekretärin
selb
selber
selbstverständlich
selten
seltsam
semester
seminar
semmel
senden
sender
senior
seniorin
senkrecht
serie
serviceangestellt
sessel
sicher
sicherheit
sichern
sichtbar
sieg
siegen
sieger
siegerin
siezen
sinken
sinn
sinnlos
sinnvoll
sitz
ski
so viel
sobald
socke
sodass
sogenannt
solange
solcher
sonderangebot
sondern
sorge
sorgen
sosse
souvenir
sowieso
sowohl
sozial
sozialarbeiter
sozialarbeiterin
sparsam
spazieren gehen
speise
speisewagen
spezialist
spezialistin
speziell
spiegel
spieler
spielerin
spielplatz
spielzeug
spitz
sportart
sportler
sportlerin
springen
spritze
spur
spätestens
spülen
spüren
stadion
stammen
standpunkt
start
starten
station
statistik
statistisch
statt
stau
staub
staub saugen
staubsaugen
stechen
steckdose
stecken
stecker
stehenbleiben
stehlen
steigen
steil
stein
stempel
stern
steuer
steward
stewardess
stiege
stiegenhaus
stil
stilistisch
still
stimme
stimmen
stimmung
stinken
stoff
stolz
stoppen
strafbar
strafe
strafzettel
strecke
streichholz
streik
streiken
streit
strom
strumpf
studie
studierend
studio
stufe
stumm
sturm
städtisch
ständig
störung
stürzen
sucht
suchtmittel
summe
symbol
system
szene
sämtlich
sänger
sängerin
süchtig
tabelle
tagesablauf
tal
talent
tanken
tankstelle
tante
tanz
taschentuch
tastatur
taste
tat
tatsache
tatsächlich
taub
tauchen
technik
technisch
technologie
teilnahme
teilnehmer
teilnehmerin
teilweise
teilzeit
temperatur
tempo
teppich
terminkalender
terrasse
testen
theoretisch
theorie
therapie
tierpark
tippen
tod
tolerant
tor
tote
tourismus
tradition
traditionell
trainer
trainerin
tram
transport
transportieren
treffpunkt
treiben
trennen
trennung
treppenhaus
treten
treu
trinkgeld
trocknen
tropfen
trottoir
trotz
trotzdem
träne
tuch
turm
twittern
typ
täter
täterin
tätigkeit
tödlich
tüte
ufer
umarmen
umdrehen
umfrage
umgebung
umgehen
umgekehrt
umleitung
umso
umsonst
umtausch
umtauschen
umwelt
umweltschutz
umweltverschmutzung
unentschieden
ungefähr
ungewöhnlich
unglaublich
unglück
unheimlich
uniform
unterbrechen
unterhaltung
unterlage
unterlassen
unternehmer
unternehmerin
unterrichten
untersagen
unterscheiden
unterschiedlich
unterstreichen
unterstützen
unterstützung
untersuchung
urkunde
ursache
ursprünglich
urteil
vase
vegetarisch
velo
verabredung
verabschieden
verantwortlich
verantwortung
verbessern
verbinden
verbindung
verbot
verbrauchen
verbrecher
verbrecherin
verbrennen
verbringen
verdacht
verdächtig
vergangenheit
vergeblich
vergleich
vergnügen
vergrössern
verhaften
verhalten
verhindern
verhältnis
verkehrszeichen
verkäuferin
verlag
verlangen
verlassen
verlaufen
verletzung
verlieben
verlierer
verlust
verlängern
vermeiden
vermietung
vermissen
vermittlung
vermuten
vermutlich
vernünftig
verpacken
verpflegen
verpflichten
verraten
verrückt
versammlung
verschmutzen
verschreiben
verschwinden
versichern
versichertenkarter
versicherung
versprechen
verstecken
verständlich
verständnis
versuch
versäumen
verteilen
vertrauen
vertreten
vertreter
vertreterin
vertretung
verursachen
verurteilen
verwaltung
verwechseln
verwenden
verzeihen
verzeihung
verzichten
verändern
veröffentlichen
video
virtuell
virus
visitenkarte
visum
vitamin
vollzeit
voneinander
vor alle
voraus
voraussetzung
voraussichtlich
vorbereitung
vorder
vorfahrt
vorhaben
vorhin
vorkommen
vorlesen
vorläufig
vorort
vorschlagen
vorschrift
vorspeise
vorstellung
vorstellungsgespräch
vorteil
vortrag
vorwurf
völlig
waagerecht
waagrecht
wachsen
wahl
wahnsinnig
wahrheit
wand
wanderung
wandrung
ware
warnen
waschmittel
wecker
weder
weigern
weiterbildung
weltenweit
weltweit
wenden
werbung
werfen
werk
werkzeug
wert
wertlos
wertvoll
weshalb
wetten
wetterbericht
wettervorhersage
widersprechen
wiederholung
wiegen
wiese
wieso
wild
winken
wirken
wirklichkeit
wirkung
wirt
wirtin
wirtschaft
wissen
wissenschaftler
wissenschaftlerin
wohl
wohnort
wohnsitz
wolle
worum
worüber
wunde
wunder
wundern
wunderschön
während
wärme
wörterbuch
wütend
zahlreich
zahlung
zahnbürste
zahncreme
zahnpasta
zange
zeichen
zeichnung
zeile
zeitpunkt
zeln
zentral
zerstören
zertifikat
zeug
zeuge
zeugin
ziemlich
zins
zivilstand
znüni
zone
zubereiten
zufall
zufällig
zugang
zugehen
zugänglich
zuhause
zuhörer
zuhörerin
zukunft
zukünftig
zumindest
zunehmen
zunächst
zurechtkommen
zusage
zusammenarbeit
zusammenfassen
zusammenhang
zuschauen
zuschauer
zuschauerin
zuschlag
zustand
zustimmen
zustimmung
zuständig
zusätzlich
zutat
zuverlässig
zvieri
zwar
zweck
zweifel
zweifeln
zweitsprache
zwiebel
zwingen
zählen
zünder
zündholz
ähnlich
änderung
ängstlich
ärger
ärgerlich
ärztin
äusserlich
öffentlich
öffentlichkeit
öfter
ökologisch
überfahren
überhaupt
überholen
überlegen
übernachtung
übernehmen
überprüfen
überqueren
überraschen
überraschung
überreden
überschrift
übersetzer
übersetzerin
überstunde
übertreiben
überweisung
überzeugen
überzeugung
üblich
übrig
übrigens
übung
"""

    private static let wordScoreBlob = """
aal	3533
aas	1445
ab	9830
abbau	4951
abbauen	8462
abbiegen	5025
abbilden	4487
abbrechen	7078
abbremsen	3066
abdecken	2611
abdrucken	1428
abe	2377
abend	8599
abendland	2382
abendmahl	6936
abends	6647
abenteuer	6120
aber	9968
aberglaube	3988
abfahrt	2358
abfall	8203
abfallstoff	1573
abfeuern	3102
abgabe	1497
abgas	9120
abgeben	8534
abgebrennen	5220
abgekürzt	8109
abgelegen	4975
abgeordneter	9648
abgestiegen	3677
abhalten	4414
abhauen	1354
abheben	6285
abholen	3744
abholzen	6092
abhängig	7444
abhängigkeit	621
abhören	5079
abitur	7867
abkommen	8631
abkühlen	4647
abkürzung	9810
ablauf	2342
ablaufen	6105
ablegen	4460
ablehnen	5920
ableiten	3449
ablenken	4956
ablesen	614
ablösen	3770
abmachung	5093
abnehmen	5918
aborigines	6600
abraham	8341
abreissen	7467
absagen	7334
abschaffen	8256
abschalten	6822
abschiessen	5480
abschliessen	4651
abschluss	6746
abschneiden	3042
abschnitt	7801
abschrecken	636
absehen	3669
absetzen	5243
absicht	8039
absichtlich	8382
absolut	8022
absolutismus	611
absperrung	2422
abspielen	3500
absprache	4442
abstammen	2410
abstammung	6862
abstand	8677
abstandsregel	586
absteigen	2597
abstellen	3159
absterben	4663
abstieg	1789
abstimmen	8021
abstimmung	8393
absturz	5214
abstürzen	7811
abteilung	4455
abtreiben	1731
abtreibung	7713
abtöten	2218
abwaschen	1646
abwasser	5656
abwechselnd	8093
abwehr	591
abwehren	608
abwehrstoff	1674
abwerfen	6893
abziehen	6997
achse	6944
acht	9004
achtelfinale	8062
achten	8449
achter	5669
achterbahn	7507
achttausend	2707
achtung	2209
achtzig	596
acker	4412
ackerbau	4671
adac	5945
adel	5944
adelig	705
adelige	6544
adeliger	3483
ader	6585
adhs	4878
adjektiv	7430
adler	6032
adlig	3017
adliger	2184
admir	3316
adoptieren	5471
adoptivelter	698
adresse	7124
advent	5728
adventskranz	1714
adverb	3321
aerosole	2722
aff	7068
affe	2177
affenpocken	2174
afrika	9653
afrikaan	5384
afrikanisch	8716
afroamerikaner	712
ag	4684
agent	1729
agentur	2735
aggressiv	2194
aids	7486
air	3362
airbag	3894
airbnb	2748
airbus	7775
akademie	7292
akkordeon	1756
akku	6826
akne	1758
akronym	663
akropolis	1766
akte	662
aktie	8036
aktion	8929
aktionstag	7353
aktiv	7822
aktivist	6229
aktivistin	1770
aktuell	8187
akzeptieren	4049
alarm	2320
albino	2912
album	8157
alcatraz	2317
algarve	2309
alge	7745
algorithme	3853
algorithmus	2997
alkohol	8983
all	7956
allah	7228
alle	9957
allein	9291
alleine	8981
allerdings	9696
allergie	4644
allerheilige	5294
allerlei	5270
allermeister	7569
allgemein	8550
alltag	8250
allzu	2701
alpaka	1636
alpen	8805
alpenmurmeltier	2698
alphabet	8418
als	9962
also	9892
alt	9913
altar	4694
alte	6525
altenheim	4063
alter	8504
alternative	7789
altersvorsorge	3014
altertum	9241
altgriechisch	6126
altstadt	8980
aluminium	6890
alzheimer	5681
alzheimerkrankheit	2444
amadeus	4290
amateurverein	4741
amateurvereine	4738
amazon	7309
amazonas	4077
ameise	4074
american	5662
amerika	9693
amerikaner	8541
amerikanisch	9183
amnesty	5666
amok	2527
amoklauf	4375
ampel	7718
amphibie	6666
amsel	3795
amt	9202
amtssprache	8759
amtszeit	3584
an	9983
anana	3270
anbau	6268
anbauen	8852
anbauprodukt	543
anbieten	8159
anbringen	6266
andauern	538
anden	7201
andenken	1869
anderen	3202
anderer	9969
andererseits	7361
anderes	553
anders	9603
andersdenkend	2175
anderswo	6046
anderthalb	3661
andre	567
android	6455
aneinander	7215
anerkannt	561
anerkennen	8045
anfahren	6217
anfang	9548
anfangen	9167
anfangsbuchstaben	2234
anfassen	6377
anfertigen	560
anführen	556
anführer	8265
angabe	3247
angeben	7488
angeblich	8872
angeboren	534
angebot	8482
angefangen	2211
angehören	5278
angehörige	5785
angeklagter	5549
angel	5385
angeln	4696
angelsachse	5177
angenehm	5282
angenommen	1296
angestellter	8859
angewiesen	4337
angler	3252
angreifen	9431
angreifer	6550
angriff	9305
angst	9519
angucken	5555
anhalten	8038
anhalter	3229
anhand	5264
anheben	4325
anhänger	8755
anhören	8082
animal	527
anklage	4109
anklagen	7485
anklam	1322
ankommen	7893
ankreuzen	1326
ankunft	2538
ankündigen	6416
anlage	8147
anlass	2539
anlegen	8012
anleitung	5448
anlocken	1331
anmelden	7878
annehmen	6379
anordnen	6162
anordnung	524
anpassen	7234
anpflanzen	4715
anregen	2363
anrichten	4935
anrufen	8600
ansammlung	528
anschauen	8971
anscheinend	2430
anschiessen	2442
anschlag	9466
anschliessen	7177
anschliessend	7748
anschreiben	1340
anschrift	2328
ansehen	8648
ansicht	6569
ansiedeln	4009
ansonsten	8067
ansprechen	4926
anspruch	5774
anstatt	6979
anstecken	9663
ansteckend	9042
ansteckung	6832
ansteigen	3253
anstelle	6667
anstellen	5456
anstrengen	2419
anstrengend	6818
antarktis	8143
antarktisch	2421
anteil	6316
antenne	7332
antibiotikum	7150
antik	7622
antilope	4933
antisemit	8452
antisemitisch	3689
antisemitismus	8391
antiterrorübung	2889
antrag	6919
antreiben	7278
antreten	7913
antrieb	4332
antun	4870
antwort	7772
antworten	6777
anwalt	6323
anwenden	6751
anwendung	3209
anwohner	5107
anzahl	7581
anzeige	2343
anzeigen	7851
anziehen	8171
anziehungskraft	3213
anzubauen	1482
anzünden	8233
apartheid	6403
apfel	6983
apollo	554
apostel	4056
apotheke	7946
apotheker	2187
app	8628
apparat	4390
apple	7635
aprikose	5103
april	9218
aquaman	3798
aquarium	3764
araber	7776
arabien	5965
arabisch	9403
arbeit	9767
arbeiten	9885
arbeitend	546
arbeiter	9659
arbeiterin	7446
arbeiterpartei	5615
arbeitgeber	8561
arbeitnehmer	7389
arbeitsfrei	548
arbeitsgemeinschaft	4082
arbeitsgruppe	2799
arbeitskollege	549
arbeitslos	6051
arbeitslose	4038
arbeitslosengeld	3569
arbeitsplatz	8374
arbeitsstelle	5156
arbeitszeit	4894
arbeitszeiten	4893
arche	5148
archimedes	3344
architekt	7203
architektur	4889
archiv	1540
archäologe	7587
archäologie	3016
arena	2249
arie	1407
aristoteles	5141
arktis	8089
arktisch	4291
arm	9543
armbrust	4577
arme	9196
armee	9535
armut	7960
armutsgrenze	2240
arnd	2243
arsenal	5212
art	9839
artenvielfalt	5221
artikel	9452
artus	4567
arzneimittel	4564
arzt	9670
arztpraxis	3803
asbest	4120
asche	7750
aschenputtel	6026
aschermittwoch	5097
asiatisch	6373
asien	9746
asperger	2340
assen	1234
asterix	4959
asteroiden	6094
astronaut	9106
astronautinn	6662
astronom	7478
astronomie	6607
asyl	8402
asylantrag	3099
asylbewerber	6799
athlet	2874
atlantik	8358
atlantis	4971
atlantisch	3065
atlantischen	7691
atmen	8733
atmosphäre	8148
atmung	3072
atom	7871
atombombe	6790
atomen	4972
atomenergie	4448
atomkern	3075
atomkraft	4508
atomkraftwerk	9210
atommüll	7838
atomwaffe	1449
attentat	6008
attentäter	7395
attraktion	2910
aubergine	3062
auch	9987
audio	3083
audiodeskription	3476
auerhühner	2879
auerochsen	1924
auf	9977
aufbau	5228
aufbauen	8904
aufbewahren	7529
aufbrauchen	1456
aufbrechen	2861
aufeinander	6337
auferstehung	4960
auffahrt	1472
auffangen	3763
auffordern	3751
auffrischungsimpfung	3445
auffällig	5576
aufführen	6602
aufführung	7458
auffüllen	571
aufgabe	9526
aufgeben	6942
aufgefahren	1999
aufgehen	5872
aufgeladen	675
aufgeschrieben	8610
aufgrund	5568
aufhalten	6813
aufheben	4983
aufhängen	3052
aufhören	8595
aufkleber	1963
aufklären	5421
aufklärung	6148
aufladen	4479
auflösen	7103
aufmachen	5858
aufmerksam	6518
aufmerksamkeit	4535
aufnahme	4110
aufnehmen	9046
aufpassen	8568
aufprall	1398
aufrecht	4483
aufregen	686
aufrufen	6458
aufschlagen	1393
aufschreiben	6407
aufschwung	2768
aufsetzen	1913
aufsichtsrat	1385
aufstand	8158
aufstehen	6071
aufsteigen	6543
aufstellen	8291
aufstieg	4773
aufständisch	1907
auftauchen	3166
aufteilen	8608
auftrag	7604
auftragen	1905
auftreten	7442
auftrieb	665
auftritt	6399
aufwachsen	7059
aufwendig	4542
aufzeichnen	1899
aufziehen	1427
aufzug	5161
auge	9340
augenarzt	3995
auktion	722
aurich	1878
aus	9975
ausatmen	2815
ausbau	4408
ausbauen	5531
ausbeuten	2816
ausbilden	6412
ausbildung	9113
ausbrechen	8010
ausbreiten	7427
ausbreitung	8090
ausbruch	2119
ausbrüten	3130
auschwitz	4519
ausdauer	3379
ausdehnen	3838
ausdenken	1545
ausdruck	9133
ausdrücken	6322
auseinander	6294
ausfallen	8292
ausflug	5211
ausflugstipp	7601
ausführen	5137
ausführlich	694
ausfüllen	2937
ausgabe	1583
ausgang	4044
ausgangssperre	7190
ausgeben	8754
ausgebrannt	695
ausgedachen	1580
ausgedacht	8428
ausgegraben	2843
ausgehen	5554
ausgeliehen	2991
ausgestiegen	2767
ausgestorben	8232
ausgestossen	700
ausgewachsen	4845
ausgleich	1566
ausgleichen	2151
ausgrenzen	6708
auskennen	7715
auskommen	2794
ausland	9356
auslaufen	1506
auslegen	593
ausleihen	5143
ausländer	9014
ausländerfeindlich	7333
ausländisch	7520
auslösen	8181
ausmachen	3682
ausnahme	8060
ausnutzen	602
ausprobieren	6876
ausrauben	2995
ausrechnen	7130
ausreichen	3736
ausreichend	5149
ausrichten	2903
ausrotten	5150
ausrufen	4319
ausruhen	1488
ausrüstung	4566
aussage	5300
aussahen	2897
ausschalten	3189
ausscheiden	7912
ausschliessen	6634
ausschliesslich	6402
ausschlussder	4023
ausschuss	2896
aussehen	9421
aussen	8687
aussenminister	7307
aussenministerin	6963
aussenministerium	5981
aussenministern	3824
aussenpolitik	7359
ausser	9093
ausserdem	9840
aussergewöhnlich	5754
ausserhalb	8697
ausserirdischen	618
ausserirdischer	5629
aussetzen	3551
aussicht	3526
ausspielen	579
aussprache	2836
aussprechen	8425
ausstatten	3917
aussteigen	2849
ausstellen	5792
aussteller	1510
ausstellung	8825
aussterben	8300
ausstossen	1531
ausstrahlen	3244
aussuchen	8044
austauschen	7597
austragen	5644
austreten	6571
austritt	1526
ausverkaufen	3285
auswahl	2003
auswanderer	585
auswandern	5779
auswechseln	3266
ausweis	4795
auswerten	4592
auswählen	7113
auszeichnen	6463
auszeichnung	8839
ausziehen	1518
auszubildender	4338
auszug	609
ausüben	7429
autismus	6450
autist	3934
auto	9877
autobahn	9510
autofahr	6459
autofahren	3924
autofahrer	9370
autofahrerin	641
autofahrt	3465
autofirme	1316
autohaus	642
autohersteller	643
automat	6263
automatisch	7496
autor	8572
autoreif	649
autorenn	7607
autorin	5668
autoscooter	1277
autounfall	5985
autowerkstatt	4347
autozug	628
award	1256
axt	622
aztek	5195
baby	9313
babyboomer	624
babylon	5497
babylonie	5199
babylonier	4326
bach	8227
backen	7630
backhaus	1375
backofen	4330
bad	8555
badeanzug	3224
baden	8533
badezimmer	2145
bagger	7952
bahamas	1312
bahn	9350
bahnglei	2156
bahngleis	2153
bahnhof	8660
bahnschienen	5559
bahnstreck	1335
bahnstrecke	7865
bahnübergang	8097
bahnübergäng	3451
bakterie	9329
bald	9604
balkan	6940
balken	3672
balkon	6096
ball	9266
ballade	4736
ballett	3241
ballon	7692
ballungsraum	5595
banane	8182
band	9243
bande	7339
bank	9395
bankautomat	3303
bankchef	1989
bankkonto	7243
banksy	3974
bar	7594
barbie	3820
barcamp	3193
bargeld	3388
barista	1848
barock	4638
baron	1856
barriere	5265
barrierefrei	7448
barrierefreiheit	4837
bart	7308
baseball	3652
basel	7328
basil	5706
basilikum	1980
baska	1830
basket	4054
basketball	7365
basketballmannschaft	2509
basketballspielerinnen	1867
bass	4844
basteln	4277
batman	6074
batterie	8454
bau	9047
bauarbeit	8954
bauarbeiter	7107
bauch	8960
bauchredner	4050
bauchspeicheldrüse	1831
bauen	9848
bauer	9503
bauernhof	7769
bauernhöfen	2515
baum	9558
baumann	4080
baumarkt	2132
baumeister	1813
baumhöhle	1824
baumstamm	5319
baumwolle	7627
baustein	4653
baustelle	8401
baustil	5041
bauteil	6226
bauwerk	7786
bauwerke	4485
bauxit	4680
beachten	7944
beachvolleyball	7198
beamter	8549
bean	3727
beanspruchen	2016
beantragen	6254
beantworten	6848
bearbeiten	7375
beatles	6960
beauftragter	2939
beben	2466
becher	4824
becken	6470
bedanken	4664
bedecken	4666
bedeckt	8064
bedeuten	9876
bedeutend	8502
bedeutsam	2048
bedeutung	9033
bedienen	7102
bedingung	6202
bedrohen	9015
bedrohung	3743
bedrängen	4820
bedürfnis	1655
beeindrucken	4458
beeindruckend	2461
beeinflussen	6538
beeinflussn	2063
beenden	8632
beerdigen	4665
beerdigung	4438
beere	6649
beethove	2441
befahren	3787
befassen	6472
befehl	5772
befehle	645
befehlen	2429
befestigen	8056
befinden	9634
befohlen	5451
befragen	6932
befreien	7703
befreunden	4449
befruchten	6956
befruchtung	5759
befördern	5897
befürchten	7688
begegnen	5383
begehen	7767
begehren	650
begeistern	7426
beginn	8642
beginnen	9728
begleiten	6840
begleiter	2974
begleitfahrzeug	2068
begraben	7545
begrenzen	637
begriff	8737
begründer	2693
begrüssen	2694
behalten	8519
behandeln	9169
behandlung	6208
behaupten	8691
behauptung	2015
beherrschen	8114
behindern	7557
behindertenbeauftragter	2962
behindertensportverband	610
behinderter	4426
behinderung	9534
behälter	7196
behörde	9414
bei	9972
beibringen	5396
beide	9782
beieinander	5806
beifahrer	5395
bein	9009
beinahe	4085
beiname	1637
beispiel	9971
beispielsweise	9517
beissen	6027
beitrag	7648
beitragen	8287
beitritt	3987
bekannt	9821
bekannte	7921
bekannter	1599
bekannteste	8826
bekanntestes	3530
bekennen	9333
bekommen	9928
bekommsen	1594
bekämpfen	8319
beladen	3623
belag	577
belasten	3556
belauschen	1621
belegen	5239
beleidigen	7510
beleidigend	592
beleidigung	5248
beleuchten	2666
belieben	9187
beliebig	4027
beliebt	8878
belit	1748
bellen	3666
belohnung	4025
belästigen	4490
bemalen	2672
bemaln	3007
bemerken	6865
bemühen	2911
ben	6204
benachteiligen	7919
benannen	3866
benannt	4852
benehmen	3640
benennen	8941
benutzen	9712
benutzer	4765
benutzn	6754
benz	6677
benzin	8886
benötigen	7268
beobachten	8934
beobachtung	600
bequem	3522
beraten	7882
berater	2679
beratung	4657
beratungsstellen	7358
berechnen	7331
berechnung	4436
bereich	9186
bereit	7368
bereiten	6994
bereits	9495
berg	9640
bergarbeiter	1761
bergauf	595
bergbau	8034
bergsteigen	707
bergsteiger	6195
bergwerk	8499
bericht	8736
berichten	9037
berlinale	7399
bern	8042
beruf	9516
berufe	8328
berufen	6778
beruflich	4752
berufsfussballer	4730
berufsschule	6923
beruhen	699
beruhigen	1723
berühmen	8899
berühmt	9496
berühmte	7158
berühren	8771
berührung	3366
besagen	2711
besatzung	4726
besatzungszone	6164
beschaffen	2714
bescheid	697
bescheinigung	2715
beschiessen	6034
beschimpfen	5498
beschleunigen	2717
beschleunigung	2718
beschliessen	9311
beschloss	2721
beschluss	1941
beschreiben	9216
beschreibung	3125
beschuldigen	3308
beschuldigter	1687
beschwerde	3106
beschweren	6451
beschädigen	8784
beschäftigen	8767
beschäftigter	7450
beschützen	7580
beseitigen	5106
besetzen	8406
besetzt	7222
besichtigen	6545
besiedeln	8224
besiegen	8329
besitz	5873
besitzen	8604
besitzer	8653
besitzerin	1697
besondere	7672
besonderer	9846
besonderheit	7030
besonders	9844
besorgen	6584
besprechen	7377
besprechung	692
besseres	5379
bestandteil	5136
bestatten	1876
bestaunen	1757
beste	4006
bestechung	6431
besteck	5360
bestehen	9789
bestehend	1777
besteigen	3124
bestellen	7157
bestimmen	9843
bestimmt	8924
bestimmter	3999
bestimmtes	710
bestrafen	9098
bestätigen	6753
besuch	8190
besuchen	9528
besucher	9422
besucherin	4772
beteiligen	7255
beten	8707
bethlehem	1602
beton	8326
betonen	7575
betrachten	7272
betrag	5857
betragen	6954
betreffen	8880
betreiben	8657
betreiber	725
betreten	7681
betreuen	5740
betreuer	2586
betrieb	8621
betriebsrat	4139
betriebssystem	7383
betroffenen	1652
betroffener	5715
betrug	5843
betrunken	5367
betrügen	5369
betrüger	5838
bett	7727
bettelheim	4423
bettler	1833
beurteilen	1786
beute	7970
beutel	5962
beuten	717
beutetier	4958
bevor	8961
bevorzugen	5113
bevölkerung	8866
bevölkerungsgruppe	1817
bewachen	6354
bewaffnen	5147
bewahren	7088
bewegen	9481
beweglich	6875
bewegung	8958
beweis	7472
beweisen	8342
bewerben	6123
bewerbungsrunde	690
bewerfen	1973
bewerten	4278
bewirken	4881
bewohnen	6521
bewohner	9115
bewohnt	669
beworben	1859
bewundern	4897
bewusst	4316
bewusstlos	667
bewusstsein	4284
bewährung	4582
bezahlen	9738
bezahlung	5618
bezeichnen	9087
bezeichnung	6605
bezeugen	660
beziehen	4597
beziehung	7202
beziehungsweise	3047
bezirk	6802
bezirksamt	3413
biathlet	3055
biathlon	3421
bibel	9275
biber	5906
bibliothek	7317
biblisch	672
biene	1329
bier	8103
bieten	8389
big	5886
bikini	6773
bild	9704
bilden	9651
bildhauer	4707
bildlaufleiste	1255
bildnis	5623
bildschirm	7483
bildung	9219
bill	5678
billig	8659
billion	3433
binden	6726
bingo	677
bioabfall	572
biodiversität	562
biologe	4022
biologie	8151
biologisch	5081
biotop	2133
bip	4862
birne	5687
bis	9916
bisamratte	3506
bischof	8944
bischöfinne	1537
bisexuell	5400
bisher	9334
bisherig	6250
bislang	7168
bismarck	6368
bisschen	7615
bistum	5054
bistümer	4688
bitcoin	4884
bitt	2654
bitte	6398
bitten	8231
black	6810
blackbox	3822
blase	6424
blasen	6640
blasinstrument	4462
blatt	9102
blau	8235
blaualge	3656
blaue	3645
blauwal	3570
blech	3071
blechblasinstrument	1480
blei	8185
bleiben	9798
bleistift	5345
blende	1952
blick	5709
blind	8069
blinddarm	3605
blinde	6234
blindenhund	3076
blindenschrift	5878
blindgänger	6111
blindschleichen	3078
blinken	1451
blitz	6998
blitzanlage	3814
block	4721
blockflot	2620
blockieren	6481
blog	3544
bloss	6703
blue	1993
blues	6042
blume	8264
bluray	1909
blut	9316
blutdruck	5647
bluthochdruck	4655
blutkreislauf	4422
blutkörperchen	3101
blutspende	3956
blutung	2107
bläsche	3490
blätt	7525
blühen	6308
blüte	8906
bnd	5346
boat	1267
bob	4289
boccia	5019
boden	9608
bodenschatz	7961
bodenschätz	3740
body	4274
boeing	2166
bogen	7121
bohlen	2125
bohne	7052
bohren	7394
boie	4929
bombardieren	1938
bombe	9686
bombenanschlag	6533
bonaparte	4184
bond	7039
boot	8917
bord	6359
bot	1625
botanisch	3171
bote	1747
botschaft	7287
botschafter	5527
bowl	3393
boxe	6082
boxer	6593
boxkampf	1969
boykott	4193
braille	2720
brailleschrift	2719
brand	8580
brandanschlag	6343
brandstifter	5869
brandstiftung	2734
braten	4214
bratwurst	3831
brauch	6288
brauchen	9870
brauen	542
braun	8104
braunbär	2750
braunkohl	6191
brechen	8582
brecht	3906
brei	5725
breit	9242
breite	2929
breiten	6494
bremse	6732
bremsen	8283
brennbar	1768
brennen	8819
brennend	5596
brennnessel	4199
brennstoff	2676
brett	7408
brettspiel	3626
brexit	5504
bridge	3899
brief	9132
briefkastenfirma	566
briefmarke	5716
briefträger	6464
briefumschlag	565
briefwahl	6860
brille	7138
brin	570
bring	1683
bringen	9777
brocken	5947
brokkoli	1611
brombeere	2681
bronze	7666
bronzemedaille	6913
bronzezeit	5717
brot	8527
brown	4780
browser	5974
bruch	533
bruder	9182
brunnen	7014
brust	6886
brutal	6477
bruttoinlandsprodukt	2689
bräuch	5882
bräuche	2074
brötchen	3719
brücke	9502
brüdern	5445
brüste	6422
brüsten	1647
brüten	7360
buch	9793
buchdruck	2471
buche	3009
buchhandel	3553
buchmes	3756
buchmesse	3692
buchpreis	2078
buchstabe	9209
bucht	7178
buckingham	5063
buddha	2009
buddhismus	5055
buddhist	5435
buddhistisch	2008
bude	4532
bull	1815
bulle	3812
bund	8398
bundesamt	5813
bundesrat	8984
bundesstaat	9070
bundesstaaten	9116
bundesstrasse	7845
bunker	3322
bunt	7873
bunte	1928
burg	8206
burge	7619
burgenland	3992
bus	9552
busch	6385
busfahrer	8652
bushaltestelle	2129
butler	2512
butter	4178
byzantinisch	4189
byzantinischen	2149
byzanz	1319
bäche	559
bäcker	5556
bäckerei	2165
bänd	3830
bär	8598
bäuerin	563
bäume	8483
böge	564
böller	3891
börse	6036
bösartig	1233
böse	8671
bösewicht	3557
büffel	4262
bühne	7753
bündnis	7156
bürger	9602
bürgergeld	3755
bürgerin	8860
bürgerkrieg	8910
bürgerlich	1263
bürgermeister	9443
bürgermeisterin	7826
bürgerrecht	3194
bürgerschaft	7784
bürgerschaftswahl	3507
büro	8532
büsch	541
büste	2044
cafe	4807
café	4362
call	2844
callcenter	1525
camp	550
campingplatz	5157
cannabis	7106
cannabispflanz	6788
carport	2800
casino	4258
castle	2916
cd	7804
cello	4187
celsius	8478
cent	5862
center	5227
ceres	5458
challenge	1410
chamäleon	4587
chance	7184
chaos	4781
chat	2766
chef	9771
chefin	8797
chefredakteur	2793
chemie	8475
chemikalie	5993
chemiker	6722
chemisch	8616
chemnitz	5874
chicago	6750
chip	5233
cholera	2855
chor	4581
christ	9581
christentum	8768
christkind	2371
christlich	8890
christus	9280
chromosom	2890
chromosome	3782
city	7640
clown	5425
clownfisch	2236
club	7282
cm	678
co	8528
code	3315
cola	4879
color	1551
comedian	2820
comic	8304
comicfigur	3878
commonwealth	687
compact	673
complex	688
computer	9662
computerprogramm	8564
computerprogramme	1507
computerspiel	6745
container	8340
containerschiff	4867
contest	6070
continental	3846
cotrainer	727
cowboy	711
cowboys	4243
credit	1330
currywurst	3258
da	9729
dabei	9862
dach	8724
dachse	704
dackel	3648
dadurch	9676
dafür	9871
dagegen	9238
dagger	708
daher	9454
dahin	7131
dahinter	6625
daimler	4381
dalai	2548
dali	2536
dalmatiner	652
damalig	7798
damals	9783
dame	6269
damhirsch	2306
damit	9912
damm	6320
damme	3621
dampf	6155
dampfmaschin	4367
dampfmaschine	3939
danach	9684
daneben	7209
dank	8667
danken	3624
dann	9961
dar	5683
daran	9715
darauf	9570
daraufhin	7526
daraus	9450
darin	9559
darknet	603
darm	7321
darstellen	7966
darts	4220
darum	9801
darunter	8818
darwin	2274
darüber	9627
dass	9958
dasselbe	8117
data	4310
datei	5992
datensach	3592
datenschutz	5667
dattel	4303
datum	9303
datumsgrenze	1670
dauer	1669
dauerhaft	5895
dauern	9706
daumen	4922
davon	9755
davor	8379
dazu	9863
dazugehören	580
dazwischen	8043
debatte	4932
decke	6503
deckel	2667
decken	1684
defekt	2316
deflation	633
dehnen	5094
deich	5685
dein	7633
del	5937
delfin	7738
delta	5939
demenz	7837
demnach	4528
demo	4678
demokrat	6426
demokratie	9501
demokratisch	9345
demonstrant	7803
demonstration	9505
demonstrieren	8751
denken	9764
denker	4685
denkmal	8223
denkmäler	7017
denn	9731
dennoch	8249
depp	615
depression	7076
depressiv	4418
der	10000
derby	6572
derjenige	8289
derselbe	9249
derzeit	5309
deshalb	9950
design	619
designer	3144
desto	8295
deswegen	9355
detektiv	623
deuten	2241
deutlich	9002
deutsch	9894
deutschsprachig	6329
dezember	9396
dezibel	626
diabetes	5543
diagnose	2400
dialekt	8846
diamanten	7689
dich	7200
dicht	8490
dichter	7848
dichtung	2383
dick	9211
dickdarm	2350
dickens	2572
dieb	8167
diebstahl	2633
dienen	8711
diener	6539
dienst	8275
dienstag	8575
dienstagabend	3793
dienstleistung	8517
diesel	7710
dieselkraftstoff	4731
dieselmotor	6899
dieser	9980
diesmal	6230
dieter	6474
digital	7669
digitale	3089
diktator	8665
diktatur	8436
dilettant	2651
ding	9808
dinkel	1412
dinner	2628
dinosaurier	7920
dioxin	1396
diplomat	7223
diplomatisch	3639
dir	6018
direkt	9201
direktkandidat	3855
direktmandat	1473
direktor	3982
dirigent	6699
disc	5022
disco	7023
diskothek	4613
diskriminieren	5213
diskriminierung	7752
diskussion	7318
diskutieren	7366
disney	7019
disziplin	6117
dithmarschen	4253
diät	2347
dj	2614
dna	6652
doch	9614
doktor	5476
doktorarbeit	1552
doktortitel	2356
dokument	6522
dolby	2359
dollar	8162
dolmetscher	1564
dom	9081
don	1174
donau	8218
donner	3731
donnerstag	8618
donnerstagabend	1172
doping	5076
doppel	4745
doppelkontinent	1157
doppelt	9498
dora	5506
dorf	9122
dornenhecke	2337
dornrösch	7618
dort	9936
dorthin	8772
dortig	1147
dos	1138
dosb	1136
dose	6311
down	7095
downsyndrom	6737
dr	6025
drache	7807
dracula	2395
draht	5067
dran	6304
drauf	7676
draussen	8957
dream	1141
dreamachine	2600
dreck	3694
dreckig	1151
drehbuch	5933
drehen	9358
drehung	2596
drei	9749
dreieck	4977
dreiecke	1154
dreiecken	1872
dreieinhalb	2591
dreifaltigkeit	1181
dreihunderen	2216
dreimal	7922
dreissig	7080
dreissigjährige	4993
dreizehn	3459
drin	8168
dringen	5758
dringend	5487
drinnen	5065
drittel	8712
dritter	9204
drittgrösster	9164
droge	9235
drohen	7452
drohne	6795
drollig	1719
dromedare	1715
druck	7650
drucken	8365
drucker	6449
druckerei	4883
druckmaschine	854
druide	2710
drängen	2756
drücken	8694
dschihad	2196
dschingis	860
dschungel	3129
du	9191
duck	2302
dudelsack	2301
duden	6244
dumm	6262
dunkel	8901
dunkelheit	2933
dunkeln	3350
dunking	833
dunkle	834
durch	9904
durchaus	5986
durcheinander	4488
durchfahren	2319
durchfall	1752
durchführen	6485
durchmesser	6361
durchqueren	4413
durchschnitt	7813
durchschnittlich	3832
durchsetzen	8481
durchsichtig	5972
durchsuchen	8370
durchsuchung	5039
durchziehen	1617
duschen	3862
dutzend	3555
dvd	5394
dämmerung	5812
dämon	5075
däne	5934
döner	2261
dümm	5915
düne	6705
dünger	8195
dünn	8912
dünndarm	1606
dürfen	9929
dürre	8338
easy	2278
ebbe	6261
eben	8810
ebene	6333
ebenfalls	9509
ebenso	8465
ebike	1672
ebolafieber	884
echelon	2692
echo	6176
echse	5259
echt	8927
echten	1660
ecke	6104
edelkastanie	2438
edelstein	5273
edison	3531
egal	8387
ehe	8523
ehefrau	7875
ehemalig	8144
ehemann	4906
ehepaar	6251
ehepartner	2314
eher	9628
ehre	7081
ehren	6423
ehrenamt	3670
ehrenamtlich	4910
ehrenbürger	3780
ehrlich	6076
ei	9376
eiche	4755
eichel	753
eichhörnchen	7187
eid	7273
eidechsen	4218
eidgenossenschaft	6731
eiern	6356
eierstöcke	2516
eifel	5281
eifersüchtig	741
eiffelturm	6517
eigen	9819
eigens	1863
eigenschaft	8027
eigenständig	4918
eigentlich	9727
eigentum	1841
eigentümer	6833
eignen	8563
eiklar	765
eimer	4916
ein	9998
einander	7894
einatmen	7657
einbauen	7451
einbrechen	5185
einbrecher	8095
einbringen	2210
einbruch	6964
eindeutig	4391
eindringen	4915
eindruck	4183
eineinhalb	6912
einer	9069
einerseits	6717
einfach	9756
einfachere	820
einfangen	6406
einfluss	8544
einflussreich	1282
einfrieren	2495
einfügen	789
einführen	7907
eingang	6929
eingeben	3468
eingehen	3922
eingetragen	3225
eingewandern	5261
eingreifen	1334
einhalten	8723
einheimisch	6179
einheimische	6513
einheit	7989
einheitlich	5446
einig	7639
einige	9571
einigen	8002
einiger	9873
einigung	6427
einkaufe	6170
einkaufen	7957
einkaufszentrum	5450
einklemmen	5295
einkommen	3268
einladen	6779
einladung	2521
einlegen	4936
einmal	9672
einmischen	5764
einnahme	4348
einnehmen	6794
einreisen	4252
einrichten	6595
einrichtung	7711
eins	5765
einsam	5524
einsammeln	3289
einsatz	9254
einschalten	4626
einschlagen	5117
einschliessen	2349
einschränken	5326
einschränkung	3346
einseitig	2447
einsetzen	9212
einsiedeln	2455
einsparen	3586
einsperren	8324
einst	5803
einsteigen	3558
einstein	5828
einstellen	7856
einstellung	6065
einstochen	1281
einstürzen	7351
einteilen	7836
einteilung	7723
eintrag	4268
eintragen	6821
eintreten	1066
eintritt	4872
eintrittskarte	6786
eintrittskarten	1264
einverstanden	7728
einwanderer	8122
einwanderung	5901
einwickeln	1097
einwohner	9775
einwohnerzahl	5335
einzahl	1512
einzahlen	2389
einzel	2842
einzelgänger	5810
einzeln	7939
einzelne	5898
einzelner	9379
einzig	9226
einzigartig	1522
einziger	7043
eis	9181
eisberg	3910
eisbrecher	2833
eisbär	7870
eisen	8979
eisenbahn	8692
eisenbahnlinie	4588
eisenbahnstrecke	1073
eisenerz	5966
eisenzeit	3006
eisern	2862
eishockey	7294
eisprung	1018
eiswagen	1586
eiszeit	6941
eiter	4001
eiweiss	5158
eiweisse	1570
eizelle	7563
el	6212
elastisch	2264
elch	4892
elche	6328
elefant	8909
elefantenbaby	4314
elektrisch	9158
elektrizität	8192
elektroauto	6275
elektroautos	3131
elektrobuss	3135
elektrogerät	1557
elektroindustrie	925
elektrolkw	4882
elektromotor	5735
elektron	5736
elektronik	5968
elektronisch	8397
element	7841
elf	7090
elfe	1414
elfenbein	5953
elfmeterschiessen	1420
elster	5427
eltern	9613
elterngeld	1382
elternteil	4250
em	8234
email	8156
emailadres	968
emden	6511
emirat	6514
empathie	5430
empfangen	7312
empfehlen	4511
empfinden	6714
empfindlich	6701
empfänger	6028
ende	9769
enden	9075
endgültig	6101
endlich	5960
endspiel	8706
energie	9407
energiepreis	972
eng	8898
engel	8345
engländer	7070
enkel	1453
enorm	4439
entdecken	9532
entdecker	6507
entdeckung	6504
ente	2909
enterprise	3484
entfalten	1439
entfernen	7463
entfernt	9117
entfernung	6498
entführen	7591
entgleisen	3686
enthalten	9366
entkommen	4272
entlang	7683
entlassen	8559
entlasten	1011
entlein	4952
entscheiden	9812
entscheidend	8176
entscheidung	9441
entschlüsseln	2786
entschuldigen	6692
entschädigung	6248
entschärfen	7937
entschärfung	7773
entsetzt	1992
entsorgen	1005
entspannen	5998
entsprechen	7469
entsprechend	6646
entspringen	6157
entstanden	1460
entstehen	9831
entstehung	5566
enttäuschen	4175
entweder	8654
entweichen	998
entwerfen	4985
entwickeln	9362
entwicklung	7007
entwicklungsland	5005
entwurf	5182
entzünden	6448
entzündung	4763
epoche	6232
er	9976
erbauen	5852
erbe	5166
erben	3150
erbeuten	1381
erbgut	4540
erbse	5817
erdbeben	9125
erdbeere	5196
erdboden	7950
erde	9857
erderwärmung	7449
erdgas	8680
erdgeschoss	1424
erdker	1418
erdkruste	5834
erdkugel	1417
erdkunde	4180
erdmännchen	4594
erdnüs	5206
erdoberfläche	5204
erdogan	6066
erdteil	7653
erdwärm	2000
erdöl	9108
ereignis	8131
erfahren	8853
erfahrung	7538
erfanden	946
erfinden	9489
erfinder	8522
erfindung	8678
erfolg	8803
erfolgen	2921
erfolgreich	9433
erforschen	8871
erfrieren	4833
erfunden	4497
erfunder	7086
erfüllen	7018
ergeben	7684
ergebnis	8911
ergreifen	2101
erhalten	9536
erheben	6312
erhitzen	6978
erholen	6136
erhöhen	6752
erhöhung	1579
erinnern	9388
erinnerung	6830
erjahren	6530
erkannn	953
erkennbar	3976
erkennen	9565
erkenntnis	4245
erkennungszeichen	1568
erklingen	3008
erklären	9371
erklärung	8399
erkranken	5603
erkrankt	1535
erkrankung	5306
erkunden	5664
erkälten	9041
erkältung	6583
erlangen	6307
erlassen	1533
erlauben	9197
erlaubnis	8259
erle	1085
erleben	8778
erlebnis	5821
erledigen	8129
erleichtern	4307
erleiden	2918
erlernen	6283
erloschen	1083
erlösen	2141
ermitteln	9253
ermittler	3603
ermittlung	1500
ermorden	9429
ermordet	7455
ermordung	1079
ermöglichen	5302
ernennen	7424
erneuerbar	7193
erneuern	7717
erneuerung	1493
erneut	7066
ernst	7290
ernsthaft	2858
ernt	1077
ernte	8113
ernten	8154
ernähren	8896
ernährung	7293
eroberen	8512
eroberer	5098
erobern	9323
eroberung	2025
erosion	3529
erotisch	3251
erpressen	4216
erpressung	2790
erreger	8213
erreichbar	2041
erreichen	9530
errichten	8005
ersatz	3534
erschaffen	5130
erscheinen	9005
erschiessen	8734
erschlagen	1068
erschrecken	2040
erschöpfen	1076
ersetzen	7764
erst	9811
erstechen	7116
erstellen	3254
erstens	4553
erster	9868
ersticken	3369
erstmal	3243
erstmals	7891
erstrecken	4340
erststimme	6965
ertasten	4229
ertrag	1102
ertragen	6716
ertrinken	3288
ertrunken	7646
erwachen	1513
erwachsen	8463
erwachsene	9297
erwarten	6612
erweitern	4238
erwischen	6154
erwähnen	7470
erwärmen	6619
erz	6454
erzbischof	6519
erzbistum	3222
erzeugen	8684
erzgebirge	3819
erziehen	5822
erzieher	8211
erziehung	4356
erzielen	4259
erzählen	9462
erzähler	1261
erzählung	7621
eröffnen	8311
eröffnung	7036
eröffnungsfeier	2892
es	9992
esa	3759
esch	3233
esche	3944
escooter	3486
esel	7547
esperanto	3591
essay	1242
essayist	1027
essbar	4717
essen	9743
essware	1247
et	1299
etappe	7582
etwa	9899
etwas	9927
eu	9747
euch	3930
eucharistie	1371
eukommission	8531
eul	7499
eule	4806
eulenspiegel	6132
euländ	6041
euländern	8392
euphrat	2135
eupolitiker	8205
eure	1307
euro	9688
eurochequekarte	1302
europa	9879
europameister	3267
europameisterschaft	8923
europameisterschaften	7815
europapark	1048
europaparlament	7768
europapokal	4799
europarat	7535
europawahl	6987
europäer	8543
europäisch	9820
euroschein	1044
eustaat	6218
evakuieren	2535
evangelisch	8881
everest	6091
evolution	3492
ewig	4794
exekutive	5276
exemplar	922
exfrau	5854
exfreundin	797
existieren	2478
exklave	4366
expedition	5000
experiment	8200
experte	9139
expertin	6945
explodieren	9064
explosion	8855
export	3938
exportieren	4206
extra	8025
extrem	6976
extremismus	785
extremist	3926
ezb	6807
ezigarette	3481
fabel	1957
fabelwese	4747
fabrik	9324
facebook	8669
fach	8761
facharzt	822
fachhochschule	1270
fachidiot	1947
fachleute	9790
fachmann	6319
fachpraktiker	3371
fachpraktikerausbildung	816
fachsprache	2506
fackel	5260
fackellauf	3377
faden	6200
faeser	6809
fahne	6194
fahrbahn	8664
fahren	9895
fahrend	3297
fahrer	9575
fahrerin	4838
fahrgast	5663
fahrgeschaft	1929
fahrgeschäft	3351
fahrkarte	4642
fahrrad	8795
fahrradbügel	807
fahrradfahrer	7825
fahrräder	7263
fahrrädern	2488
fahrspure	5865
fahrstuhl	3635
fahrt	8408
fahrverbot	1844
fahrzeug	8851
fair	6885
fake	5773
falke	4846
fall	9446
falle	3538
fallen	9631
falls	7250
fallschirm	4492
falsch	9381
falsches	735
falschmeldung	1827
falte	2163
falten	2160
fame	4620
familie	9720
familienmitglied	754
fan	9030
fangen	9107
fantasy	4629
farbe	9480
farbig	6806
farbstoff	4674
farn	2004
fasching	2922
faschismus	4660
faschist	2436
faser	5969
fass	2467
fassen	7502
fast	9855
fasten	7210
fastenzeit	5695
fastfood	5313
fastnacht	5970
faul	2472
faultier	2082
faust	4223
favorit	1657
faxgerät	2058
februar	9260
fechten	2050
feder	7777
fee	3784
feen	4771
fegebank	3789
fehlen	8791
fehler	8955
feier	8827
feierlich	1640
feiern	9538
feiertag	8989
fein	8139
feind	8970
feindlich	2069
feindschaft	4191
feinstaub	3948
feld	9163
feldherr	2042
feldjäger	2031
fell	8731
fels	8466
fenster	8752
fensterscheibe	3599
ferien	5639
fern	5009
fernbus	5382
ferne	1601
ferner	6186
ferngesteueren	917
fernrohr	5729
fernseh	5517
fernsehen	9387
fernseher	6905
fernsehprogramm	2167
fernsehsender	8258
fernsehsendern	4527
fernsehsendung	8173
fernsehsendungen	910
fernsehserie	6928
fernsehstudio	907
fernsehturm	6365
fertig	9129
fertigen	4255
fesch	2096
fesseln	1615
fest	9723
festhalten	7636
festival	8780
festland	7428
festlegen	8011
festmachen	5004
festnahme	5217
festnehmen	9349
festspiel	5218
feststellen	8017
festumzug	4261
festung	8124
fett	8670
fette	2111
fettleibigkeit	1735
feuchen	4517
feucht	8074
feuchten	4470
feuchtigkeit	5411
feuer	9854
feuerstein	5378
feuerwehr	9573
feuerwehreinsatz	4667
feuerwehrleut	2682
feuerwehrleute	8874
feuerwehrmann	1904
feuerwerk	6897
feuerzeug	1764
fichte	5586
fieber	9207
figur	9172
film	9805
filmemacher	6953
filmemachern	3375
filmen	4643
filmfest	7707
filmfestival	7414
filmkunst	3383
filmmusiker	3382
filmpreis	5028
filmstudio	3376
filter	4205
filtern	5002
finale	9194
finanz	5508
finanzamt	3367
finanziell	857
finanzieren	3139
finanzminister	6358
finden	9910
finder	855
fing	7606
finger	8525
finken	4719
firefox	1955
firma	9816
first	3324
fisch	9351
fischart	4790
fischen	1205
fischer	7965
fischerei	4596
fischfang	5146
fischmarkt	1970
fit	1760
fitness	1139
fitnessstudio	3121
fjorde	1906
flach	9094
flachland	1741
flagge	8084
flamingo	5465
flamme	5194
flasche	8488
flaschenpost	2581
flecht	3916
fleck	3185
flecken	5347
fledermäus	6270
fleisch	9126
fleming	1677
flick	4467
fliege	7732
fliegen	9615
fliegenpilz	3152
fliehen	9018
fliehkraft	1178
fliessen	9533
fliessend	3512
floh	4583
floss	1137
flotte	1837
fluch	3164
flucht	7897
flug	8785
flugblatt	3681
fluggerät	3059
fluggesellschaft	7288
flughafen	9206
flughäfe	1852
flugplatz	3045
flugzeug	9691
fluss	9424
flusspferd	6063
flut	7420
flutwelle	3741
fläche	9061
flöt	5354
flöte	5909
flüchten	8611
flüchtling	9557
flüchtlingskrise	1146
flüchtlingsunterkunft	2095
flügel	8373
flüssig	8119
flüssigerdgas	1119
flüssigkeit	8547
flüssigkeite	5880
folge	9138
folgen	9035
folgend	7758
folter	6467
foltern	6570
fondue	3734
football	6240
ford	2073
fordern	9215
forderung	5015
forelle	3428
form	9633
formel	8024
formelweltmeister	3426
formen	6087
forschen	7412
forschenden	1161
forscher	9374
forscherin	6279
forschung	7655
forschungsstelle	7830
fort	6321
fortan	3395
fortbewegen	2164
fortpflanzen	4503
fortpflanzung	7142
fortschritt	5042
forum	2098
fossil	4896
foto	9159
fotograf	4207
fotografie	2631
fotografieren	4429
foul	2128
foundation	4432
frachter	8207
fracking	6582
frage	9493
fragen	8710
fraktion	7979
franken	7001
frau	9946
frauenarzt	3966
frauenfussballnationalmannschaft	2621
frauenkirche	1203
frauenmannschaft	3808
frauenrecht	1452
frauenwahlrecht	3079
frei	9685
freibad	4954
freie	6855
freiheit	8739
freilassen	4712
freilichtmuseum	2624
freimarkt	4709
freitag	8812
freitagabend	3932
freitags	1202
freiwillig	8339
freizeit	7780
freizeitpark	6858
fremd	8675
fremde	8142
fremdsprache	3067
fremdwort	4650
fremdwörter	5919
frequenz	3653
fressen	9453
fressfeind	1994
freud	5066
freude	7100
freuen	9054
freund	9464
freundin	7984
freundlich	5507
freundschaft	7104
friede	1388
frieden	9193
friedensnobelpreis	3893
friedenspreis	3374
friedensvertrag	1422
friedhof	8115
friedlich	8006
frieren	5469
frisch	8511
friseur	4421
frissen	6555
frites	4686
froh	4875
front	2652
frosch	6253
frost	3514
frucht	9066
fruchtbar	7143
fruchtfleisch	4481
fröhlich	4628
frösche	6798
früchten	5393
früh	9882
frühjahr	6675
frühling	8823
frühlingsfest	2136
frühmittelalter	1188
frühstück	1193
fuchs	3680
fund	6665
fundstück	1527
funk	6392
funkamateur	3085
funke	4645
funktion	5642
funktionieren	9492
furchtbar	1169
fuss	9050
fussball	9460
fussballbund	8635
fussballbundesliga	6579
fussballem	6249
fussballer	7724
fussballerin	6090
fussballeuropameisterschaft	5889
fussballfeld	4128
fussballliga	3436
fussballmannschaft	5894
fussballmannschaften	8077
fussballnationalmannschaft	7396
fussballnationalmannschaften	6479
fussballspiel	8893
fussballspiele	3030
fussballspieler	8491
fussballstadion	5187
fussballturnier	7554
fussballverband	7481
fussballverein	9392
fussballvereine	7506
fussballweltmeisterschaft	8288
fussballwettkampf	2061
fussballwm	8649
fussgänger	7447
fussgängerzone	1245
futter	7589
future	3432
fähigkeit	6542
fähranleger	1348
fähre	9127
fälschen	6995
färben	3766
fässer	3024
förde	2570
fördern	8362
förderschule	1140
förderschwerpunkt	2569
förderung	3407
füchse	5908
fügen	4134
fühlen	9590
fühler	2567
führen	9675
führer	7380
führerkabin	3397
führerschein	7235
führung	7057
führungszeugnis	1229
füllen	8473
füllfederhalter	1342
fünf	9468
fünfmal	2566
fünftel	6719
fünfter	7344
fünfzehn	2564
fünfzig	4551
für	9982
fürchten	6067
fürst	8310
fürstentum	4869
füttern	7146
gabel	1243
gaffer	2558
gaga	2557
galaxie	6817
galerie	4102
galle	4607
gallen	5344
gallenblase	4853
gang	6527
gange	4300
gans	4570
ganz	9898
ganze	6738
gar	9585
garage	5359
garten	8964
gas	9578
gasflasche	5365
gasleitung	6970
gasreserv	5581
gasse	4605
gast	8430
gastgeber	1121
gastgeberland	1124
gaststätte	4598
gates	4964
gattung	8294
gazastreifen	8243
gazelle	3517
gebaut	4154
geben	9985
gebet	7755
gebiet	9795
gebirg	9190
gebirge	7330
gebirgig	6580
gebissen	5578
gebogen	3186
gebor	7725
gebot	6482
gebrauch	2585
gebrauchen	3818
gebraucht	1589
gebräuchlich	1610
geburt	9045
geburtsort	1194
geburtstag	8415
geburtsurkunde	4427
gebäck	1597
gebärdensprache	6378
gebären	9607
gebärmutter	6643
gebäude	9681
gebühr	7680
gebührenbescheid	1631
gedachte	1133
gedanke	8424
gedeihen	1628
gedenken	4843
gedenkfeier	3172
gedenkstätte	2658
gedenktag	7574
gedicht	8634
gedruckt	1115
gedächtnis	2110
geeignet	3169
gefahr	9055
gefallen	3145
gefangen	8063
gefangener	8335
gefangenschaft	5414
gefieder	1776
geflüchtete	6587
gefrieren	5444
gefroren	6147
gefährden	8121
gefährlich	9707
gefährt	3116
gefällen	7964
gefälscht	3971
gefängnis	9650
gefängnisstrafe	1965
gefäss	5624
gefühl	8705
gegen	9923
gegend	9470
gegende	8822
gegeneinander	9380
gegenfahrbahn	1978
gegensatz	7064
gegenseitig	8344
gegenspieler	3979
gegenstand	9013
gegenteil	9016
gegenverkehr	3305
gegenwart	5116
gegenüber	8209
gegessen	8023
gegner	9112
gegnerisch	4156
gegossen	3313
gegründen	1940
gehalt	5727
gehbehinderung	2716
gehege	5856
geheim	8518
geheimdienst	8794
geheimnis	4329
geheimnisvoll	852
gehen	9921
gehirn	8993
gehorchen	2732
gehweg	6565
gehäuse	1726
gehör	1935
gehören	9935
gehörgang	3137
gehörlose	859
geige	6695
geiger	1692
geimpfen	5859
geimpfte	1984
geisel	6610
geist	8758
geister	1695
geisterstadt	1997
geistig	6395
gelangen	8978
gelangn	2923
gelb	8486
gelber	870
gelbwest	1972
geld	9919
geldautomat	4101
geldautomate	7823
geldbetrag	3337
geldgeber	2925
geldgeschäft	837
geldkarte	5069
geldschein	7281
geldstrafe	4480
geldtransporter	6298
geldwert	5342
geldwäsche	4100
gelegen	2928
gelegenheit	3900
gelegentlich	2739
gelehrte	2738
gelehrter	3869
gelenk	5957
gelenke	830
geliehen	5361
gelingen	9020
gelogen	4826
gelten	9796
gelände	7629
geländer	4822
gemahlen	836
gemalt	1897
gemein	4046
gemeinde	9320
gemeinderat	5353
gemeinsam	9616
gemeinschaft	8426
gemeinwesen	1888
gemisch	4625
gemälde	8505
gemäss	2919
gemässigt	840
gemässigten	841
gemüse	8681
gemütlich	1912
gen	7785
genannt	842
genannten	1751
genanntes	4052
genau	9768
genauer	7840
genauso	8813
genehmigen	2674
genehmigung	3902
general	4055
generalsekretär	7115
generalsekretärin	846
generation	7735
generator	5235
genese	1740
genesen	7242
genesene	874
geniessen	5473
gentechnik	1745
genug	9504
genügen	2669
genügend	8336
geocach	2987
geocache	3665
geocaching	1746
geografie	901
geometrie	4499
geometrisch	2088
geophysik	902
georgien	4767
gepard	2665
geparde	5489
geplant	4770
gerade	9521
geradeaus	2104
geraten	8180
gerda	3560
gerecht	7484
gerechtigkeit	7385
gerhard	4034
gericht	9765
gerichtshof	6437
gerichtsverfahren	1614
gering	6516
gerissen	1595
germane	8521
germanisch	7476
gern	8972
gerne	9415
gerste	5726
geruch	4509
gerät	9474
geräusch	7730
gerücht	1605
gerüst	909
gesamt	8700
gesandter	898
gesang	7233
geschehen	9263
geschenk	7975
geschichte	9776
geschickt	4744
geschirr	6201
geschirrspülmaschine	2039
geschlecht	9284
geschlechtsorgan	6187
geschlechtsreif	6206
geschlechtsverkehr	5831
geschlossen	3615
geschmack	7109
geschmacklos	880
geschmolzen	4417
geschmückt	4091
geschnitten	5760
geschrieben	3915
geschwindigkeit	8193
geschwister	7367
geschäft	9151
geschäftsmann	3578
geselle	1676
gesellschaft	9040
gesetz	9827
gesetzbuch	896
gesetzlich	4769
gesicht	8856
gespannt	5883
gesprochen	3718
gesprunge	6937
gespräch	8756
gestalten	5232
gestapo	2077
geste	2656
gestehen	6209
gestein	8493
gesteinsbrocke	1643
gestell	1644
gestern	2961
gestohlen	1645
gestorben	888
gestreikt	6842
geständnis	3790
gesund	9553
gesundheit	8437
gesundheitlich	2066
gesundheitsamt	5528
gesundheitsminister	6339
gesünd	4461
getestet	3003
getreide	9105
getreidekorn	3004
getreidesilo	894
getreidesort	2445
getrennt	1840
getrocknet	4823
getränk	7902
gewalt	9642
gewaltenteilung	3748
gewaltig	2463
gewalttätig	7906
gewehr	8186
geweih	6636
gewerbegebiet	4825
gewerkschaft	9473
gewicht	8501
gewichtsklasse	2936
gewinn	6916
gewinnen	9836
gewinner	8990
gewiss	7642
gewissen	6188
gewitter	7006
gewohnen	7827
gewächshaus	3703
gewählt	5753
gewässer	7795
gewöhnen	6496
gewöhnlich	4829
gewünscht	776
gewürz	8037
gezielt	5056
gezwitscher	768
ghetto	3651
ghostwriter	1113
gib	1788
giessen	4510
gift	8968
giftgas	3813
giftig	9019
gipfel	8236
gipfeltreffen	2528
gitarr	5426
gitarre	7050
gitter	2086
glas	8857
glasflasche	1808
glasscheibe	3246
glatt	8208
glaube	8764
glauben	9734
gleich	9713
gleichberechtigt	738
gleichberechtigung	4088
gleichen	2549
gleichgeschlechtlich	6906
gleichgewicht	5087
gleichheit	3935
gleichmässig	3601
gleichzeitig	9010
gleis	7947
gleiten	5534
gletscher	8307
glied	744
gliederfüsser	4615
gliedstaat	2124
global	3250
globalisierung	2123
globus	4033
glocke	7541
gluten	747
glänzend	1877
gläubig	6797
gläubige	8460
glück	8554
glücklich	8262
glücksbringer	2534
glücksspiel	6996
glühend	4305
glühwürmche	1890
gnade	1790
goethe	5820
gold	9237
golden	8931
goldener	1934
goldmedaill	3883
goldmedaille	7783
goldmünze	1797
golem	4646
golf	7668
golfstrom	2479
gondel	1923
google	8284
gorilla	7637
gotik	4636
gotisch	6327
gott	9641
gottesdienst	8225
gotteshaus	812
gotthard	4652
gottvater	1943
gouverneur	3390
grab	8748
graben	8862
grad	9176
graf	5591
grafe	4140
graffiti	2498
grafik	3215
grafit	5014
grafschaft	781
graiche	4170
gramm	8123
grammatik	6563
grammatisch	3487
grammy	3276
grammys	2494
granate	5501
grand	4746
grandslamturnier	783
grandslamturniere	1998
gras	8592
gratulieren	3461
grau	7480
graubünd	5505
grausam	6758
greenpeace	5286
gregel	7120
greifen	8696
greifvögel	5565
grenze	9579
grenzen	8068
grenzkontrolle	793
grenzübergang	795
gretel	873
griff	5154
grill	2112
grillen	4705
grimm	7404
grindwal	4397
grippe	8513
grizzly	5186
grob	6211
gross	1321
grossartig	5529
grosseltern	7464
grossmutter	8055
grossstadt	8760
grossteil	7670
grossvater	4136
grube	4383
grund	9668
grundbedürfnis	1050
grundgesetz	9147
grundhaltunge	1053
grundlage	4816
grundrecht	8682
grundschule	7256
grundstück	6129
grundwasser	7868
gruppe	9834
gruppenphase	2510
gruss	1060
gräber	4008
grönland	7903
grösse	8411
grösseres	3417
grösstenteils	2437
grün	9031
gründen	9689
gründer	7139
gründlich	3953
gründung	4723
grüne	9301
gucken	6882
gummi	6428
gummistiefel	2081
gunter	6352
gut	9941
gutachten	1023
gute	7514
gymnasium	7549
gärtner	5412
gärtnereium	2062
götter	8468
göttin	7176
göttlich	1035
göttliche	1259
gültig	7271
günstig	7556
gürtel	5866
gürteltier	4350
güterzug	5739
gütesiegel	1292
haar	8996
haarfarbe	1088
haartrockner	2848
haben	9995
hacker	4612
hafen	9369
hafenstadt	6761
hafer	4349
haft	3416
haftung	4113
hagel	4116
hahn	6452
haie	4138
haken	2829
halb	9236
halber	1111
halbfinale	8645
halbinsel	8306
halbkugel	1514
hall	2814
halle	8882
hallenbad	1103
hallowee	5651
halm	2013
hals	8789
halt	2824
haltbar	5824
halten	9781
haltestelle	6236
haltung	6220
hamburger	9171
hamm	4611
hammer	4365
hamster	5868
hand	9416
handarbeit	3242
handball	7888
handel	9001
handeln	9299
handelsstadt	1486
handelsweg	3650
handlauf	3664
handlung	5152
handschrift	5846
handwerk	5391
handwerker	7874
handy	8918
hanf	1490
hang	4071
hantel	3001
harfe	4311
harmlos	2853
harmonist	1499
hart	9198
hartz	5841
hase	5303
hashtag	5304
hass	7433
hassen	7370
hassrede	3918
haufen	2954
hauptbahnhof	7577
hauptfigur	2150
hauptfigure	1536
hauptgebäude	1563
hauptgrund	1565
hauptort	5839
hauptrolle	4839
hauptsitz	6843
hauptstadt	9888
hauptsächlich	8377
haus	9864
hausarzt	5312
hausbesitzer	3546
haushalt	7971
haushaltsplan	2776
haushuhn	4281
hauskatz	3861
hauskatze	1578
hauslehrer	967
hausrind	6049
haussperling	2130
haustier	7705
haustür	2845
hauswand	962
haut	9312
hautfarb	3872
hautfarbe	8873
hebel	5207
heben	6957
hecke	2817
heer	3339
heft	4832
hefte	1539
heftig	5763
heide	7319
heidelbeere	3387
heil	3132
heilen	7770
heilerziehungspfleger	943
heilig	9302
heiligabend	924
heilige	8529
heim	4404
heimat	8786
heimatland	6293
heimatstadt	2809
heimen	927
heimfeld	1883
heimisch	928
heimlich	7649
heimspiel	930
heirat	3113
heiraten	9268
heiss	9365
heissen	9965
heissluftballon	1889
heisst	7763
heizen	8359
heizpilz	935
heizung	8622
heizöl	5600
held	8238
helfen	9804
helfer	9228
helikopter	937
helium	6381
hell	8305
hellebarde	1405
heller	6566
hells	1404
helm	7060
helmut	7603
helvetier	4157
henne	1910
her	9418
herab	941
heran	6394
herankommen	942
herauf	1392
heraus	9255
herausfinden	9152
herausgeben	5173
herausholen	4779
herauskommen	4520
herbst	8718
herd	5441
herde	5708
herdplatte	1399
hergeben	2801
hergestellt	3684
hering	3419
herkommen	4103
herkunft	7895
herr	8360
herrschaft	8166
herrschen	9188
herrscher	9214
herstellen	9635
hersteller	6558
herstellung	7929
herum	9100
herumfahren	1464
herunter	6880
herunterfallen	1466
herunterladen	3020
hervor	1990
hervorragend	4534
herz	8801
herzens	3785
herzinfarkt	5244
herzog	6687
herzogtum	4428
herzschlag	1012
herzöge	1476
heterosexuell	8019
heterosexuelle	5432
heuler	3036
heuschrecke	3060
heute	9917
heutig	9568
heutzutage	8350
hexe	7402
hier	9778
hierbei	4415
hierher	5434
hieroglyphe	973
hiessen	6491
hilfe	9589
hilfetelefon	1925
hilfreich	2891
hilfsmittel	6927
hilfsorganisation	1950
hilfsorganisationen	2877
hilfswerk	1949
himmel	9272
himmelfahrt	4441
himmelskörper	7461
himmelsrichtung	5198
hin	8998
hinab	3595
hinauf	6014
hinaus	7896
hinbringen	2321
hindern	6115
hindernis	7276
hindi	2423
hinduismus	4452
hindurch	6075
hindus	5590
hinein	8474
hineinversetzen	984
hingefallen	1446
hingegen	9315
hingehen	2329
hinrichten	6630
hinrichtung	5124
hinspiel	978
hinten	8076
hinter	8765
hinterbein	976
hintereinander	7659
hinterer	4017
hintergrund	5971
hinterher	5247
hinterlassen	6501
hinunter	5245
hinweis	8298
hinzu	8601
hinzufügen	2871
hip	3093
hiphop	4024
hirn	994
hirsch	7782
hirse	6510
hirt	2333
historiker	3026
historisch	6163
hit	1008
hitze	8125
hitzefrei	2353
hitzewelle	1015
hiv	4516
hivirus	5575
hobby	4562
hoch	9838
hochdeutsch	1431
hochgebirge	5159
hochhaus	8704
hochhäusern	4478
hochkultur	8098
hochladen	2426
hochland	3713
hochofen	2223
hochrechnung	2221
hochschule	8255
hochsee	956
hochsprung	3154
hochwasser	7797
hochzeit	7083
hockey	2212
hof	6000
hofer	2247
hoffen	8494
hoffnung	6696
hohl	4167
hohlen	934
holen	9417
hollywood	8400
holocaust	8762
holozän	2805
holz	9456
holzbalken	926
holzblasinstrument	3841
holzhaus	2191
holzkohle	6274
holzschnitt	1549
holzstück	966
homeoffice	2294
homosexualität	6153
homosexuell	8385
homosexuelle	8092
honig	6238
hooligan	6561
hop	2984
horch	2986
horizont	2989
hormon	4029
horn	7918
horrorfilm	2254
hose	6546
hotel	8937
hotelzimmer	2286
hotline	1086
house	3593
hubschrauber	8369
huhn	4382
humanismus	1496
humanist	1078
humboldt	2908
hummel	5704
humor	1485
hund	9360
hundebaby	2299
hundekommando	2779
hunderasse	2203
hundert	9175
hunderttausend	5104
hundestrand	2185
hunger	8221
hungern	5105
hungersnot	5606
hungrig	1107
hurrikan	5692
husten	9221
hut	4341
hygiene	6119
hyäne	6326
hälfte	9449
händler	7695
hängen	9419
hässlich	5332
häufig	9437
häufigste	5903
häuptling	2857
häuten	2373
höchstens	8492
höflich	1037
höflichkeit	1036
höhe	8951
höhepunkt	4543
höher	1031
höhle	8514
hölle	6603
hören	9592
hörspiel	6084
hübsch	5801
hüfte	1246
hügel	8271
hügelig	6286
hühner	7885
hülle	6100
hülse	3335
hütte	6059
ich	9780
idee	9482
ideologie	2384
igel	6804
ihm	9708
ihn	9818
ihnen	9806
ihr	9955
illegal	4352
imam	4355
imbiss	1054
imker	3260
immer	9926
immerhin	1320
immunsystem	7246
imperialismus	2368
impfausweis	4129
impfen	9307
impfpflicht	5560
impfstoff	9141
impfstoffe	9023
impfung	9308
impfunge	7746
impfzentre	3402
impfzentrum	6174
importieren	1324
in	9997
indem	8663
indigen	5193
indirekt	1305
industrialisierung	7154
industrie	9185
industrieland	1347
industrielle	4725
industrieländ	4333
industriestadt	784
ineinander	3472
infektion	4168
infizieren	5171
inflation	7460
influencer	5174
informatik	5551
informatiker	2225
information	9612
informieren	8363
ingenieur	6697
inhalt	8136
inhaltlich	821
inka	6389
inklusion	6718
innen	7418
innenminister	7421
innenministerin	6387
innenohr	819
innenpolitik	6384
innenstadt	8715
innere	6933
inneren	6383
innerer	6139
innerhalb	8590
insbesondere	4914
insekt	8974
insel	9833
inselgruppe	7065
inselstaat	4393
insgesamt	9467
insolvent	810
insolvenz	1857
instagram	8215
installieren	1803
instinkt	3348
institut	6453
instrument	8343
insulin	3875
int	3873
integration	4701
integrieren	805
intelligent	4396
intelligenz	7382
intendant	2482
intercityexpress	777
interessant	8226
interesse	7347
interessieren	8921
interessiert	2486
international	9352
internet	9626
internetadresse	1807
internetanbieter	1792
internetangebot	4706
internetseit	7805
internetseite	8769
intersexuell	746
interview	3983
intim	6324
investor	5827
inzidenz	5536
inzwischen	9411
ios	3290
iphone	6081
ipod	737
irgendein	3249
irgendwann	7973
irgendwelcher	2523
irgendwie	4369
irgendwo	7850
iron	2290
irren	4911
is	8821
isbn	3738
islam	9348
islamisch	8779
islamist	8378
islamistisch	5288
isolationstank	769
iss	7214
issen	8327
ja	8366
jack	6434
jacke	2932
jade	759
jagd	7712
jagen	8938
jaguare	3735
jahr	9973
jahrelang	3561
jahrestag	893
jahreszeit	8356
jahrhundert	9733
jahrtausend	4282
jahrzehnt	7015
jakob	5404
jakobsweg	2468
januar	9338
jazz	7183
je	9457
jeans	2276
jedenfalls	7054
jeder	9907
jedesmal	2960
jedoch	9714
jemals	2956
jemand	9799
jemandem	1662
jemanden	2281
jener	5914
jenseits	5401
jesus	9511
jesuskind	2251
jetzt	9901
jeweilig	2702
jeweils	8433
job	7702
jojo	4937
jongleur	1613
jonglieren	5322
journalismus	908
journalist	9146
journalistin	7244
judenfeindlichkeit	6497
judentum	8815
judikative	1622
judo	2994
jugend	5935
jugendherberge	4622
jugendliche	9423
jugendstrafe	2990
juli	9229
jung	9760
junge	9318
jungfrau	4053
jungsteinzeit	4623
jungtier	9149
juni	9300
jupiter	7623
jura	6623
juri	3655
jurist	4630
jury	8303
justiz	7053
jäger	8296
jährig	4502
jährige	4861
jährigen	1775
jähriger	1773
jährlich	6721
jüdin	8485
jüdisch	8624
jünger	4860
jürgen	4859
kabel	8477
kabine	2680
kabinett	5742
kabul	2942
kaffee	8315
kaffeebohne	2708
kaffeemaschine	2292
kaffeepflanze	1763
kaimauer	1755
kaiser	9434
kaiserin	850
kaiserreich	7197
kaiserslauter	4152
kakao	6529
kaktee	869
kalaschnikow	2964
kalb	5409
kalender	6637
kalifornien	7886
kaliningrad	1699
kalisalz	3386
kalk	6852
kalkstein	4529
kalorie	3384
kalt	9409
kalten	4873
kamel	7781
kamera	7948
kameramann	6278
kamin	2193
kammer	6887
kampf	9153
kampfflugzeug	2199
kampfhund	3136
kampfkunst	2201
kanal	9053
kanalisation	1720
kanaltunnel	1730
kanarischen	4888
kandidat	8792
kandidatin	921
kandidatinne	1713
kaninchen	1711
kannst	7579
kanone	5680
kant	4146
kante	5305
kanton	9328
kap	5948
kapelle	5387
kapitalismus	4164
kapitan	1210
kapitel	2179
kapitän	7559
kapitänin	1218
kapsel	3306
kapstadt	1691
kaputt	9490
kaputtgehen	6181
kapuzenpullover	3521
karat	4659
kardinal	8061
karfreitag	3115
karibik	7390
karibischen	2727
karikatur	5064
karin	2728
karneval	8948
karnevalsfeier	4407
karnevalsumzug	8285
karnevalswag	1771
karotte	4945
karpfe	4990
karriere	7779
karte	8729
kartoffel	8515
karton	1738
karussell	6854
kasse	4980
kassette	4979
kassettenrekord	1627
kastanie	2237
kastell	1155
kasten	6409
katamaran	5643
katastrophe	7997
kategorie	7279
kathedrale	7505
katholik	9145
katholikinn	6894
katholisch	9520
katholische	7766
katze	8932
kauen	5509
kauf	3167
kaufen	9710
kaufhaus	4464
kaufleute	7089
kaufmann	6351
kaugummi	3155
kaukasus	6039
kaum	9359
kautschuk	2588
kehlkopf	3510
kehren	6711
keilschrift	5045
kein	9938
keiner	8708
keller	8058
kennen	9758
kennenlernen	7091
kennzeichen	1823
kennzeichnen	2403
keramik	2387
kern	7843
kerze	7040
kessel	1295
ketchup	1213
kette	6342
keyboard	2388
ki	2565
kiefer	5787
kieme	4135
kies	5917
kilo	3422
kilogramm	9099
kilometer	9485
kimono	5532
kind	9887
kinderarbeit	5085
kinderarzt	2629
kinderbuch	2604
kinderbücher	5492
kindergarten	7325
kindergärt	6022
kindergärten	1128
kinderkrankheite	3775
kindermädchen	3029
kinderrecht	2639
kinderschreck	3687
kindertagesstätte	3429
kinderuni	2644
kindesmissbrauch	4739
kindheit	4433
king	6870
kinn	1165
kino	8807
kinofilm	7323
kippen	5494
kirche	9788
kirchengemeinde	1494
kirchlich	3090
kirmes	3398
kirschbaum	2365
kirsche	5238
kissen	5224
kiste	7162
kita	8538
klage	3323
klagen	7652
klang	6348
klappe	2375
klappen	7398
klar	9065
klara	1228
klasse	8721
klassenpolitik	2354
klassisch	7152
klauen	6914
klausel	1470
klavier	6487
kleben	7700
klebrig	1457
kleid	8775
kleiden	1440
kleidung	8836
kleidungsstück	5215
klein	9896
kleinbürger	3077
kleine	7794
kleinere	2626
kleinkind	3539
kleinstadt	6301
kleintransporter	2396
kleopatra	2417
kletterer	3573
klettern	8299
klicken	8956
klientin	2613
klima	9469
klimaaktivisten	2335
klimaanlage	1207
klimakonferenz	1231
klimaschutz	9223
klimawandel	9639
klimawoche	1383
klimaziel	2605
klinge	4506
klingeln	1416
klingen	8427
klopfen	2364
klose	1556
kloster	8581
klug	6418
klumpe	4524
kläranlage	2630
klären	5032
klärschlamm	1548
km	5927
kmh	3491
knall	5229
knapp	9154
kneipe	6124
knie	4976
knien	2648
knoblauch	4711
knochen	8962
knopf	5490
knorpel	5491
knospe	4953
knoten	5040
ko	1189
koala	5073
koalition	8959
koalitionspartner	4018
koalitionsvertrag	6710
kobolde	1491
koch	8480
kochen	8699
kochinstitut	8666
koffer	1160
kohl	7916
kohle	8967
kohlekraftwerk	3708
kohlekraftwerke	1163
kohlendioxid	9000
kohlenhydrat	6011
kohlenstoff	6010
kohlenstoffatom	1521
kohlenstoffdioxid	4737
kokain	7941
kokosnuss	1173
kokospalme	1198
kolbe	3693
kolibris	1164
kollege	6335
kollektivvertrag	1158
kolonialmacht	1175
kolonialreich	3815
kolonialzeit	4410
kolonie	9459
kolosseum	1179
kolumbus	8059
kombination	4640
kombinieren	1130
komet	5921
komiker	4966
komisch	5761
komitee	7151
kommen	9948
kommend	7443
kommentar	5084
kommissar	7759
kommissarin	5781
kommission	7515
kommunalwahl	7519
kommune	7862
kommunikation	6300
kommunismus	7708
kommunist	8086
kommunistisch	8423
kommunizieren	2411
kompass	1199
komplett	7517
kompliziert	7694
komponieren	6557
komponist	7872
kompost	1220
komödie	3049
konferenz	7678
konfession	3401
konflikt	7491
kongress	6515
konklave	1238
konkret	6877
konrad	6947
konservativ	7796
konservative	5068
konsonant	3054
konstantin	4446
konstantinopel	4450
konstanz	3412
kontakt	8507
kontinent	9161
konto	7553
kontrabass	2398
kontrolle	8843
kontrollieren	9086
konvention	5225
konzentrationslag	7164
konzentrationslager	7693
konzentrationslagern	3668
konzentrieren	4689
konzern	3688
konzert	9058
konzerthaus	6040
kopf	9427
kopfsalat	3161
kopfschmerz	5940
kopftuch	6405
kopie	2598
kopieren	5044
koralle	6314
korallenriff	1784
koran	8537
korb	8047
korn	6709
korpus	4114
korrupt	2220
korruption	8367
kosmonaut	2217
kostbar	2214
kosten	9404
kostenlos	8591
kostüm	6165
kot	8046
kraft	8950
kraftstoff	6844
kraftwerk	8116
kraftwerken	6679
kralle	4751
kran	7814
krank	9785
kranke	8057
krankengymnastik	1675
krankenhaus	9609
krankenhäuser	4670
krankenhäusern	5630
krankenkasse	6332
krankenpfleger	1671
krankenschwester	1166
krankenversicherung	4669
krankenwagen	5783
krankheit	9802
krankheitserreger	3458
krater	7016
kratzen	1635
kraus	6781
kraut	7022
krawall	5946
krawallen	5798
krawatte	3179
krebs	8746
krebsen	1183
kredit	6787
kreide	3173
kreis	8889
kreisel	1618
kreisen	7927
kreisfrei	4163
kreislauf	5660
kreistag	3950
kreuz	8293
kreuze	3146
kreuzen	6442
kreuzfahrt	4166
kreuzfahrtschiff	8766
kreuzotter	5474
kreuzung	7821
kreuzzug	3991
krieg	9851
kriegen	7497
krieger	5038
kriegsverbrechen	7175
kriminalität	5943
kriminell	3996
krise	6694
kristall	3123
kritik	8720
kritiker	6380
kritisch	4402
kritisieren	9090
kroate	3973
krokodil	5790
krone	9497
kronprinz	2725
krug	6031
kryptowährung	4658
kräftig	7736
kräut	2180
krönen	5061
kröte	4656
kuchen	7062
kuckuck	4155
kugel	8566
kuh	8470
kultur	9435
kulturabteilung	3141
kulturdenkmal	2172
kultureinrichtung	1717
kulturell	4515
kulturfest	2712
kulturgut	5049
kulturhauptstadt	5657
kunde	8160
kunst	9074
kunstausstellung	1728
kunstmuseum	1689
kunstmärchen	862
kunstschnee	872
kunststoff	8274
kunststück	4145
kunstvoll	1693
kunstwerk	8309
kupfer	8381
kuppel	6349
kurs	7079
kurt	3385
kurve	7189
kurz	9791
kurzarbeit	3836
kurzarbeitergeld	866
kurzem	867
kuss	5633
kutsche	6763
kyrillisch	5731
kz	6683
käfer	7726
kälte	8627
kämpfen	9566
kämpfer	7493
kängurus	5984
käse	8169
kästchen	5397
käufer	5979
köhler	835
kölsch	1767
könig	9700
königen	3357
königin	9134
königlich	4654
königreich	9357
königsberg	1769
königsfamilie	4691
königsklasse	6660
königspaar	6776
königssohn	3885
königstochter	5338
können	9986
körper	9730
körperbereichen	6291
körpergewicht	5686
körperlich	7667
körperteil	7530
körpertemperatur	4495
küche	8357
küh	4400
kühel	1734
kühl	7132
kühlen	5334
kühlschrank	7406
küken	6534
kümmern	9508
kündigen	5331
künftig	2673
künstler	8947
künstlerinn	3642
künstlerisch	2915
künstlername	2949
künstlernamen	1743
künstlich	8689
künstliche	4900
kürzen	5080
küssen	4925
küste	9465
labor	5703
lachen	7731
laden	9310
ladestation	2289
ladung	2664
lady	4930
lage	8260
lager	8638
lagerfeld	904
lagerhalle	7602
lagerhaus	4304
lagern	8078
lama	7405
lampe	7407
lan	1633
land	9974
landen	8783
landesgrenze	2684
landeshauptstadt	5082
landesinn	916
landesinneren	2255
landesminister	1600
landesmutter	4943
landesparlament	7144
landessprache	2703
landesteil	8578
landesvater	4923
landesverfassung	918
landfläche	2252
landkarte	7585
landkreis	8844
landmasse	1604
landrat	5003
landschaft	9056
landstrasse	3543
landung	4302
landwirt	7462
landwirtschaft	9373
landwirtschaftsmesse	2284
lang	9872
lange	9853
langenhorn	1666
langeweile	3919
langlauf	881
langsam	9251
langstrumpf	4092
languagetool	1678
larve	7123
las	5893
laser	3567
lassen	9741
last	5766
lastwag	2979
lastwagen	8384
latein	8656
lateinamerika	6257
lateinisch	9233
lateinischen	7842
laubbaum	4903
lauf	8877
laufen	9605
laufend	4743
laut	9118
lauten	8577
lautsprecher	3771
lava	6184
lavastaub	756
lavendel	2450
lawine	7226
le	3765
leben	9939
lebend	7003
lebendig	7221
lebensgefahr	4072
lebensgefährlich	763
lebenshilfe	4073
lebensjahr	2277
lebenslang	7220
lebensmittel	9080
lebensraum	7661
lebensweise	2312
lebenswerk	2313
leber	6766
lebewesen	9135
lebkuche	4360
leck	2318
leder	7306
lee	5376
leer	8242
leeren	770
legen	9594
legende	6657
legierung	3658
legislative	4377
lego	3302
lehm	7568
lehnen	6663
lehre	7706
lehren	6259
lehrer	9227
lehrerin	7010
lehrte	4379
leib	2296
leiblich	2526
leiche	8332
leicht	9754
leichtathletik	7042
leichte	8809
leid	5023
leiden	8833
leider	3957
leihen	7000
leine	2530
leinwand	2532
leise	6460
leisten	8920
leistung	7660
leistungskurs	740
leistungsschutzrecht	2303
leiten	9277
leiter	7032
leiterin	2543
leitplanke	3532
leitung	8252
leitzins	743
lektor	3262
lemur	5030
lenken	5034
leopard	2204
leoparde	6828
lerchen	2206
lernbehinderung	749
lernen	9724
lernschwierigkeit	3197
lernst	750
lesbe	6950
lesbisch	8072
lesen	9673
leser	7275
lesezirkel	1818
let	778
lettland	7565
letzter	9667
letztlich	5799
leuchten	7967
leuchtend	2481
leuchtturm	6903
leute	9829
lexikon	5183
libell	3345
liberal	4151
liberale	6445
liberalismus	814
licht	9341
lichtempfindlich	1587
lichtjahr	2245
lichtstrahle	4386
lieb	8895
liebe	8405
lieben	9095
lied	9542
liedtext	1278
liefern	8849
lieferung	823
lieferwage	5279
liegen	9911
liegend	3888
liga	8902
limonade	4339
lineal	5169
linie	8403
link	4904
linke	8346
linker	8441
links	7915
linksextrem	2391
linkspartei	6052
linne	1345
linse	5189
linux	3952
lippe	7437
liste	9008
liter	7741
literatur	8135
litfasssäule	798
live	3704
lizenz	2352
lkw	9606
lkwfahrer	8574
lob	3208
loben	6606
loch	8615
lockdown	6371
locken	6055
locker	4132
lockern	7818
lockerung	3450
logo	3758
lohn	8500
lohnen	5910
lok	1337
lokal	3434
lokale	1051
lokführer	3691
lokomotive	5320
lord	5120
los	8928
losgefahre	2525
losgeflogen	1318
losgehen	1058
loswerden	4944
lotse	3291
lotterie	6299
lsd	2439
luchs	7277
luft	9718
luftdruck	1344
luftfahrt	3378
luftfilter	5455
lufthansa	3890
lufthülle	1338
luftschiff	6949
luftwaffe	4014
lung	4924
lunge	8016
lungenentzündung	3683
lungenkrankheit	9245
lupe	5459
lust	5520
lustig	8557
lächeln	1283
lähmen	2346
länderspiel	1040
ländlich	2374
läng	3196
länge	7884
längenmass	1065
länglich	6347
längst	5829
längsten	5905
lärche	2876
lärm	7363
lärmschutztunnel	1294
lässt	9281
läufer	6108
läuten	2881
löch	3304
löcher	8212
löffel	5833
löschboot	2334
löschen	9290
lösegeld	1094
lösen	8884
lösung	8431
löwe	8419
löwenherz	3204
lücke	1096
lüge	7474
lügen	5562
mach	1105
machen	9960
macht	9649
machthaber	4150
mafia	7085
magazin	6386
magdeburg	7186
magen	7540
magnet	2182
magnete	2176
magnetfeld	3257
magnetisch	2189
magnetschwebebahn	2780
magnus	2773
mahlen	3218
mahlzeit	2884
mahnmal	3690
mai	9382
mais	8420
mal	9814
malaria	6085
malen	8869
maler	8409
malerei	4599
mammut	4084
man	9988
management	6235
manager	6935
managerin	4083
mancher	9915
manchmal	9845
mandarine	2253
mandel	992
mandela	5417
manege	948
manga	949
mangel	951
maniok	4372
mann	9945
mannschaft	9539
mantel	5418
manuskript	3868
marathon	6141
marathonlauf	2307
marder	4887
marihuana	5959
marine	5964
mark	7991
marke	5567
markieren	4142
markt	8396
marktplatz	6077
marktwirtschaft	4572
marmor	6735
mars	8584
marschieren	4172
martina	1415
marzipan	3170
maschine	9478
maschinenpistole	936
maser	8281
maskottchen	4159
mass	6033
massaker	3149
masse	6874
masseinheit	7734
massenmedium	2215
massenmord	6180
massenmorde	4989
massenpanik	940
massentierhaltung	1386
massnahme	6183
massstab	2784
mast	6002
material	9128
mathematik	8081
mathematiker	4576
matratze	2222
matrose	1394
matte	2404
mauer	9097
mauerfall	4948
maul	2796
maulwurf	5573
maur	4565
maurer	1430
maus	8837
maut	3053
maximal	3405
mayonnaise	4133
mechanik	2327
mechaniker	1014
mechanisch	5718
medaille	8870
median	1004
medikament	9353
medium	8942
medizin	8749
medizinisch	6097
meer	9735
meerenge	3095
meeresboden	6891
meeresbucht	974
meeresgrund	1437
meeresspiegel	8446
meeresströmung	2357
meerestier	4962
meerjungfrau	4600
meerwasser	2901
mehl	6901
mehltype	979
mehr	9956
mehrere	9860
mehrfach	5438
mehrheit	9096
mehrmals	8875
mehrwertsteuer	4463
mehrzahl	7737
meile	4970
mein	9170
meinen	9786
meinung	9595
meinungsfreiheit	8030
meisseln	2351
meist	9784
meistens	9797
meisterschaft	8347
melden	8112
meldung	2550
melodie	7322
menge	8892
mensa	2021
mensch	9990
menschengruppe	4451
menschenmenge	986
menschenrecht	9343
menschenrechtler	1946
menschenwürde	2868
menschheit	7572
menschlich	6915
menstruation	2860
merken	8834
merkmal	6499
merkur	4015
messe	9195
messehallen	1455
messen	8915
messer	9038
messgerät	2866
messing	2852
messung	4125
meta	6360
metadat	993
metal	4963
metall	9220
meteorit	6169
meteorologie	4430
meter	9721
meterlauf	1010
methan	1471
methode	7552
metropolitanraum	1009
metropolregion	1469
mich	8986
microsoft	6924
miete	7213
mieten	3772
mieter	4949
mieterverein	1006
migrant	8132
migration	6242
mikrofon	7049
mikroplastik	4531
mikroskop	5569
mikrowelle	1462
mikrowellenofen	3058
milch	9232
milchstrasse	6814
mild	6473
militär	8861
militärisch	2792
milliarde	9160
milliardär	1964
millimeter	5619
million	9867
milz	4106
minarett	1977
minderheit	7900
minderheitsregierung	1400
mindestens	9292
mindestlohn	3502
mine	5181
mineral	6985
mineralstoff	995
miniatur	1976
minister	9580
ministerin	9077
ministerium	8051
minus	5611
minute	8991
mir	8594
mischen	8070
mischung	7887
missbrauch	8903
missbrauchen	7819
missen	8149
misshandeln	4115
mississippi	6415
mist	4539
mit	9984
mitarbeiten	2772
mitarbeiter	9661
mitarbeiterin	7425
mitbestimmen	7936
mitbringen	6850
miteinander	9410
mitentscheiden	5853
mitfahren	6475
mitgefühl	1390
mitgeholfe	1903
mitglied	9702
mitgliedsland	2802
mitgliedslands	5605
mitgliedsländer	7722
mitgliedsländern	6072
mitgliedsstaat	5223
mithelfen	5809
mithilfe	4774
mitlaut	2830
mitmachen	9471
mitmacht	3929
mitmensche	1895
mitnehmen	8313
mitreden	5804
mitschreiben	8266
mitspielen	7835
mitspieler	3118
mitspieln	6883
mittag	3311
mitte	9363
mitteilen	5598
mittel	8469
mittelalter	9680
mittelalterlich	931
mittelamerika	7434
mitteldeutscher	3329
mitteleuropa	6784
mittelfinger	929
mittelgebirge	6734
mittelgross	3913
mittelland	5341
mittelmeer	9397
mittelmeere	4141
mittelpunkt	7236
mittelschicht	1558
mittelwert	2113
mitten	8099
mitternacht	4557
mittlerer	6599
mittlerweile	8368
mittwoch	8637
mittwochabend	4559
mitwählen	945
mobben	3018
mobbing	5452
mobil	3333
mobile	3334
mobiltelefon	3904
mochten	6362
mode	6465
model	2927
modell	7799
modelleisenbahn	4475
moderator	6420
moderieren	3342
modern	9289
mogelpackung	1584
molekül	5132
moleküle	5558
molotowcocktail	2758
moment	9048
mona	2106
monarch	2943
monarchie	6433
monat	9623
monatelang	959
mond	9337
monde	6429
mondfinsternis	4057
mondlandung	958
monster	5381
monsun	957
montag	8814
montagabend	2770
montagmorgen	5135
moor	8349
moore	3528
moos	950
moose	3010
mord	8459
mordversuch	947
morgen	8280
morgenland	4841
morgens	4840
moritz	5375
morus	2983
moschee	8686
mose	7112
mosel	2797
moslem	5877
motor	8841
motordrach	1017
motorrad	7754
motorradfahrer	3610
motto	3955
mount	6800
mountain	2970
mountainbike	1505
mr	4580
ms	3594
mumie	7239
mumps	3596
mund	8757
mundstück	4069
munition	7466
murmeltier	4064
muschel	7992
museum	9584
musical	7302
musik	9598
musikalisch	2144
musiker	9288
musikerinn	2992
musikfest	2882
musikfestival	7536
musikgruppe	7839
musikgruppen	1492
musikinstrument	7593
musikkonzert	6523
musikrichtung	7943
musikstil	4788
musikstück	6951
musikwettbewerb	4076
muskel	8854
muskelkraft	2826
muslim	9531
musliminn	5390
muslimisch	7911
muss	9906
musst	2885
musste	9525
muster	6222
mut	7160
mutation	6223
mutig	6114
mutter	9666
muttersprache	8453
mächtig	9682
mädchen	9610
männchen	9121
männlich	8728
märchen	9089
märtyrer	3821
märz	9432
märzrevolution	1070
mäusen	1069
möbel	8179
möbelhaus	3221
möbelstück	1089
möchten	9660
mögen	9309
möglich	9155
möglicherweise	6549
möglichkeit	8740
möglichst	9101
mönch	8007
mörder	7422
mörtel	1110
möwe	4796
mücke	1109
müde	5675
mühe	3343
mühle	4589
mühlenteich	3911
mühsam	1519
müll	8919
müllabfuhr	5398
müllcontainer	1516
müller	8094
mülltonne	5333
münden	8170
mündung	5641
münze	8702
müssen	9905
müssten	5823
mütze	3997
nabelschnur	3482
nach	9952
nachbar	8364
nachbarland	9364
nachbarländ	7743
nachbarstaat	1275
nachbauen	3195
nachdem	9026
nachdenken	8410
nacheinander	5628
nachfahre	2774
nachfolger	7208
nachfrage	1098
nachgemacht	3203
nachhaltig	4813
nachhaltigkeit	1276
nachher	4548
nachkomme	5855
nachlesen	1093
nachmachen	1266
nachmittag	3299
nachname	7720
nachricht	9709
nachrichtendienst	3394
nachschlagen	1091
nacht	9436
nachteil	7326
nachthimmel	2083
nachts	8503
nachwachsen	3732
nachweisen	6144
nackt	7205
nadal	2046
nadel	6678
nadelbaum	6682
nagel	2905
nagellack	3300
nageln	1032
nagelsmann	3649
nagetier	7012
nah	9412
nahe	3802
nahezu	4812
nahostkonflikt	6888
nahrhaft	1240
nahrung	9231
nahrungskette	1029
nahrungsmittel	8322
nahrungssuche	2757
nahverkehr	3271
name	9861
namens	7350
narbe	5449
narkose	3298
narkosearzt	1022
nasa	8222
nase	8602
nashorn	5851
nass	7180
nation	9463
national	7105
nationalfeiertag	3634
nationalhymne	1355
nationalismus	1020
nationalist	4020
nationalmannschaft	8975
nationalmannschaften	8551
nationalpark	8443
nationalrat	5197
nationalsozialismus	8412
nationalsozialisten	8735
nationalsozialistisch	5733
nationalsozialistische	5271
nationalversammlung	5192
nato	9110
natur	9577
naturgesetz	3207
naturkatastrophe	1349
naturkatastrophen	5257
naturpark	1052
naturschutz	4021
naturschutzgebiet	7373
naturschützer	2011
naturwissenschaft	5255
natürlich	8969
navi	1370
navigation	1062
nazideutschland	1061
nazizeit	7555
neandertaler	6868
neapel	6246
nebel	6245
neben	9184
nebenbei	1364
nebeneinander	7118
nebenfluss	3423
nebst	6938
negativ	8101
nehmen	9740
neid	3279
nein	5550
nektar	4122
nennen	9934
neonazi	6825
neptun	5485
nerd	1063
nerv	3678
nervenzelle	2513
nest	8626
nett	1336
netz	8623
netzhaut	4130
netzneutralität	3294
netzwerk	7744
netzwerkum	4698
neu	9931
neugierig	3212
neuigkeit	2537
neuinfektionen	923
neujahr	6007
neun	8536
neunter	2122
neutral	6375
neutron	2114
neuwahl	3418
neuwerk	2484
neuzeit	8548
news	5252
newsletter	4108
nibelunge	3245
nibelungenlied	3721
nicht	9979
nichts	9618
nickel	794
nie	9522
nieder	5017
niederlage	4759
niederschlag	4789
niederschlagen	3248
niedrig	8172
niemals	5842
niemand	9545
niere	7229
niesen	3205
nikotin	4173
nirgends	3283
nirgendwo	813
nobel	6341
nobelpreis	8075
nobelpreise	2499
noch	9953
nochmal	6306
nochmals	5950
nomade	6489
nomen	6370
nominieren	2504
non	817
nonne	5511
nord	8476
nordafrika	6878
nordamerika	9136
norden	9674
nordeuropa	7149
nordhalbkugel	5848
nordisch	4283
nordische	1866
nordost	4043
nordosten	7513
nordostseekanal	7558
nordpol	8035
nordweste	7611
nordwestlich	3264
norma	4048
normal	9430
normalerweise	9375
not	7207
notar	1793
notausgang	808
note	6988
notfall	6001
notfallplan	1873
notfalls	1804
notruf	4294
notwendig	6227
nova	748
november	9335
novemberrevolution	1854
nsa	6661
nsdap	7528
nudel	6193
nulle	2540
nummer	8276
nun	9440
nur	9947
nuss	1849
nutzen	9569
nutzer	5547
nutzerin	1839
nächster	9537
nägel	4617
nähe	9763
nähen	2545
nähern	1801
nährstoff	6765
nährstoffen	1800
nämlich	9884
nördlich	9131
nötig	6611
nützen	6296
nützlich	7586
oase	5830
ob	9744
obdachlos	1811
obdachlose	8177
obelix	3618
oben	9377
oberer	8865
oberfläche	7940
oberhalb	3220
oberhaupt	5702
oberkörper	3783
oberleitung	3537
oberseite	3747
oberteil	3566
objekt	3286
obst	8416
obstbaum	4835
obwohl	9361
oder	9981
ofen	6816
offen	8933
offenbar	2023
office	4482
offiziell	7847
offizier	4174
oft	9900
oftmals	6500
oh	772
ohne	9722
ohr	8355
ohrenschmalz	3705
oktober	9445
oktoberfest	5955
old	4690
oligarch	766
olive	4827
olivenbaum	2440
olympia	4075
olympiastadion	1798
olympics	7699
olympisch	9472
olympische	7995
oma	2070
omikron	3662
one	4078
onkel	6056
online	6934
opec	1835
oper	8847
opera	826
operation	7512
operieren	6755
opernhaus	892
opfer	9085
opfern	4068
opposition	8571
optik	890
orang	4454
orange	5912
orangenhaut	2045
orangutan	6744
orchester	7969
orden	6553
ordnen	5240
ordnung	8633
organ	8832
organisation	9354
organisator	6480
organisieren	9072
organization	6205
orgel	6310
orient	6907
orientieren	6196
original	2976
orkan	3576
ort	9837
orthodox	7551
orthodoxe	6592
ortschaft	4676
ost	5370
ostblock	4093
osten	9656
osterfeuer	1673
ostern	8178
ostersonntag	4456
osteuropa	9270
ostküste	5083
ostteil	2695
oval	879
ozean	9250
ozeanien	6591
ozon	5205
paar	9208
paaren	7074
paarung	7117
paarungszeit	877
packen	4776
packung	2981
page	2700
paket	5674
palast	7634
palette	4061
palindrom	2146
palme	7114
palmöl	3535
panda	2138
pandemie	8434
panik	915
panne	4777
panopticon	914
panther	913
panzer	8263
papagei	4727
papier	9327
papiertiger	1629
pappe	2158
paprika	4523
papst	9425
papyrus	905
parade	2661
paradies	5500
paragraph	1624
parallel	2093
paralympics	8153
paralympisch	5237
paralympischen	7283
parasit	5916
park	9179
parken	4028
parkhaus	4026
parkinson	900
parkplatz	6012
parlament	9719
parlamentarisch	5924
parlamentswahl	6769
partei	9878
parteifarbe	4768
parteilos	897
parteimitglied	1742
partner	7075
partnerschaft	6185
partnerstadt	847
party	6015
partys	5477
pass	6622
passagier	6774
passen	9130
passend	6910
passieren	9751
passiern	7788
passiv	3627
passwort	4051
patent	4702
patient	8732
patriarch	848
patrone	3657
pause	8245
pazifik	6918
pazifisch	7817
pc	4668
pcrtest	4785
pech	1900
pedal	4045
pendel	1882
peng	1884
penis	7188
people	3907
per	7270
perfekt	1885
pergament	6864
perle	5358
perlmutt	861
permafrostboden	4280
person	9779
personal	2749
personalausweis	4315
personengruppe	2920
persönlich	4641
persönlichkeit	5006
perücke	1702
pessach	868
pessachfest	1701
pest	6221
petersilie	3833
petflasch	2754
petition	6526
pfadfinder	1688
pfandflasche	1727
pfanne	5597
pfarrer	8196
pfeffer	4385
pfeife	5179
pfeil	6271
pferd	9200
pfingst	3140
pfirsich	1112
pflanze	9750
pflanzen	7051
pflanzenart	7844
pflanzenfresser	1710
pflanzenschutzmittel	1224
pflege	5110
pflegeheim	7218
pflegeheimen	4361
pflegen	6863
pfleger	5826
pflicht	7550
pflug	5989
pflücken	5348
pflügen	1221
pfot	1696
pfund	4171
pharao	8079
philosoph	7609
philosophie	6841
phosphat	3122
photosynthese	2730
physik	8556
physikalisches	1149
physiker	6767
physiotherapie	1736
pi	4003
piktogramm	5461
pilger	5837
pilgerfahrt	3175
pilgern	1630
pilgerort	3923
pille	7259
pilot	8102
pilz	7432
pilzen	7981
pinguine	6057
pink	1609
pinneberg	3460
pipeline	5748
pippi	6432
pirat	7774
pisa	1638
pistole	7677
pizza	7756
pkw	5191
plage	1187
plakat	6125
plan	8916
planen	8995
planet	9402
planetarium	5439
plankton	5588
plantage	7665
planung	1126
plastik	8110
plastikmüll	2595
plastiktüt	1125
plato	1120
plattdeutsch	3157
platte	8127
plattform	3158
platz	9654
platzen	4111
platzverweis	1132
plaza	1809
pleite	4573
pluto	5571
plättchen	2599
plötzlich	8888
plündern	4500
po	6150
pokal	8015
pokalsieger	1780
pokemon	3726
poker	4118
pol	2108
polarfüchse	3495
polargebiet	1996
polarkreis	3104
polarlichter	4105
pole	1802
polio	1954
politik	9690
politiker	9852
politikerin	9406
politisch	9486
polizei	9909
polizeiauto	5951
polizeieinsatz	9025
polizeischule	3414
polizist	9600
polizistin	5612
polizistinn	2559
polle	5744
polo	6113
polster	2561
polterabend	1209
pommes	5352
pony	1960
pop	5907
popmusik	6060
populist	4353
porzellan	1150
posaune	2573
position	2576
positiv	5784
post	8137
posten	1376
pragmatik	1180
praktikum	2634
praktisch	6548
prallen	4388
praxis	6048
predigen	3776
predigt	2054
preis	9679
preisbremse	1192
preisverleihung	4919
premiere	5540
premierminister	6959
premierministerin	3437
prepper	1195
presse	5024
pressefreiheit	8128
pressekonferenz	2637
pressen	6664
pretoria	3788
priester	8897
primzahle	1162
prinz	8717
prinzessin	5991
privat	8033
privatsend	1511
privatsphäre	4123
pro	8945
probe	3081
probieren	3696
problem	9711
produkt	9298
produktion	4298
produzent	2017
produzieren	8714
professor	7701
profi	4939
profifussball	4313
profitieren	2012
programm	9088
programmieren	3061
projekt	7808
prominent	5074
pronomus	2037
propaganda	5988
propeller	3087
prophet	7949
prostituierter	3711
prostitution	3088
protein	5671
protektionismus	1177
protest	9244
protestant	7232
protestantisch	3774
protestieren	8745
provinz	7974
provozieren	1184
proxyserver	2162
prozent	9063
prozess	3493
prächtig	4858
prädikat	3094
prägen	6486
präposition	2131
präsident	9739
präsidentenwahl	2102
präsidentin	6671
präsidentschaftswahl	4679
präsidialsystem	3097
prüfen	9157
prüfung	7914
prügeln	3463
pseudonym	1117
psychiatrie	4521
psychisch	7595
psychologe	4011
psychologie	5060
pub	1116
pubertät	6690
public	3092
publikum	6598
pullover	3364
puls	3842
pulver	6537
pumas	3070
pumpe	6676
pumpen	7098
punk	2607
punkt	9394
puppe	7908
puppenkist	1968
putsch	6669
putzen	3638
putzmittel	1214
puzzle	2615
pyramide	7570
python	4616
päckchen	3854
pädagogik	7028
pässe	1479
pünktlich	2618
quader	3967
quadrat	4406
quadratkilometer	9192
quadratmeter	1208
qualifikation	7285
qualifikationsspiele	6768
qualifizieren	2622
qualität	1917
qualle	5482
quarantäne	8753
quartal	2623
quarz	5350
quecksilber	5925
queen	5926
quelle	8106
quer	6353
querflöte	1951
quälen	6633
rabbiner	4601
rabe	2170
rache	3355
racket	3637
raclette	2627
rad	8333
radar	5368
radfahren	1948
radfahrer	7503
radiergummi	4249
radikal	6013
radio	9006
radioaktiv	8191
radioaktives	4756
radioaktivität	5510
radiopreis	1433
radiosend	6009
radiosender	5077
radiowelle	4968
radrenne	7303
radsport	1931
ragen	3901
rahmen	3341
rakete	8999
rampe	5637
ramsch	1413
ranch	1152
rand	8054
rap	3100
rapper	6575
raps	1127
rasch	7471
rasen	4271
rasieren	6680
rasse	8331
rassentrennung	1504
rassismus	8883
rassist	7355
rassistisch	7170
rat	8140
raten	4286
rathaus	8773
ratte	7820
rattenfänger	6137
rau	5037
rauben	3427
raubtier	6967
raubtieren	1262
rauch	8868
rauchen	8219
raucher	1159
rauchvergiftung	3034
rauchwolke	1288
raum	9084
raumfahrer	7155
raumfahrt	6073
raumkapsel	3807
raumschiff	7216
raumsonde	3800
raumstation	7998
raupe	5881
raus	6707
rausgehen	4334
rausnehmen	4724
raute	1363
reagieren	7883
reaktion	5911
reaktor	3027
real	7533
rebell	3737
rebellion	1893
rechnen	8375
rechnung	7445
recht	9736
rechte	3057
rechteck	1987
rechter	8467
rechtlich	1936
rechts	8066
rechtsanwalt	5999
rechtschreibung	3809
rechtsextrem	8278
rechtsextreme	6792
rechtsextremismus	3050
rechtspopulisten	1280
rechtspopulistinn	1232
rechtsstaat	5613
rechtsverbindlich	4176
rechtswissenschaft	5160
rechtzeitig	7069
recyceln	1939
recycling	5707
recyclinghof	3791
red	2554
redaktion	3103
rede	9044
reden	9156
redenschreiber	1204
redestab	1985
redewendung	7994
reederei	2575
reedereie	1787
referendum	3496
reflektor	1211
reform	6430
reformation	7654
reformationstag	4575
reformator	5151
reformieren	2137
reformiert	7191
reformierte	1821
regal	1828
regel	9807
regelmässig	8662
regeln	8026
regelndie	4221
regelung	3156
regen	9148
regenbog	5162
regenschirm	1845
regenwald	8858
regenwasser	4468
regenwurm	5364
regenwürmer	4586
regenzeit	6121
regie	6559
regieren	9599
regierend	2059
regierung	9866
regierungsbezirk	2067
regierungschef	9342
regierungschefin	5711
regierungserklärung	5747
regierungsform	2034
regierungspartei	2584
region	9326
regisseur	9043
regisseurin	4778
registrieren	1185
regnen	9027
reh	7340
reiben	6417
reibung	1118
reich	9737
reiche	7082
reichelt	4555
reichen	9491
reichsbürger	3477
reichskanzler	6344
reichspogromnacht	1892
reichspräsident	4496
reichsstadt	6436
reichstag	6313
reichtum	7241
reif	6512
reifen	7537
reihe	7834
reihenfolge	7393
reihenhaus	5372
reimen	1974
rein	8442
reinhard	3972
reinigen	7590
reinigung	3111
reinigungsmittel	4237
reis	7771
reise	9317
reisen	9408
reisend	7204
reisepass	5719
reisewarnung	5125
reissen	5499
reiten	6772
reiter	4327
reizgas	3365
rekord	7938
rekordmeister	856
relativ	3368
relativitätstheorie	5096
relegation	3143
relegationsspiel	2755
relief	3133
religion	9625
religionsgemeinschaften	6414
religionsschüler	1694
religiös	7809
reliquie	6116
renaissance	6808
rene	1698
rennauto	3837
rennen	8848
rennfahrer	4312
rennstrecke	871
renovieren	1718
rente	7532
rentenversicherung	5089
rentier	7087
rentner	4624
reparatur	8214
reparieren	9079
reportag	829
reporter	5440
repräsentantenhaus	4228
reptilium	7942
republik	9500
republikaner	7651
republikanisch	6873
reserve	831
resolution	2938
respekt	3354
respektieren	3882
ressource	838
rest	8914
restaurant	9124
restlich	2944
restmüll	2678
retten	9032
retter	3877
rettungsboot	1772
rettungsdienst	2947
rettungshubschrauber	2948
rettungskräft	2677
rettungsschwimmer	4265
rettungswagen	6203
revier	5526
revolution	8788
revolutionär	843
rezept	7266
rhythmus	4999
richten	8445
richter	9203
richterin	8065
richtig	9717
richtige	2663
richtung	9217
riechen	7616
riese	4507
riesenrad	3914
riesig	9205
rind	8456
rinde	7179
ring	8770
ringelnatter	5008
rippe	2142
risiko	4728
risikogebiet	7824
riss	4697
ritter	8152
ritual	3602
ritzen	2148
rivale	4242
robbe	2036
robben	7038
robbie	4276
roboter	8605
rochen	2696
rock	7968
rockband	4203
rockmusik	7295
rocknroll	1668
rode	2007
rodel	4201
roden	2980
roger	4459
rogge	3579
roh	5682
rohr	8228
rohstoff	8321
rolf	4198
rolle	9119
rollen	6189
roller	5885
rolling	4783
rollstuhl	7482
rollstuhlbasketball	2688
rollstuhlfahrer	4775
roman	9177
romanik	2978
romanisch	6197
romantik	3609
rosa	7354
rose	5825
rosenmontag	4762
rosskastanie	2465
rost	5210
rosten	5050
rot	9378
rotbraun	2057
rote	5200
rotfüchse	1656
roth	2118
rothirsch	5819
route	2454
rubel	3629
rucksack	760
rudel	6955
ruder	762
ruderer	3716
rudern	4213
ruderrenn	6857
ruf	4828
rufen	8992
rugby	4472
ruhe	7024
ruhen	3647
ruhig	6535
ruine	7240
rumpf	4834
rund	9524
runde	8646
rundfunk	8230
rundfunkanstalten	3562
rundherum	5737
rune	4263
runter	3797
russ	1822
russe	7165
rutschen	7592
rutschig	733
rächen	2159
räd	3614
rätoromanisch	2092
rätsel	3287
rätseln	2091
räuber	7073
räumen	4399
röhrche	742
röhre	6651
römerzeit	5816
römisch	9039
römischen	8651
römischkatholische	3235
röntgenstrahlen	1871
rötlich	3549
rücken	8175
rückenmark	1806
rückgängig	1829
rückkehr	4275
rückseite	2485
rücksicht	1874
rückspiel	751
rücktritt	5071
rückwärts	5070
rüssel	3263
sache	9757
sachkundenachweis	818
sack	6720
saft	6815
sage	7749
sagen	9967
sahara	6948
sahelzone	4704
saison	8879
saite	7985
salafist	1253
salat	4317
salbe	3469
salbei	2503
salz	8096
salzig	4740
salzsee	3949
salzwasser	6495
sam	1886
same	8838
samenzelle	5608
sammeln	9304
sammler	2487
sammlung	6992
samstag	7320
sand	8952
sandkörner	1046
sandstrand	4389
sankt	8088
sanktion	5178
santa	4801
santos	2518
sardinie	1057
sarg	6505
satellit	8105
satire	6338
satt	3231
sattel	1366
sattelzug	4809
saturn	6281
satz	9256
satzteil	1042
sauber	8404
sauberes	7063
sauberkeit	3238
sauer	6038
sauerkraut	3897
sauerstoff	8835
saugen	7562
sauna	5496
saxophon	1021
sbahn	5730
sbahne	6030
sbahnhof	2075
sbahnstreck	1024
schach	6156
schachbrett	2838
schachspiel	2759
schacht	1039
schade	1030
schaden	9514
schadstoff	8730
schaf	8743
schaffen	9398
schale	7401
schalen	3424
schall	4784
schallplatte	5693
schallwelle	4815
schalten	2076
schalter	2795
schaltjahr	5328
schanze	1099
scharf	7548
schatten	6160
schatz	7391
schauen	9007
schaufeln	3826
schaufenster	4204
schauspiel	3278
schauspieler	9389
schauspielerin	8134
schauspielerinne	6233
scheibe	8725
scheide	7141
scheiden	6673
schein	5793
scheinen	7982
scheitern	2035
schenken	7487
scheren	3295
scherz	2032
scheuer	4791
scheune	6686
schicht	8458
schicken	9597
schieben	7877
schiedsrichter	7495
schief	5388
schiene	8352
schiessen	9438
schiesserei	6172
schiff	9813
schifffahrt	3667
schild	7327
schilddrüse	2134
schildkröt	2953
schilf	1016
schimmel	2760
schimmelpilz	4574
schimpanse	7544
schimpfwort	4578
schimpfwört	955
schlacht	8290
schlachten	6140
schlachthof	6812
schlaf	5875
schlafen	9060
schlafplatz	2100
schlag	4254
schlaganfall	6725
schlagen	9385
schlager	6173
schlagermusik	963
schlagzeug	6626
schlamm	6166
schlange	8323
schlank	5246
schlaraffenland	1546
schlau	5864
schlauch	5768
schlecht	9773
schlechte	3840
schlechtes	4425
schleier	5457
schleim	4217
schleimhaut	2811
schlepper	4821
schleu	1411
schleudern	7034
schleuse	7721
schleuser	6658
schliemann	5126
schliessen	9582
schliesslich	9413
schlimm	9617
schlimme	8796
schlimmes	7021
schlitten	6892
schlittschuhe	1425
schloss	9239
schlucht	6396
schlucken	6783
schluss	8003
schläger	4549
schlägerei	4764
schlösser	6659
schlüpfen	7257
schlüssel	6847
schmal	7935
schmecken	7679
schmelzen	5236
schmerz	8576
schmerzhaft	1402
schmetterling	7181
schmied	5468
schmieden	970
schmieren	3505
schmilzen	7071
schmuck	8268
schmuckstück	996
schmuggeln	3163
schmutz	4498
schmutzig	8267
schmücken	5564
schnabel	7787
schnabeltiere	1481
schnauze	4986
schnecke	8071
schnee	9111
schneeflocke	3023
schneekanone	3448
schneemann	3025
schneewittchen	4435
schneiden	7928
schneider	4232
schneien	3037
schnell	9817
schnellrestaurant	3441
schnelltest	1013
schnelsen	2906
schnitt	4273
schnitzen	4269
schnupfen	4270
schnur	6601
schnäbel	971
schoah	5583
schock	1438
schoduvel	1918
schokolade	7097
schon	9922
schonen	1454
schornstein	981
schornsteinfeger	2893
schoss	987
schrank	1942
schranke	6225
schraube	5216
schrauben	990
schrecklich	6805
schrei	3074
schreiben	9842
schreiber	3525
schreibmaschine	2886
schreibprogramm	4188
schreibweise	2408
schreien	1450
schrift	9073
schriftlich	3356
schriftrolle	982
schriftsprache	991
schriftsteller	9234
schriftstellerin	7172
schriftstück	4552
schriftzeiche	6089
schriftzug	1436
schritt	8308
schräg	3497
schubert	4209
schuh	8239
schulabschluss	5582
schulbus	6131
schuld	9222
schuldig	4424
schule	9792
schulfach	3022
schulkind	4558
schulklasse	6757
schullandheim	6143
schulleiter	1002
schulpflicht	5099
schulte	2392
schulter	6604
schulzeit	997
schummeln	1401
schuppe	4476
schuss	3730
schusswaffe	2765
schuster	1395
schutz	8987
schutzgebiet	969
schutzkleidung	3151
schutzmaske	7335
schwach	8461
schwalbe	3177
schwan	8330
schwanger	8183
schwangerschaft	7923
schwanz	7931
schwarz	9401
schwarze	8464
schwarzen	7925
schwarzer	3114
schwebefähre	3314
schweben	5738
schweigen	1483
schwein	8719
schweinepest	2195
schweiss	965
schweiz	9752
schweizer	8816
schweizerisch	5145
schwellenland	1544
schwemmen	1543
schwenken	1542
schwer	9850
schwerelosigkeit	964
schweriner	1585
schwerkraft	7439
schwermetall	5422
schwert	7362
schwertransporter	7560
schwertwal	960
schwertwale	2827
schwester	8145
schwierig	9583
schwierigkeit	7831
schwimmbad	5694
schwimmbäd	4212
schwimmbäder	4371
schwimmen	9173
schwimmend	2259
schwimmer	4603
schwingen	6628
schwingung	6900
schwitzen	3572
schwommen	4854
schwul	7264
schwule	7254
schwuler	5416
schwächen	2971
schädel	5699
schädigen	5616
schädlich	8201
schädlinge	3613
schäfer	5129
schäl	2975
schämen	4370
schätzen	6551
schön	9479
schönheit	5102
schüler	9475
schülerin	7760
schüssel	2856
schütten	4591
schütze	2288
schützen	9694
science	3749
sciencefiction	5443
sechs	9213
sechseckig	1067
sechseläut	1100
sechsmal	2846
sechster	4190
sechzig	1523
see	9541
seefahrer	8240
seefahrt	3892
seegurken	3825
seehund	7056
seehundkind	2405
seehundstation	5807
seejungfrau	2393
seeland	1271
seele	7523
seeler	5464
seeleute	5599
seelisch	4196
seenotkreuzer	6292
seenotretter	1038
seenplatte	2899
seerose	1033
seeräuber	1260
seestern	3834
seeweg	3273
segeberg	5114
segel	5521
segelboot	2402
segelflugzeug	6419
segeln	6421
segelregatt	3848
segelschiff	8053
segler	2414
segnen	1351
sehbehinderung	1298
sehen	9897
sehenswürdigkeit	8726
sehr	9959
seide	3968
seidenstrasse	3470
seife	4260
seil	7791
seilbahn	4344
seilbahne	2361
seile	3191
seilen	1361
sein	9999
seit	9893
seitdem	9285
seite	9636
seither	7924
seitlich	1306
sekte	5522
sekunde	8126
selber	9564
selbst	9803
selbstbestimmung	2381
selbstmord	1045
selbstständig	4942
selbstverständlich	3685
selbständig	6483
selfie	799
selten	9420
seltsam	6775
senat	7588
senator	7329
senden	8216
sender	8830
sendung	8922
senf	792
senken	5274
senkrecht	3232
senne	790
sensor	2390
september	9271
serie	8842
server	1297
service	3466
sesamstrasse	4905
sessel	1254
setzen	9458
seuche	4908
sex	8820
sexismus	6469
sexistisch	3256
sexualisiert	802
sexualität	5285
sexuell	8908
sexueller	8438
shakespeare	2219
sherlock	4699
sherpa	2477
shoah	4700
show	6617
shuttle	779
sich	9978
sicher	9451
sicherheit	9265
sicherheitsrat	6770
sichern	8447
sicherung	745
sicherungsverwahrung	2192
sicht	5537
sichtbar	7441
sichtweise	2517
sie	9991
sieben	9062
siebter	4760
siedeln	7011
siedler	6655
siedlung	7714
sieg	8202
siege	2322
siegel	6367
siegen	6103
sieger	7509
siegermacht	7046
signal	7864
silbe	6256
silber	8244
silberfischche	801
silbermedaill	825
silbermedaille	6488
silbern	5293
silo	5973
silva	3523
silvester	6684
silvesternacht	891
simbabwe	5892
simpson	2685
singapur	5263
singen	9273
singvogel	3581
sinken	8251
sinn	7747
sinnbild	1682
sinnesorgan	882
sinnvoll	4921
sir	878
sirene	2699
siri	2282
sirup	2283
sitar	876
sitin	885
sitte	2285
situation	7917
sitz	8790
sitzen	9529
sitzplatz	4306
sitzung	7416
skandal	5996
skelett	8141
ski	5990
skier	3545
skifahren	5296
skifahrer	5321
skilanglauf	5072
skipist	3000
skispring	5814
skispringer	2660
skiwm	7656
sklave	8936
sklaverei	7596
skorpione	4928
skulptur	5670
skyline	903
slam	4927
smartphone	8388
sms	5645
so	9963
sobald	6614
social	3896
socke	5086
sockel	845
sockenhalter	844
sodass	6629
sofort	8907
software	8509
sogar	9774
sogenannter	9174
sohn	9278
soja	4614
soko	839
solange	7125
solaranlage	5745
solcher	9753
soldat	9725
soldatin	7664
solidarität	2291
sollen	9940
solo	832
somit	8747
sommer	9567
sommerferien	2743
sommerspiel	6627
sommersportart	2298
sommerzeit	5408
sonde	6884
sondern	9794
sondierungsgespräch	865
song	7265
sonnabend	7898
sonne	9591
sonnenaufgang	4874
sonnenbrand	6023
sonnenenergie	4512
sonnenfinsternis	7127
sonnenlicht	6946
sonnenschein	1705
sonnenstrahl	6005
sonnensystem	8029
sonnenuntergang	4876
sonnig	2202
sonntag	9224
sonntagabend	1722
sonntagsfrage	4891
sonst	9455
sonstig	3850
sorge	8354
sorgen	9562
sorgfältig	4431
sorte	7980
sortieren	3975
sosse	4224
south	1216
souvenir	4403
soviel	7431
soweit	4880
sowie	9286
sowieso	6290
sowohl	8407
sozial	8963
sozialdemokrat	7238
sozialdemokratisch	8390
sozialdemokratische	5314
soziales	7625
sozialhilfe	2231
sozialismus	7508
sozialist	5059
sozialistisch	5648
sozialpolitik	3174
sozialstaat	2579
sozialverbände	2580
sozialversicherung	5654
sozialwohnung	1182
sozusagen	3181
space	5488
spalte	6820
spalten	6215
spannen	4466
spannend	6740
spannung	6644
sparbuch	2213
sparen	8722
spass	8479
spazieren	2590
specht	1123
special	7690
speer	4440
speichel	2378
speicher	3160
speichern	9012
speise	7067
speiseeis	1860
speiseplan	2578
spektakulär	1222
spende	6400
spenden	8220
spendenaktion	4687
spendentag	3792
spermium	3043
sperre	1274
sperren	9576
sperrfrist	1219
sperrung	8314
sperrwerk	4627
spezialität	1368
speziell	8337
spickzettel	5222
spiderman	1309
spiegel	7761
spiel	9841
spielautomat	2345
spielen	9881
spieler	9698
spielerin	1339
spielerinne	8254
spielfeld	6867
spielfigur	3028
spielfilm	5533
spielkonsol	1249
spielplatz	5776
spielsache	1244
spieltag	1191
spielzeit	1176
spielzeug	7376
spin	5553
spinat	5209
spindel	2640
spinnentier	1168
spion	7542
spionage	4973
spionieren	2376
spitz	5930
spitze	8194
spitzen	1379
spitzenkandidat	5512
spitzname	4246
spitznamen	5696
spoiler	3773
sponsor	3452
sport	9306
sportart	9258
sportarten	8553
sportbund	4241
sportchef	6219
sportereignis	1575
sportfest	3494
sportgerät	2360
sporthalle	4967
sportl	7163
sportler	9678
sportlerin	1134
sportlerinn	9024
sportlich	3327
sportplatz	2367
sportturnier	7343
sportveranstaltung	5495
sportverein	8334
sportwettbewerb	7719
sportwettkampf	8750
sprache	9883
sprachwissenschaftler	3931
sprechen	9918
sprechend	1215
sprecher	8535
sprecherin	4257
sprechgesang	1441
spree	1443
sprengstoff	5929
sprengung	6920
sprich	9574
sprichwort	3811
sprichwört	731
springen	8683
springer	2625
spritze	7876
spritzen	7161
spruch	6017
sprung	5580
sprühen	1387
sprünge	2608
spucke	2606
spur	7742
spät	9869
spätestens	5029
spätzle	2653
spülen	5746
spülmaschine	5226
spüren	7527
staat	9902
staatlich	6130
staatsanwalt	7934
staatsanwaltschaft	7697
staatsanwälte	1524
staatsanwältin	3697
staatsbürger	6441
staatsbürgerschaft	6618
staatschef	8668
staatsform	3431
staatsgebiet	2379
staatsoberhaupt	8658
staatspräsident	5481
stab	6043
stabil	7438
stachel	6982
stachelschwein	1356
stadion	8982
stadt	9942
stadtbahn	2386
stadtbild	2394
stadtgebiet	2401
stadtmauer	7757
stadtmusikant	3105
stadtname	2601
stadtpark	2418
stadtrat	7686
stadtrecht	651
stadtstaat	5542
stadtteil	9518
stadttor	3695
stadtverwaltung	2248
stadtviertel	3817
stadtzentrum	3165
staffel	2226
stahl	8495
stahlwerk	1778
stall	6925
stamm	8774
stammen	9586
stan	3183
stand	7854
standardsprache	5502
stange	7379
star	7381
stark	9772
starke	4000
starr	4211
stars	4208
start	7261
startbahn	2723
starten	8800
station	7792
statt	9544
stattdessen	8506
stattfinden	8613
statue	8864
status	629
stau	9057
staub	7227
staubsauger	2197
staudamm	6528
stauen	3127
stausee	4526
stechen	6624
steckdose	5405
stecken	9476
stecker	2305
stehen	9886
stehend	2940
stehlen	8808
steif	3464
steigen	9383
steiger	1774
steil	7045
stein	9347
steinkohle	588
steinzeit	8455
stelle	9487
stellen	9655
stellinge	583
stellung	2260
stellvertretend	4200
stellvertreter	5626
stempel	3012
steppe	7490
sterben	9890
stern	9162
sternbild	4996
sternschnuppe	3964
stets	5012
steuer	9294
steuergeld	589
steuern	7411
steve	5254
steven	1659
stich	4748
stichwahl	5033
stick	607
stickstoff	2434
stickstoffdioxid	2957
stiefel	1649
stiefmutter	2982
stiefvater	3799
stiehlen	2280
stiel	3564
stier	7662
stierkampf	5026
stierlauf	2268
stift	2985
stiftung	7409
stil	7716
still	5836
stille	1868
stilllegen	1870
stimmbruch	599
stimme	9621
stimmen	9264
stimmrecht	598
stimmung	4734
stimmzettel	8204
stirn	2519
stirnlampe	2295
stochen	2520
stock	7133
stockwerk	5884
stoff	9499
stoffbahn	1838
stoffwechsel	640
stolperstein	6756
stolz	7475
stoppelmarkt	3210
stoppen	7972
stossen	8643
stosszähn	3887
strafe	9551
strafgerichtshof	703
strafmassnahmen	4398
strafprozess	1865
straftat	8625
straftäter	4913
strahle	8133
strahlen	6476
strahlung	7341
strand	8994
strasse	9815
strassenbahn	7762
strassenrand	696
strassenverkehr	4324
strauss	3969
stream	7951
streaming	1332
strecke	9282
strecken	3699
street	3498
streich	4234
streichen	6789
streichinstrument	4941
streife	8383
streifen	1325
streifenhörnche	3409
streik	9386
streiken	8040
streikrecht	4940
streit	9705
streiten	9109
streitfälle	7159
streng	9549
stress	3269
streubomb	1308
streuen	1310
strich	5121
stroh	5325
strohmann	726
strom	9643
stromabrechnung	1359
stromausfall	1377
stromleitung	6943
stromstärke	1286
sträucher	2458
sträuchern	3219
strömen	6098
strömung	6305
student	8661
studentin	3281
studie	8197
studieren	9428
studierend	6698
studio	4357
studium	8199
stufe	6980
stuhl	6845
stummfilm	5111
stunde	9554
stundenkilometer	5902
sturm	9261
sturmflut	7930
sturz	3454
städtchen	4192
städtepartnerschaft	714
stämme	3361
ständig	8949
stängel	6069
stärke	7136
stärken	2837
stätte	668
störche	2804
stören	8032
störung	7501
stück	9367
stückchen	4395
stürme	8744
stürmen	5466
stürmer	6107
stürzen	8593
stütze	2894
stützen	3725
substantiv	9034
subtropen	5127
suche	7297
suchen	9658
suchmaschin	655
sucht	670
suisse	2256
sultan	2993
sumpf	685
sumpfgebiet	2171
sumpfig	2315
super	6834
superfood	3905
superheld	2300
superman	4560
supermarkt	8685
supermärkten	4202
superstar	2228
suppe	2821
surfen	4301
surrealismus	2190
suv	4004
svp	676
symbol	8585
symbolisch	2763
symptom	5429
synagoge	8620
syndrom	7185
system	8301
szene	5714
sänger	8894
sängerin	7833
säugen	4602
säugetier	9068
säule	6872
säure	5122
süchtig	6112
süd	2875
südamerika	9259
süddeutschland	4584
süden	9677
südeuropa	8372
südhalbkugel	6372
südlich	9114
südost	6093
südostasien	3663
südosten	7905
südosteuropa	4541
südpol	7301
südstaat	6280
südwest	1921
südwesten	7192
südwestlich	1442
sümpfe	2859
sünde	7037
süss	7092
süssgräser	3442
süssigkeit	6733
süsswasser	5592
tabak	8008
tabelle	4486
tablet	1988
tablette	6939
tafel	8312
tag	9859
tagebau	3777
tagebuch	1961
tagen	5621
tages	5419
tageslicht	3675
tagesschau	4363
tagsüber	6986
tal	8048
talent	2828
taliban	8018
talibanmiliz	1896
talmud	2840
tank	4453
tanken	2810
tanker	5622
tanklager	2002
tanklaster	3858
tankschiff	3860
tankstelle	7027
tanne	6446
tante	5525
tanz	7137
tanzen	8302
tanzgrupp	1555
tapfer	1538
tarif	1547
tarifvertrag	6524
tasche	7516
taschengeld	2941
taschenlampe	2097
tasse	1582
tastatur	5131
taste	5202
tasten	2105
tat	9029
tatort	5777
tatsache	4579
tatsächlich	9011
tattoo	2154
taube	7041
tauchen	7316
taucher	6047
taufe	7709
taufen	7863
tauschen	7392
tausend	9225
tausendfüsser	4571
taxi	7140
team	8829
technik	9049
techniker	3604
technisch	8253
techno	2864
technologie	2850
teddybär	2869
tee	7465
teenager	3757
teheran	7110
teich	7457
teig	6079
teil	9903
teilchen	7682
teilen	9390
teilhabe	3801
teilnehmen	8422
teilnehmer	7364
teilnehmerin	1495
teils	2783
teilstaat	5980
teilung	2789
teilweise	8562
telefon	8386
telefonieren	6691
telefonnummer	8371
telegrafie	5632
teleskop	6653
teleskope	4227
tell	5100
teller	6895
tempel	8348
tempelberg	1520
temperatur	8997
tempo	4197
tempora	544
tennis	6971
tennisspiel	6824
tennisspieler	8607
tennisspielerin	6554
tennisturnier	8655
teppich	6608
termin	7624
terrarium	537
territorium	536
terror	7617
terrorangriff	2865
terroranschlag	7352
terroranschläge	2900
terrorgruppe	7626
terrorismus	6654
terrorist	9295
terrororganisation	5982
tesla	3970
tessin	5655
test	8935
testament	8560
testen	8641
tester	569
testpflicht	1250
testspiel	2055
teststrecke	4236
testzentr	568
teuer	9494
teufel	6871
text	9745
textilie	6853
textilindustrie	2018
thanksgiving	3230
theater	8946
theatern	4805
theaterstück	8272
theaterstücken	6133
theatre	3430
thema	9629
themenbereich	1378
theologe	3282
theologie	7415
theorie	5791
therapeut	5535
therapie	4186
thermometer	5484
these	3408
thron	3455
thule	3673
tibet	4219
ticket	7252
tief	9439
tiefe	5570
tier	9856
tierart	8612
tierarzt	6334
tierfutter	2505
tierheim	6021
tierpark	7901
tierpfleger	2493
tierschützer	2473
tierseuche	3317
tierwelt	1932
tierärzt	1284
tiger	8429
tigerbabys	4800
tigern	531
tiktok	5258
tinte	6364
tipps	4287
tisch	8487
tischler	4293
tischlerei	525
tischtennis	3632
titanic	6909
titel	8891
to	2542
tochter	8966
tod	9400
todesstrafe	8013
toilette	8009
toleranz	3607
toll	6866
tollwut	4244
tomate	7932
ton	9168
tonband	3261
tonfilm	526
tonhöhe	3786
tonne	8520
tonträger	2926
topf	6190
tor	9442
tora	4409
torah	6771
torarolle	529
torero	2951
torf	3643
tornado	5963
torte	1834
torwart	5949
toskana	6713
tot	9448
total	5057
tote	8976
toter	2443
touchscreen	2053
tour	8603
tourismus	8802
tourist	9346
tours	2551
trade	5250
tradition	6999
traditionell	6267
tragbar	3590
tragen	9726
trainer	9513
trainerin	7696
trainieren	8111
training	6581
traktor	6621
trampe	2014
tran	6609
transformator	2027
transgend	6590
transport	7169
transporter	7829
transportieren	8940
transsexuell	558
traube	2659
trauen	8277
trauer	3013
trauerfeier	5638
trauern	3985
traum	7305
traurig	8526
trecker	5201
treffen	9826
treiben	8630
treibhausgas	6019
treibhausgase	6276
treibstoff	6796
trennen	8953
trennung	555
treppe	7810
tresor	3644
treten	9257
treu	3871
triathlon	3876
trick	6973
trickfilm	552
trieb	5356
trikot	6435
trinken	9527
trinkwasser	8674
triple	539
trisomie	3909
trocken	9144
trockenheit	4618
trockenzeit	5410
trocknen	7584
trommel	3389
trommeln	3835
trope	7674
tropfen	4292
tropisch	8229
trotz	7400
trotzdem	9630
truppe	6911
truss	3138
träne	545
tränengas	2713
träum	547
träumen	4351
tröpfche	4718
tschernobyl	5349
tshirt	3309
tsunami	7249
tuberkulose	1887
tuch	6282
tulpe	3990
tumor	5519
tun	9824
tundra	5778
tunnel	8913
tunwort	1619
turbine	7224
turm	9071
turnen	5176
turner	5428
turnhalle	3168
turnier	9444
tutanchamun	1864
tutorial	1850
typisch	8241
tyrannosaurus	3702
täglich	7610
tälern	1785
tänzer	6216
tänzerin	2090
täter	9339
tätig	4239
tätigkeit	3162
tätowierung	1975
täufer	3712
täuschen	4569
tödlich	1922
töpfe	3453
töpfer	3420
töten	9701
tür	8690
türme	7793
türsteher	1372
tüte	4251
ubahn	6969
ubahne	6295
ubahnhof	3752
ubahnlinie	2568
uboot	3768
ufer	8457
ufo	2043
uhr	9488
uhrzeit	7129
ukrainekrieg	2638
um	9937
umbau	4240
umbauen	5987
umbenennen	4248
umbringen	8524
umdrehung	1567
umfallen	1569
umfang	1572
umfassen	6502
umfrage	7346
umgang	4195
umgangssprache	7369
umgeben	7338
umgebung	8672
umgefallen	4681
umgehen	8163
umgekehrt	8041
umher	3380
umkippen	7403
umkommen	4177
umkreisen	3352
umland	4991
umlauf	2610
umlaufbahn	5043
umlaufgitter	1915
umleiten	1459
umleitung	2612
umliegend	6369
umrunden	3641
umschlag	3571
umschlossen	1475
umsetzen	4649
umso	5355
umsonst	3547
umstand	4639
umstellen	1927
umstritten	2619
umwandeln	6645
umweg	1937
umwelt	9563
umweltfreundlich	5027
umweltpolitik	3630
umweltschutz	8138
umweltschützer	6700
umweltverschmutzung	5755
umziehen	6260
umzug	5577
un	4695
unabhängig	9296
unabhängigkeit	7955
unabhängigkeitskrieg	3588
unangenehm	7492
unbedingt	8261
unbekannt	7751
unbekannte	6302
unberührt	2617
unbewohnt	1468
und	9996
unendlich	6161
unentschieden	3879
unerwünscht	1384
unesco	9067
unfair	4982
unfall	9874
unfallstelle	3827
ungefähr	9637
ungefährlich	7953
ungeheuer	2117
ungenau	4885
ungerecht	7055
ungerechtigkeit	3960
ungesund	5366
ungewöhnlich	6975
unglück	7153
unglücklich	2155
ungültig	2168
unheimlich	4016
uni	6702
unicef	5689
uniform	3746
universität	9512
universum	6149
unklar	7171
uno	9269
unrecht	3084
unruhe	5646
uns	9703
unschuldig	4297
unser	9762
unsicher	5665
unsichtbar	5775
unst	680
unten	8867
unter	9822
unterart	5351
unterbrechen	4126
unterbringen	2641
unterdrücken	8606
unterdrückt	1279
unterdrückung	3033
untereinander	7166
unterer	8100
untergang	3031
untergegangen	6158
untergehen	4373
untergrund	5016
unterhalb	3794
unterhalten	7013
unterhaltung	4368
unterirdisch	3440
unterkunft	6638
unterlage	3805
unternehmen	9572
unternehmer	8028
unterricht	8542
unterrichten	7253
unterscheiden	8985
unterscheidung	3444
unterschied	8840
unterschiedlich	9593
unterschreiben	8448
unterschrift	5163
unterseeboot	1365
unterseite	2603
unterstützen	9180
unterstützer	2574
unterstützung	7148
untersuchen	9447
untersuchung	8155
untersuchungshaft	7128
untertan	2571
unterteilen	6484
unterwegs	7976
unterzeichnen	3399
unvorstellbar	658
unwahrscheinlich	659
unwetter	8489
unwichtig	4119
unwort	3051
unzufrieden	7733
unzählig	3411
uran	5954
uranus	5594
ureinwohner	7269
urgeschichte	3676
urheberrecht	1880
urin	7583
urknall	691
urkunde	5133
urlaub	9104
urlauber	8741
urmensch	716
ursache	6272
ursprung	4533
ursprünglich	9276
urteil	8552
urwald	6715
us	5961
usbundesstaat	719
usdollar	6297
uspräsident	4117
ussoldaten	3147
utopie	2049
vagina	2020
vampir	5442
van	7740
vanille	2582
varel	1632
variante	6552
vase	728
vater	9540
vegan	1911
veganer	5190
vegetarier	3485
veilchen	1956
velociraptor	1732
venus	7671
verabreden	1959
verabschieden	3109
veranstalten	7858
veranstalter	7816
veranstaltung	9082
verantwortlich	8273
verantwortliche	1919
verantwortung	5649
verarbeiten	8614
verarbeitung	4345
verb	7313
verband	8188
verbe	1712
verbergen	4328
verbessern	8270
verbesserung	3863
verbiegen	1721
verbieten	9645
verbinden	9332
verbindung	8413
verbot	7812
verboten	7910
verbotenes	9165
verbrauchen	8727
verbraucher	5007
verbraucherin	1707
verbraucherschutz	1706
verbrechen	9384
verbrecher	8000
verbrecherbande	5691
verbreiten	9166
verbrenn	1986
verbrennen	9178
verbrennung	5362
verbrennungsmotor	701
verbringen	8150
verbünden	5845
verbündeter	4786
verdacht	702
verdanken	2751
verdauen	6490
verdauung	6739
verdecken	4818
verden	5013
verdienen	9669
verdoppeln	1703
verdrängen	6003
verdunsten	3332
verdächtig	4633
verdächtige	5840
verehren	7274
verein	9732
vereinbaren	2924
vereinbarung	1765
vereinen	8210
vereinigen	5343
vereinigt	9319
vereinigter	8673
vereinigtes	7889
vereinigung	7298
vereinter	9399
vererben	1759
verfahren	3867
verfassen	594
verfassung	9078
verfassungsgericht	2736
verfassungsorgan	4405
verfassungsschutz	7571
verfilmen	5602
verfolgen	9189
verfolgung	3884
verformen	597
verfügen	2945
verfügung	4648
verfüttern	2946
vergangen	9059
vergangenheit	7612
vergeben	8248
vergebung	601
vergehen	6898
vergessen	7663
vergewaltigen	7687
vergewaltigung	7291
vergiften	6408
vergisst	2913
vergleich	8198
vergleichbar	605
vergleichen	8014
verglühen	3865
vergraben	6243
vergrössern	6760
verhaften	7729
verhalten	8570
verhandeln	8130
verhandlung	6331
verheiraten	8414
verhindern	9150
verhungern	5021
verhältnis	5523
verhängen	4716
verjagen	576
verkauf	8073
verkaufen	9716
verkehr	8120
verkehrsminister	3568
verkehrsmittel	5031
verkehrsunternehmen	578
verklagen	582
verkleiden	8444
verkleidet	1598
verkleinern	2705
verkäufer	7892
verkünden	3536
verkürzen	2143
verladen	584
verlag	7658
verlangen	8361
verlassen	9560
verlaufen	8567
verlegen	5975
verleger	4007
verleihen	7613
verleihung	2064
verletzen	9828
verletzter	7237
verletzung	7983
verlieben	8316
verlieren	9671
verlierer	3608
verloren	2697
verlust	2955
verlängern	5805
verlängerung	3927
verlässt	7410
vermehren	8588
vermehrt	590
vermeiden	6044
vermieter	6355
vermischen	7959
vermissen	6192
vermitteln	7954
vermuten	8763
vermutlich	8004
vermutung	2966
vermögen	3577
vernichten	6083
verordnung	638
verpacken	2973
verpackung	6198
verpassen	3589
verpflichten	3945
verpflichtung	1679
verprügeln	1680
verraten	6989
verreisen	1658
verrichten	4081
verringern	1639
verrückt	4089
vers	2686
versammeln	6207
versammlung	7806
versammlungsfreiheit	2079
verschenken	2435
verschicken	7828
verschieben	7988
verschieden	9891
verschiedene	7608
verschlechtern	646
verschleiern	4661
verschleierung	1648
verschleppen	4065
verschliessen	5561
verschlucken	648
verschlüsseln	2051
verschmutzen	8080
verschmutzt	1654
verschonen	3750
verschreiben	5899
verschwenden	3563
verschwinden	8709
verschwörer	3552
verschwörung	2448
verschwörungstheoretiker	2460
verschwörungstheorie	7315
verschärfen	630
verschütten	612
versehen	5062
versetzen	5078
verseuchen	2917
versichern	2934
versicherung	7963
versinken	5423
version	5311
versorgen	8174
versorgung	2931
versorgungsschiff	1799
versperren	616
versprechen	8676
versprühen	1796
verspätung	5976
versteck	4830
verstecken	8943
verstehen	9561
versteigern	620
verstopfen	4514
verstorben	4518
verstorbener	5047
verstossen	7628
verstreuen	3265
verständigen	4683
verständlich	6747
verstärken	6728
versuch	7926
versuchen	9646
verteidigen	8850
verteidigung	6881
verteidigungsbündnis	6346
verteidigungsminister	4474
verteidigungsministerin	1826
verteilen	8782
vertrag	9484
vertragen	3745
vertrauen	7498
vertraut	1816
vertreiben	8269
vertreten	8787
vertreter	8824
vertreterin	4849
vertretung	2524
verunglücken	625
verursachen	8540
verurteilen	9252
verurteilter	4494
verwalten	3700
verwaltung	7631
verwandeln	7423
verwandte	7881
verwandtschaft	2514
verwechseln	6803
verwenden	9683
verwendet	4491
verzichten	7247
verzieren	1855
verzweifelt	1962
verändern	9515
veränderung	8828
verärgern	3823
veröffentlichen	8558
verüben	6921
vibrieren	1979
video	8973
videothek	1930
vieh	6968
viehzucht	3347
viel	9933
viele	9954
vieler	9970
vielfalt	6199
vielfältig	4099
vielleicht	9800
vielmehr	2475
vielseitig	3908
vier	9596
viereck	4693
viermal	6693
viert	2480
viertel	8650
viertelfinale	8118
vierter	7578
viertgrösster	3192
vierzehn	1529
vierzig	6930
vietnamkrieg	2500
villa	5036
violett	3373
virus	9835
visum	1352
vitamin	8257
vizepräsident	5291
vizepräsidentin	3200
vogel	9344
vogelart	5734
vogelgrippe	7031
vokal	1779
volk	9638
volker	1901
volksabstimmung	5478
volksfest	8050
volksgruppe	4750
volksmusik	5861
volkspartei	4792
volksrepublik	1313
volksvertretung	1902
volkswagen	5280
voll	8619
volleyball	5277
vollgelaufen	1323
vollmond	4708
vollständig	7996
volt	3781
von	9993
voneinander	7832
vor	9944
voran	5771
voraus	5184
vorbei	8451
vorbereiten	7675
vorbereitung	2089
vorbild	8164
vorderer	3255
vorderseite	1317
vorerst	4380
vorfahre	8394
vorfall	5283
vorgang	5786
vorgehen	6102
vorgelesen	5172
vorhanden	7048
vorher	9611
vorkommen	8161
vorlage	5847
vorlegen	2432
vorlesen	4808
vorlesung	5292
vorläufer	2428
vormittag	627
vorn	1373
vorname	7632
vorne	8484
vornehmen	2464
vorort	4720
vorrat	5767
vorrunde	5516
vorschlag	8703
vorschlagen	7111
vorschreiben	5640
vorschrift	7004
vorsichtig	8353
vorsitzend	7698
vorstand	4013
vorsteher	2080
vorstellen	8647
vorstellung	8440
vorteil	8432
vortrag	6641
vorurteil	5684
vorwahl	4342
vorwerfen	5268
vorwiegend	5269
vorwurf	8146
vorwärts	6586
vulkan	8925
vulkanausbruch	1914
vw	7904
völkermord	5870
völkerrecht	2047
völkerwanderung	5750
völlig	8688
waage	1290
wabe	3206
wach	5119
wachen	4346
wachs	3723
wachsen	9692
wachstum	631
wachtel	5118
wackeln	3259
wacken	3760
waffe	9507
waffenruhe	2084
waffenstillstand	7800
wagen	8546
waggon	3778
wahl	9699
wahlbenachrichtigung	5850
wahlbeobachter	2781
wahlberechtigt	3504
wahlhelfer	4810
wahlkabine	2835
wahlkampf	6668
wahlkreis	6471
wahlleiter	1380
wahlleute	3475
wahlliste	635
wahllokal	7212
wahlomat	632
wahlrecht	6991
wahltag	3857
wahlunterlag	3859
wahlurne	2019
wahr	7673
wahrheit	6961
wahrnehmen	4802
wahrscheinlich	9687
wahrzeichen	8417
wal	8617
wald	9555
waldbrand	5769
waldbrände	6167
wale	1530
wall	3234
walpurgisnacht	574
walze	1487
wand	8738
wandel	2085
wandeln	5780
wanderer	4554
wandern	8565
wanderweg	606
wann	9246
wannacry	3005
wappen	7289
wappentier	4561
ware	9391
warm	9336
warmes	3580
warnen	8497
warnjacke	3933
warnung	5142
wars	2140
warten	9036
warum	9695
was	9914
waschbär	5544
waschen	7384
washington	8049
wasser	9858
wasserdampf	5546
wasserdicht	1576
wasserhahn	2777
wasserkraft	5402
wasserkraftwerke	3903
wasserkreislauf	4058
wasserleitung	5871
wasseroberfläche	3881
wasserrohr	2094
wasserräd	2813
wasserstoff	8031
wasserstrasse	4513
wassertröpfche	2819
wasserturm	3895
wasserwerfer	4153
wau	5108
web	4143
webbrowser	1484
webseit	3852
website	5460
wechsel	2806
wechselkurs	718
wechseln	8798
wecken	3318
weder	7890
weg	9664
wegen	9748
weggefahren	4766
weggehen	6068
weggelaufen	5462
weglassen	1421
weglaufen	2839
wegnehmen	7304
wegräumen	4585
wegwerfen	3178
wegworfen	3184
wegziehen	2803
weh	5811
wehen	7025
wehren	8587
wehrpflicht	664
weibchen	9248
weiblich	8573
weich	8297
weichen	4538
weichtier	5818
weide	7099
weigern	657
weihen	2769
weihnachten	8589
weihnachtsbaum	5467
weihnachtsgeschichte	1894
weihnachtslied	3941
weihnachtsmann	6456
weihnachtsmarkt	7311
weihnachtsmärkt	5175
weihnachtszeit	3503
weil	9924
weile	4489
wein	8713
weinen	3715
weintraube	3679
weise	8930
weisen	7093
weisheit	2782
weiss	9274
weisse	8905
weisser	573
weisskohl	3021
weit	9832
weite	7033
weiter	9766
weiterbau	684
weiteren	683
weiterentwickeln	5188
weiterfahren	7561
weitergeben	7167
weitergefahren	3056
weitergehen	5424
weiterhin	8087
weitermachen	2788
weiterspielen	7211
weiterverarbeiten	3039
weitgehend	4550
weitsprung	5574
weizen	7704
welche	9314
welchen	1983
welcher	9770
welle	8639
wellensittiche	1474
wels	1478
welt	9920
weltall	8510
weltbekannt	4419
weltberühmt	2880
weltfrieden	2878
weltfussballverband	6410
weltgesundheitsorganisation	4469
weltklimarat	4012
weltkrieg	9742
weltkulturerbe	8939
weltliteratur	3069
weltmeister	7372
weltmeisterschaft	9483
weltnaturerbe	3962
weltrangliste	6974
weltraum	9230
weltraumbehörde	4019
weltreich	7231
weltreise	2907
weltrekord	3073
weltreligion	7058
welttag	4445
weltweit	9247
weltwunder	4444
wem	8246
wen	6859
wenden	6639
wenig	9787
wenige	4457
weniger	9880
wenigstens	3474
wenigster	4437
wenn	9949
wer	9875
werbung	9140
werden	9989
werder	8317
werfen	9322
werft	8876
werk	8804
werkstatt	7645
werkzeug	8279
werner	2370
wert	9143
wertstoff	4957
wertstoffhof	2331
wertvoll	8926
wesen	7643
wesentlich	3446
weser	5956
weshalb	5241
wespe	4556
west	6568
westdeutsch	5967
westen	9620
westeuropa	6594
westküste	2406
westlich	8831
westminster	2762
westteil	3153
wettbewerb	9330
wetter	9123
wetterdienst	4493
wettkampf	7990
wettkämpf	4401
wettkämpfe	7219
wettkämpfen	4364
wettlauf	2847
wettstreit	1423
whatsapp	7280
white	3110
who	7644
wichtig	9930
wichtige	7521
wichtiges	6966
wichtigste	4898
wickeln	3108
widersprechen	1409
widerstand	5139
widmen	3142
wie	9966
wieder	9908
wiederaufbau	1406
wiedererkennen	1429
wiederholen	6730
wiederum	7933
wiedervereinigen	3188
wiedervereinigung	7614
wiederverwenden	1541
wiederverwerten	1560
wiederverwertung	1561
wiederwählen	2935
wiege	2825
wiegen	8776
wiese	8247
wieso	4047
wieviel	5952
wikileak	2841
wikinger	8217
wikipedia	6564
wild	8496
wilde	7899
wilderei	1577
wilderer	3981
wildnis	6443
wildschwein	7567
wildtier	6168
wille	4856
wind	9287
windel	5339
windenergie	5101
windig	2867
windkraft	4590
windkraftanlage	7986
windows	2904
windpark	6411
windpock	7094
windpocken	2854
windrad	7534
windräder	7739
wing	3851
winkel	6736
winter	9619
winterschlaf	6110
winterspiel	4865
winterspiele	5604
wintersport	6457
winterzeit	2823
winzig	8516
wir	9932
wirbel	2834
wirbelsturm	5463
wirbelsäule	5900
wirbeltier	7477
wirken	8742
wirklich	9393
wirklichkeit	8530
wirkstoff	1265
wirkung	4871
wirt	3214
wirtschaft	9588
wirtschaftlich	5835
wirtschaftskrise	8083
wirtschaftsminister	4886
wirtschaftssenator	557
wismar	7417
wissen	9865
wissenschaft	9321
wissenschafter	532
wissenschaftler	9632
wissenschaftlerinn	7620
wissenschaftlich	7857
witwe	3574
witz	6835
witzig	3984
wm	9405
wo	9761
woanders	7869
wobei	2456
woche	9697
wochenende	8450
wochenlang	1341
wochentag	3307
wodurch	6058
woelki	6171
wofür	8698
woher	8806
wohin	5453
wohl	9267
wohlhabend	6567
wohlstand	6461
wohnen	9647
wohnhaus	8640
wohnmobil	4121
wohnort	3277
wohnsitz	4124
wohnung	9657
wohnwagen	7386
wohnzimmer	4354
wolf	9091
wolfsrudel	2531
wolke	7987
wolkenkratzer	3301
wolle	6635
wollen	9951
womit	6382
woran	6670
woraus	6054
word	6317
workshop	2344
world	7468
wort	9925
wortart	5168
wortschatz	5266
worum	4331
worüber	2413
wovon	6952
wozu	7225
wto	3513
wuchsen	3226
wunde	5262
wunder	6182
wunderland	3954
wunderschön	3959
wunsch	7374
wurst	3471
wurzel	8472
wussten	6138
wut	3963
wwf	2324
wählen	9825
wähler	9052
wählerin	7638
während	9601
währung	8609
wände	4710
wärm	9240
wärme	8629
wärmen	2496
wäsche	1289
wölf	3363
wört	8439
wörterbuch	6547
wörterbücher	5788
wörtlich	5548
wünschen	7962
würfel	1273
würgen	2246
würm	5794
würst	2244
wüste	9142
wüstenfuch	1847
wütend	8508
yak	2181
yoga	4042
youtube	6447
zahl	9523
zahlen	9372
zahlreich	8988
zahn	8325
zahnarzt	6532
zahnräder	3597
zapfe	3587
zar	3717
zaren	2522
zauberei	3720
zauberer	4066
zauberin	4757
zaun	7047
zaune	1819
zebra	5284
zebrastreifen	4067
zeche	4733
zeh	4376
zehn	9279
zehntausend	3674
zehntel	4323
zehnter	6241
zeichen	9325
zeichentrickfilm	4732
zeichnen	8579
zeichner	6086
zeichnung	8380
zeigen	9809
zeile	5289
zeit	9889
zeitalter	5890
zeitansage	1795
zeitlang	5676
zeitpunkt	5891
zeitraum	4749
zeitrechnung	1805
zeitschrift	8020
zeitung	9368
zeitungsartikel	1861
zeitweise	3804
zeitzeuge	1843
zeitzon	2446
zeitzone	3767
zelle	9083
zellker	3769
zelt	8052
zement	7005
zensur	5406
zentimeter	9051
zentral	2451
zentralbank	6588
zentrale	8107
zentralrat	2462
zentrum	8545
zerbrechen	5413
zeremonie	2273
zerfall	2958
zerfallen	4062
zerfiel	2965
zerlegen	3729
zerschneiden	3706
zerstören	9624
zerstörung	3942
zettel	6827
zeuge	8799
zeugen	2963
zeugnis	4098
zeus	3920
ziege	7600
ziehen	9665
ziel	9546
zielen	1612
zielscheibe	2269
ziemlich	9137
ziffer	2267
zigarette	7999
zigeuner	1607
zimmer	7855
zimmerleute	5267
zimmermann	3540
zinn	4059
zins	7598
zirkus	7310
zitrone	1596
zitruspflanze	1593
zittern	1592
zitze	1591
zivilcourage	1634
zivilist	6228
zoll	8395
zombie	6560
zone	7284
zoo	8498
zu	9994
zubereiten	4299
zucchini	4296
zucht	5672
zucker	8817
zuckerkrankheit	2310
zuckerrohr	5701
zuckerrübe	3839
zudem	9103
zueinander	6404
zuerst	9644
zufall	6315
zufolge	2671
zufrieden	8811
zufällig	6889
zug	9652
zugang	6508
zugeben	6908
zugehen	682
zugführer	4868
zugleich	7866
zugstrecke	8318
zugunglück	4864
zugvögel	4501
zuhause	8701
zuhälter	654
zuhören	5337
zuhörer	4504
zukunft	9017
zukunftspreis	656
zulassen	5625
zuletzt	8165
zumindest	8237
zunehmend	5318
zunge	7459
zunächst	9028
zuordnen	3349
zupfen	2297
zupfinstrument	671
zurecht	689
zurzeit	2744
zurück	9587
zurückbringen	2745
zurückerobern	2747
zurückgeben	4505
zurückkehren	5712
zurückkommen	2752
zurücktreten	7518
zurückzahlen	4148
zurückziehen	5299
zusammen	9849
zusammenarbeit	8351
zusammenarbeiten	8887
zusammenbauen	723
zusammenbrechen	4147
zusammengearbeitet	4144
zusammengehalten	729
zusammengepresst	709
zusammengerechnen	1716
zusammengestossen	8421
zusammenhalten	693
zusammenhang	4672
zusammenkommen	2178
zusammenleben	7524
zusammenschliessen	8695
zusammenschluss	6904
zusammensetzen	7387
zusammenstoss	3326
zusammentun	8286
zusammenziehen	2183
zuschauen	5722
zuschauer	9331
zuschauerin	6178
zustand	6444
zustehen	3120
zustimmen	7108
zustimmung	706
zuständig	9477
zusätzlich	8977
zutat	5756
zuverlässig	3998
zuviel	3478
zuvor	8320
zwanzig	7802
zwar	9556
zweck	6741
zwei	9847
zweidrittelmehrheit	1750
zweieinhalb	5315
zweifel	7958
zweifeln	2602
zweig	7296
zweimal	7790
zweit	3182
zweiten	9426
zweitens	604
zweiter	9547
zweites	2583
zweitgrösster	7849
zweithöchster	4995
zweitsprache	3936
zweitstimme	5483
zweitwichtigster	1664
zwerg	5219
zwergplanet	2587
zwiebel	6237
zwillinge	6831
zwingen	9199
zwingli	5052
zwischen	9823
zwischendrin	2238
zwischendurch	575
zwölf	7978
zylinder	581
zäh	3947
zählen	9461
zähnen	5518
züchten	8793
züchter	587
züchtung	2427
zügen	5539
zünden	7349
zünfte	1851
ägäis	634
ähneln	6376
ähnlich	9759
ähnliches	5932
ähnlichkeit	2553
ähre	639
ältestenrat	644
ändern	9506
änderung	6706
äpfel	6345
äpfeln	647
äquator	8189
ärger	7324
ärgern	7599
ärztin	8184
äste	6540
ästen	4955
ätna	1303
äusserer	7101
äussern	6801
öffentlich	8885
öffentlichen	3019
öffentlicher	1301
öffentlichkeit	5092
öffentlichrechtlich	7765
öffnen	9262
öffnung	7522
öffnungszeit	617
öfter	8091
ökologie	3447
ökosystem	3761
öl	9003
östlich	8636
ötzi	5923
übel	3438
üben	8597
über	9943
überall	9293
überarbeiten	4692
überbringen	2643
übereinander	1517
überfahren	7993
überfall	8569
überfallen	8376
überfielen	5601
überfluten	4753
übergang	2372
übergeben	5251
übergewicht	2646
übergriff	1509
überhaupt	9022
überholen	6656
überlassen	2369
überleben	8679
überlebend	5617
überlegen	8586
übernachten	6127
übername	1571
übernatürlich	2649
übernehmen	9021
überprüfen	7861
überqueren	6357
überraschen	5010
überreden	3096
überrest	6468
überschlagen	3098
überschwemmen	7009
überschwemmung	8777
übersetzen	9092
übersetzer	3082
übersetzung	7002
übersicht	3986
überstehen	6589
übertragen	8596
übertrieben	5514
überwachen	7879
überweisen	2339
überwiegend	4729
überwinden	3654
überzeugen	7573
überzeugung	3080
überzogen	3619
üblich	7647
üblicherweise	4981
übrig	9283
übrigbleiben	3722
übrigens	5928
übung	8900
"""

    private static func set(_ blob: String) -> Set<String> {
        Set(blob.split(separator: "\n", omittingEmptySubsequences: true).map(String.init))
    }

    private static func parseWordScores(_ blob: String) -> [String: Double] {
        var scores: [String: Double] = [:]
        scores.reserveCapacity(9000)
        for line in blob.split(separator: "\n", omittingEmptySubsequences: true) {
            guard let tab = line.firstIndex(of: "\t"),
                  let value = Double(line[line.index(after: tab)...])
            else { continue }
            scores[String(line[..<tab])] = value
        }
        return scores
    }
}
