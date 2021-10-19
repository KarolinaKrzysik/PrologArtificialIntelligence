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

married_to(vernon,petunia).
married_to(james,lili).
married_to(paul,helen).
married_to(albert,ruth).
married_to(petunia,vernon).
married_to(lili,james).
married_to(helen,paul).
married_to(ruth,albert).


father_of(Father,Child):-
    parent_of(Father,Child),
    male(Father).

mother_of(Mother,Child):-
    parent_of(Mother,Child),
    female(Mother).


grandfather_of(Grandfather,Grandchild):-
    parent_of(Grandfather,Parent),
    parent_of(Parent,Grandchild),
    male(Grandfather).


grandmother_of(Grandmother,Grandchild):-
    parent_of(Grandmother,Parent),
    parent_of(Parent,Grandchild),
    female(Grandmother).


sister_of(Sister,Sibling):-
    mother_of(Parent,Sister),
    mother_of(Parent,Sibling),
    not(Sister=Sibling),
    female(Sister).


brother_of(Brother,Sibling):-
    mother_of(Parent,Brother),
    mother_of(Parent,Sibling),
    male(Brother),
    not(Brother=Sibling).


aunt_of(Aunt,Person):-
    ((sister_of(Aunt,Parent);
    (married_to(Aunt,Uncle),
    brother_of(Uncle,Parent)))),
    parent_of(Parent,Person).
    

uncle_of(Uncle,Person):-
    ((brother_of(Uncle,Parent);
    
    (married_to(Uncle,Aunt),
    sister_of(Aunt,Parent)))),

    parent_of(Parent,Person).
    

