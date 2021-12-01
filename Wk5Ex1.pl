trans_a_b([],[]).
trans_a_b([a|Ta],[b|Tb]):-trans_a_b(Ta,Tb).