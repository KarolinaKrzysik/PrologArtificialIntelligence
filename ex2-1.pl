starter(green_salad).
starter(melon).
starter(tomato_salad).
starter(rabbit_pate).

main(rock_salmon_with_mayonnaise_and_carpers).
main(roast_beef_with_girolle_mashroom_sauce).
main(pasta_courgette_and_cheese_bake).

desert(cheese).
desert(yoghurt).
desert(paris_brest_pastry).

menu(hungry,Starter,Main,Desert):-
	starter(Starter),
	main(Main),
	desert(Desert).
	
menu(not_so_hungry,Starter,Main,Desert):-
	(starter(Starter),
	main(Main));
	(main(Main),
	desert(Desert)).
	
menu(on_diet,Starter,Main,Desert):-
	starter(Starter).
	