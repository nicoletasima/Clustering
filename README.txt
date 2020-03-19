README - Tema1 - Metode numerice Clustering. Algoritmul K-Means

	Task-ul 1 (Citirea datelor de intrare) a fost relativ usor si rapid de 
implementat. Pentru citirea numarului de clustere NC m-am folosit de citirile 
asemanatoare limbajului de programare C. Am dat ca parametrul functiei fopen 
fisierul care contine numarul respectiv si l-am deschis pentru citire, apoi
cu ajutorul functiei fscanf l-am citit in format intreg. Pentru a citi matricea
de puncte am utilizat functia load cu parametrul '-ascii' pentru a citi numerele
si cu precizarea format long g pentru a le citi toate zecimalele existente.

	Task-ul 2 (Implementarea K-Means). Acesta a fost cel mai dificil task intrucat
rezolvarea lui mi-a luat cel mai mult timp. Functia clustering_pc.m trebuie sa 
returneze o matrice cu NC linii si 3 coloane. La inceput matricea centroids este
nula. n si m reprezinta dimensiunile matricei de puncte points care este data ca 
parametru. Primii centroizii alesi sunt primii NC centroizi ai matricei points,
iar dif reprezinta o matrice care variaza in functie de alegerea corecta sau nu
a centroizilor. La inceput aceasta este egala cu centroids. Astfel cat timp matricea
dif este nenula, se initializeaza un vector c in care se pun indicii 
elementului din matricea centroids pentru care diferenta dintre elementele matricei
points si centroids este minima. Matricea oldPosition se initializeaza cu vechile 
valori ale matricei centroids, iar pointscls retine numarul de puncte din points
care se regasesc in fiecare dintre cele NC clustere. La sfarsit, daca fiecarui 
centroid i s-a asociat cel putin un punct se recalculeaza elementele matricei
centroids ca fiind centrele de masa ale punctelor fiecarui grup. Daca unul din
centroizi nu are atribuit niciun punct, atunci acestuia i se atribuie urmatorul 
element din matricea points, iar matricea dif se recalculeaza ca fiind distanta 
dintre noua matrice centroids si vechile sale valori pana cand elementele sale vor
fi egale cu 0, asta insemnand ca centroizii nu au mai fost modificati si ca cei 
gasiti sunt cei finali.

	Task-ul 3 consta in reprezentarea grafica a clusterelor folosind functia 
scatter3. Functia primeste ca parametrii matricele points si centroids. 
Se adauga intr-o matrice care se reinitializeaza pentru fiecare cluster cu 
elementele acestuia. Coordonatele matricei, adica cele 3 coloane, se adauga 
in vectorii x, y si z care se reprezinta grafic prin functia scatter3. C este
matricea de culori care asigura culorile diferite pentru cele NC clustere, 
parametrul filled umple continutul punctelor, iar 's' le da forma patrata,
int timp ce numarul intreg 30 reprezina dimensiunea punctelor.

	Task-ul 4 calculeaza costul unei solutii ca suma costurilor tuturor 
clusterelor. Se calculeaza din nou vectorul care contine indicii elementelor
apartinand unui posibil cluster. Pentru fiecare cluster determinat se 
calculeaza distanta de la elementele clusterului la centroid-ul clusterului
de care apartin si se aduna la suma s care este alta pentru fiecare cluster. 
Suma s se adauga la randul sau la costul total al solutiei.

	Task-ul 5 consta in reprezentarea grafica a costului total in functie de 
numarul de clustere. In cazul nostru, graficul va fi trasat pentru un numar 
de clustere cuprins intre 1 si 10 pentru a vedea cum evolueaza acesta.Se citeste
matricea points din fisierul dat ca parametru functiei la fel ca la primul task.
Am declarat un nou vector, costuri, in care voi adaua costul total pentru fiecare 
numar de clustere, astfel incat in final acest vector va avea 10 linii. Asa cum 
este sugerat in enunt se recalculeaza matricea centroids si costul pentru fiecare 
situatie si se adauga in vectorul de costuri pe care il reprezint grafic prin 
functia plot. Functiile xlabel si ylabel adauga nume axelor de coordonate Ox si 
respectiv Oy.
 
