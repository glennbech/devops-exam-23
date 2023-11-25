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
