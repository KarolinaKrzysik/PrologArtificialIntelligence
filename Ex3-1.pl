in(katarina, olga).
in(olga,natsha).
in(natsha,irina).

inside(X,Y):-in(X,Y).
inside(X,Y):-in(X,Z),
inside(Z,Y).