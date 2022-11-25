%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIF:	1
%%% PT:	00:15  [STS: 00:45]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map_format_version(1.0).
load_behaviour(entitySequentialMovement).
load_behaviour(gunBasic).
map([['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'],
['#', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '.', '#', '#', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '.', '#', '#', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '.', '#', '#', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', '#', '.', '.', '.', '.', '#'],
['#', '.', '#', '.', '.', '.', '#', '#', '#', '#', '.', '#', '#'],
['#', '.', '#', '.', '.', '.', '.', '.', '.', '.', '.', ' ', '#'],
['#', '.', '#', '#', '#', '#', '#', '#', '#', '#', '.', '#', '#'],
['#', ' ', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#']]).
map_size(13, 11).
num_dots(69).
pacman_start(1, 9).
initMap:- 
	addSolidObject('#'), 
	createGameEntity(OID_0, 'l', object, 11, 7, inactive, norule, 
			[name(derringer), solid(false), static(false), use_rule(gunBasic),
			description('Pistola con 1 bala. Usala bien'), appearance(attribs(bold, cyan, default))]), 
	gunBasic(init, OID_0, 1, ['E'], keep),
	createGameEntity(EID_0, 'E', mortal, 11, 1, active, entitySequentialMovement, [appearance(attribs(normal, red, default))]), 
	createGameEntity(EID_1, 'E', mortal, 3, 6, active, entitySequentialMovement, [appearance(attribs(normal, red, default))]),
	entitySequentialMovement(init, EID_0, [ l,l,l,l,l,l,d,d,d,r,r,u,u,u,r,r,d,d,d,r,r,u,u,u ], [ no_repeat_moves ]),
	entitySequentialMovement(init, EID_1, [ r,r,d,r,r,r,r,r,r,l,l,l,l,l,l,l,l,u,n ], [ no_repeat_moves ]).
norule(_).
norule(_,_,_,_,_).
