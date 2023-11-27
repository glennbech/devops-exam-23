# devops-exam-23

kandidatnummer: 2005

Hei. Her er mitt forsøk på å løse eksamen i PGR301 DevOps i skyen. Noen oppgaver gikk greit, mens andre slet jeg med og mangler fullstendige svar. Jeg har kommentert dette hvor det gjelder.
Jeg slet også med uheldig sykdom i eksamensløpet som heller ikke hjalp.

## Oppgave 1. 

For å kunne kjøre github actions på ditt eget repo er det viktig at du har dine egne IAM nøkler og legger inn disse som secrets  i ditt eget repo.

AWS_SECRET_ACCESS_KEY 
AWS_ACCESS_KEY_ID

Dette kan du gjøre i settings i ditt github repository.

Med dette skal du kunne gjøre en endring i koden f.eks her for å kunne kjøre github actions:

[ SKRIV NOE HER FOR Å TESTE ]

## Oppgave 2.

A. Burde funke som ønsket. Har testet å gjøre kommandoene selv og fått ut ønsket respons.
B. Har kjørt grønt og fint og burde fungere fint på et forket repo også.

## Oppgave 3.

A. Her møtte jeg på en error som jeg slet med. Jeg fikk ikke lov til å endre cpu og memory til verdiene som var nevnt i oppgaven. Jeg endte stadig opp med en error som sa at jeg måtte ha det etter et visst regex oppsett, som ikke inkluderte alternativene 256 og 1024. Jeg har derfor andre verdier i main.tf filen.

