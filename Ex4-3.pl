twice([],[]).
twice([Ha|Ta],[Ha,Ha|Tb]):-twice(Ta,Tb).