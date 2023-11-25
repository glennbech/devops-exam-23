# devops-exam-23

kandidatnummer: 2005

Hei.

## Oppgave 1. 

For å kunne kjøre github actions på ditt eget repo er det viktig at du legger inn secrets 

AWS_SECRET_ACCESS_KEY 
AWS_ACCESS_KEY_ID

Dette kan du gjøre i settings i ditt github repository.

Med dette skal du kunne gjøre en endring i koden f.eks her:

[ SKRIV NOE HER FOR Å TESTE ]


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
