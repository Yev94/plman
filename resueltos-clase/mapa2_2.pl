%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIF:	2+
%%% PT:	00:30	[STS: 01:30]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map_format_version(1.0).
load_behaviour(basicDoorKey).
load_behaviour(entitySequentialMovement).

map([['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '.', '.', '.', '#', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', '#'],
['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'],
[]]).
map_size(14, 14).
num_dots(33).
pacman_start(12, 1).
initMap:- 
	addSolidObject('#'), 
	createGameEntity(OID_0, ']', object, 4, 3, inactive, norule, 
			[name(puertaElect), solid(true), static(true), use_rule(norule),
			description('Puerta eléctrica bloqueada'), appearance(attribs(normal, red, cyan))]), 
	createGameEntity(OID_1, '&', object, 9, 9, inactive, norule, 
			[name(mandoElect), solid(false), static(false), use_rule(basicDoorKey),
			description('Mando electrónico'), appearance(attribs(bold, yellow, default))]), 
	createGameEntity(EID_0, 'E', mortal, 7, 8, active, entitySequentialMovement, [appearance(attribs(bold,red,default))]), 
	createGameEntity(EID_1, 'E', mortal, 10, 8, active, entitySequentialMovement, [appearance(attribs(bold,red,default))]), 
	createGameEntity(EID_2, 'E', mortal, 7, 10, active, entitySequentialMovement, [appearance(attribs(bold,red,default))]), 
	createGameEntity(EID_3, 'E', mortal, 10, 10, active, entitySequentialMovement, [appearance(attribs(bold,red,default))]),
	basicDoorKey(init, OID_0, ['pl-man':destroyGameEntity(OID_0), 'pl-man':msgWindowWriteln('Se desliza la puerta eléctrica. Puedes pasar')],  [OID_1]),
	entitySequentialMovement(init, EID_0, [r,r,r,d,d,l,l,l,u,u], []),
	entitySequentialMovement(init, EID_1, [d,d,l,l,l,u,u,r,r,r], []),
	entitySequentialMovement(init, EID_3, [l,l,l,u,u,r,r,r,d,d], []),
	entitySequentialMovement(init, EID_2, [u,u,r,r,r,d,d,l,l,l], []).

norule(_).
norule(_,_,_,_,_).
