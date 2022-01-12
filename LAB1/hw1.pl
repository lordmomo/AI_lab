boy(mohan).
boy(sunil).
boy(sashank).
boy(prashant).
boy(prakash).
boy(radheshyam).
boy(adarsh).

girl(nanu).
girl(madhuri).
girl(rita).
girl(nita).
girl(anuja).
girl(prajeeta).
girl(ishu).
girl(shiru).

father(mohan,sunil).
father(mohan,madhuri).
father(mohan,rita).
father(mohan,nita).
father(sunil,sashank).
father(prakash,prashant).
father(prakash,prajeeta).
father(radheshyam,ishu).
father(radheshyam,shiru).
father(radheshyam,adarsh).

mother(nanu,sunil).
mother(nanu,madhuri).
mother(nanu,rita).
mother(nanu,nita).
mother(anuja,sashank).
mother(rita,prashant).
mother(rita,prajeeta).
mother(madhuri,ishu).
mother(madhuri,shiru).
mother(madhuri,adarsh).

marry(mohan,nanu).
marry(sunil,anuja).
marry(prakash,rita).
marry(radheshyam,madhuri).

marry(X,Y):- marry(Y,X).

parent(X,Y):-
    father(X,Y);mother(X,Y).

grandparent(X,Y):- parent(X,Z),parent(Z,Y).

siblings(X,Y):- parent(Z,X),parent(Z,Y), X\==Y.

brother(X,Y):- parent(Z,X),parent(Z,Y),boy(X),(boy(Y);girl(Y)),X\==Y.

sister(X,Y):-parent(Z,X),parent(Z,Y),girl(X),(girl(Y);boy(Y)),X\==Y.

cousin(X,Y):- grandparent(A,X),grandparent(A,Y),not(siblings(X,Y)),X\==Y.

cousin(X,Y):- cousin(Y,X).
