female(helen).
female(ruth).
female(petunia).
female(lili).

male(paul).
male(albert).
male(vernon).
male(james).
male(dudley).
male(harry).

/parent_of(Parent,Child)./
parent_of(paul,petunia).
parent_of(paul,lili).
parent_of(helen,petunia).
parent_of(helen,lili).
parent_of(albert,james).
parent_of(ruth,james).
parent_of(vernon,dudley).
parent_of(petunia,dudley).
parent_of(lili,harry).
parent_of(james,harry).

/Father of a child/
father_of(Father,Child):-
    parent_of(Father,Child),
    male(Father).

/Mother of a child/
mother_of(Mother,Child):-
    parent_of(Mother,Child),
    female(Mother).

/Grandfather of a grandchild/
grandfather_of(Grandfather,Grandchild):-
    parent_of(Grandfather,Parent),
    parent_of(Parent,Grandchild),
    male(Grandfather).

/Grandmother of a grandchild/
grandmother_of(Grandmother,Grandchild):-
    parent_of(Grandmother,Parent),
    parent_of(Parent,Grandchild),
    female(Grandmother).

/Sister of a sibling/
sister_of(Sister,Sibling):-
    parent_of(Parent,Sister),
    parent_of(Parent,Sibling),
    female(Sister).

/Brother of a sibling ADDITIONAL/
brother_of(Brother,Sibling):-
    parent_of(Parent,Brother),
    parent_of(Parent,Sibling),
    male(Brother).

/Aunt of a niece or a nephew/
aunt_of(Aunt, Person):-
    sister_of(parent_of(Parent,Person)).

/Uncle of a niece or a nephew/
uncle_of(Aunt, Person):-
    brother_of(parent_of(Parent,Person)).
