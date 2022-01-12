boy(dasarath).
boy(ram).
boy(laxman).
boy(bharat).
boy(shatrughan).
boy(luv).
boy(kush).
boy(janak).

girl(kaushalya).
girl(sumitra).
girl(kaikai).
girl(sita).
girl(urmila).
girl(sunaina).

father(dasarath,ram).
father(dasarath,laxman).
father(dasarath,bharat).
father(dasarath,shatrughan).
father(ram,luv).
father(ram,kush).
father(janak, sita).

mother(kaushalya,ram).
mother(sumitra,laxman).
mother(kaikai,bharat).
mother(kaikai,shatrughan).
mother(sunaina,sita).
mother(sita,luv).
mother(sita,kush).

marry(dasarath,kaushalya).
marry(dasarath,sumitra).
marry(dasarath,kaikai).
marry(janak,sunaina).
marry(ram,sita).
marry(laxman,urmila).

marry(X,Y):- marry(Y,X).

parent(X,Y):- father(X,Y);mother(X,Y).

grandparent(X,Y):- parent(X,Z),parent(Z,Y).

brother(X,Y):- parent(A,X),parent(A,Y), boy(X),X\==Y.

realbrother(X,Y):- parent(A,X),parent(A,Y),boy(X),girl(A),X\==Y.

stepmother(X,Y):- father(Z,Y),marry(Z,X),mother(W,Y),W\==X.

stepbrother(X,Y):- father(A,X),mother(W,X),father(A,Y),mother(E,Y),boy(X),boy(Y),W\==E.

