# Bachelor's Thesis: Performance Analysis of the RSA Algorithm for Embedded Systems

## Abstract
As technology evolves, smaller and smaller objects require solutions capable of communicating sensitive data without the fear that such data can be read by unauthorised persons.

Precisely for this reason, a reimplementation of the RSA cryptosystem, read in an embedded way, i.e. in conditions of low available memory and in objects that only have one or a few functionalities, became necessary.

The cryptosystem, developed in the C language, makes no use of external libraries other than the standard ones. This is important because it allows the exact computation of the code, so that its execution can be fragmented in case it is executed on an embedded device.

The various functions have been designed to achieve a fair compromise between computational complexity and memory utilisation, so that some procedures, despite their sub-optimal complexity, prove to be extremely suitable for the problem presented. This is the case, for example, of multiplication, presented in the following chapters, which is characterised by quadratic complexity, much more so than the most recent algorithms, starting with Karatsuba's procedure, passing through the Toom-Cook procedure and the Schönhage-Strassen algorithm, up to the Fürer transform. 

Related to computational complexity is time. After numerous attempts, manipulations and restructuring of the code, it was possible to get the computer to perform the operations for generating the encrypted keys in an almost reasonable amount of time, as illustrated in the following chapters.

## Sommario
Con l'evolversi della tecnologia, oggetti sempre più piccoli necessitano soluzioni in grado di comunicare dati sensibili senza il timore che tali dati possano essere letti da persone non autorizzate.

Proprio per questo motivo, si è resa necessaria una reimplementazione del crittosistema RSA, letto in chiave embedded, ovvero in condizioni di scarsa memoria disponibile e in oggetti che hanno esclusivamente una o poche funzionalità.

Il crittosistema, sviluppato in linguaggio C, non fa uso di librerie esterne oltre a quelle standard. Questo è importante perché permette di avere l'esatta computazione del codice, in modo da poterne frammentare l'esecuzione nel caso in cui venisse eseguito su un dispositivo embedded.

Le varie funzioni sono state progettate per ottenere un giusto compromesso tra la complessità computazionale e l'utilizzo di memoria, per cui alcune procedure, pur presentando complessità non ottimali, si rivelano estremamente adatte al problema esposto. È il caso, ad esempio, della moltiplicazione, presentata nei capitoli sucessivi, caratterizzata da una complessità quadratica, molto più degli algoritmi più recenti, a partire da quello di Karatsuba, passando per la procedura di Toom-Cook e per l'algoritmo di Schönhage-Strassen, fino alla trasformata di Fürer. 

In relazione alla complessità computazionale è il tempo. Dopo numerosi tentativi, manipolazioni e ristrutturazioni del codice, si è riusciti a far svolgere al calcolatore le operazioni per la generazione delle chiavi cifrate in tempi pressoché ragionevoli, come illustrato nei capitoli a seguire.