Her er erroren: 
![image](https://github.com/Frodsand/devops-exam-23/assets/94897200/94ec8b5d-6243-4765-97ed-cb656a202950)

B. Her trenger ikke sensor å gjøre noen endringer. Jeg kunne lagt til variablene som SERVICE_NAME og IMAGE til github secrets. Men, jeg valgte å la være, da jeg ikke følte det var nødvendig.

## Oppgave 4.

A. Her er oppgaven jeg virkelig slet med. Jeg å skape et dashboard og få oversikt over metrics opp. Men, jeg klarte ikke å lege til noen metrics. Det jeg dog prøvde å legge til var en Gauge som talte hvor mange images som ble scannet og hvor mange vialations som ble oppdaget.

B. Følge feil. Rakk aldri å begynne på denne da jeg ikke fikk til oppgave A.


## Oppgave 5.

### A. kontinuerlig integrering. 
Kontinuerlig integrasjon eller CI er et egep innen utvikling som tar for seg praksisen å kontinuerlig og automatisk integrere endringer i kode fra forskjellige utviklere inn i en kodebase. Ved å bruke dette prinsippe vil det mye lettere oppdages eventuelle feil eller konflikter i koden, som kan være med på å "breake" produktet et team jobber på. Det er en velkjent og etablert praksis som brukes i så og si alle utvikler-team. Disse feilene kan for eksempel være merge conflicts, rettere sagt at din kode gjør endringer på kode som noen andre har tidligere gjort endringer på. Dette skjer ofte når to utviklere jobber med forskjellige oppgaver i samme fil. En annen feil som skjer ofte er at dine endringer fungerer lokalt hos deg, men ikke når man pusher den opp til kodebasen. Her har vi som regel etablert scripts gjennom Girhub Actions for å teste koden og forsøke levering av koden. Hvis din kode ikke består disse testene er det endringer som må gjøres. En av de viktigste måtene vi jobber med dette i praksis er gjennom branching, pull requests og reviews. Med branching skaper vi en identisk kopi av hoved(main) branchen som vi kan jobbe på. Her kan vi gjøre alle endringer vi vil uten at det registreres i vår main branch. Når arbeidet er utført og vi har pushet vår kode, vil github be deg lage en pull request. Dette er en forespørsel om å få merget din branch med main branchen, da vil koden du har skrevet ligge i kodebasen. Noe som dessverre ikke brukes av absolutt alle er kravet om reviews. I Github kan man sette opp at ingen brancher får merges uten at en annen bidragsyter i repoet har gjort en code review og godkjent at denne koden kan merges. Dette er viktig for flere grunner. Blandt annet for å opprettholde kodekvalitet, samt for å få en annens øyne på at denne løsningen ikke vil skape trøbbel senere. En siste og i min mening, ekstremt viktig grunn, er for læring. Å gjøre code reviews for en medutvikler og ikke minst senior utvikler, vil gi et utrolig høyt læringsutbytte.

### B. Scrum vs DevOps. 
Før vi sammenligner disse praksisene må vi rask definere dem.

Scrum: Er en metodikk innen praksisen smidig utvikling. Den innebærer å dele opp arbeidet i mindre oppgaver og spre dem utover sprinter som går over en fastsatt tid. Det skal også holdes daglige stand up møter hvor hvert medlem av teamet får muligheten til å presentere sitt arbeid. Disse møtene skal være veldig raske og effektive. På slutten av en sprint utføres en retrospective, hvor man sammen går over forrige sprint og alle får komme med feedback på hva som funket og ikke funket. Teamet blir også ledet av en scrum master som tar styring i alle møtene.

DevOps: Er en tilnærming hvor en forsøker å skape et tettere sammarbeid mellom utviklerne og driftansvarlige på et prosjekt. Dette utføres som regel ved å automatisere prosesser, skape samarbeid mellom avdelinger og dermed øke pålitligheten og hastigheten i løpet av hele livssyklusen til prosjktet. Vi skal med andre ord, fjerne "veggen" som før var mellom et utvikler team og driftansvarlige for et prosjekt.

Som en utvikler som selv jobber i to team, hvor det ene tar i bruk mye av metodikken fra scrum og det andre DevOps er dette en litt artig oppgave å svare på. Begge tilnærmingene har mye bra de tar med seg, og samtidig noen utfordringer. 

I mitt platform team har vi mye fokus på scrum og bruker blandt annet scrumboards, daglig standup og retrospectives. Her ser vi kanskje et eksempel på en utfordring, nemlig sprinter. I et team hvor mange utviklere jobber på forskjellige prosjekter er sprinter nermest umulig å utføre på en ryddig måte. Et annet argument mor dem, er også tidspresset det ofte skaper. Mange jobber på ulike måter og i ulik hastighet, så det skaper fort et indre press for mange. Det er lett å føle at man må være like rask og effektiv som sine kollegaer som kan resultere i et usunt arbeidsmiljø. Denne tilnærmingen inneholder også ufattelig mange andre metodikker, som story points, burndown graphs og ikke minst, veldig konkrete måter alt dette skal utføres. 

I mitt produkt team, har vi derimot veldig lite fokus på scrum og mye mer på devops. Her har vi satt opp mange workflow filer som sørger for at vi har kontinuerlig integrering og levering som hjelper oss på alle måter beskrevet i oppgave A. Samtidig har vi et veldig tett forhold til produkteier og teamet som tar i bruk applikasjonen vår. Dette har igjen masse positivt som det bringer med seg, men samtidig noen utfordringer. Noe jeg biter merke i er hastigheten på levering av ny funksjonalitet. Vi får konstant nye bestillinger på ønsket funksjonalitet i produktet og så fort ticketen er utført og gått gjennom all sjekk og reviews som trengs, blir den deployet og er ute i produksjon. Da vi også sitter med overvåkingen av produktet, oppdages det og og utarbeides fikser for bugs i en veldig stor hastighet. Samtidig får vi også all den feedbacken vi måtte trenge for å forbedre performance og står med evnen til å gjøre mange beslutninger selv. Når alt dette er sagt, finnes det selvfølgelig noen utfordringer med denne tilnærmingen. Kompleksiteten i arbeidet og kravet til sikkerhet er veldig stor, som gjør det ganske utfordrende og litt skummelt for en juniorutvikler å jobbe på. Samtidig er det en tilpasning å sette seg inn i og alltid ha fokus på. 

Om jeg skulle sammenlignet begge disse tilnærmingene vil si begge stiller med utrolig mye positivt. Jeg tror å bare fokusere på å etablere en av dem og glemme den andre helt er en feil man fort kan gjøre. Den beste løsningen kan derfor være å slå dem sammen og skape en balansert tilnærming som tar med seg de beste delene og bruker dem til å motarbeide utfordringene til den andre. Dette er definitvt ikke motparter og heller ikke et valg en må ta om det skal brukes den ene eller den andre. De komplementerer hverandre. Noe jeg har lært av å jobbe litt med begge, er at ting fungerer ikke alltid like bra i praksis som teoretisk.

### C. Feedback
Basert på funksjonaliteten jeg hadde hatt i oppgave å legge til ville jeg kanskje gjort tin glitt annerledes. Men, normalt sett ville jeg startet med å legge til noen tester som ville gitt meg umiddelbar feedback på om det jeg har laget i det hele tatt fungerer. Deretter ville jeg oppsøkt tilbakemelding fra eventuelle kollegaer gjennom for eksempel reviews på min pull request. Alt dette er som tidligere nevnt essentielt for å sørge for at den beste mulige løsningen går live til brukeren. Om alt har blitt approved og passert tester vil jeg deploye den nye funksjonen og ta i bruk noen verktøy for å få målinger på forskjellig data som vil gi meg tilbakemeldinger på hvordan bruken er. 

som et eksempel kan vi jo si jeg allerede har en applikasjon som fungerer som en bokhylle som registerer bøker som brukeren eier og har lest. La oss si at min oppgave var å skape et rating system som er knyttet til et annet system som anbefaler bøker basert på rating. 
Her kunne jeg ha satt opp et dashboard i aws sin cloudwatch tjeneste som samlet inn data og displayet det for meg. Jeg kunne ha lagt til en counter metrikk som teller hvor mange ganger noen bruker tjenesten, eller hvor mange ganger en bok blir anbefalt. Den kunne også talt hvor mange ganger en bok ble kjøpt basert på anbefalingen. 
Samtidig kunne jeg lagt inn en timer for å sjekke responstiden til funksjonen min, og andre metrics som kunne sjekket cpu og minne og gitt meg feedback på ytelsen.

Alt dette bidrar til at utviklingsprosessen forbedres, da man kontinuerlig får feedback som kan være en pekepinn på hva som fungerer og ikke. Det er derfor utrolig viktig å ta det i bruk, da alternativet blir som å gi fra seg et produkt og aldri få vite noe om hvordan det fungerte eller om bruker var fornøyd. Da blir det fort at man viderefører bad practice, siden ingen har fortalt deg noe annet.
