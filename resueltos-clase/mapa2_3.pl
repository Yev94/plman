%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIF:	3
%%% PT:	00:30	[STS: 01:45]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map_format_version(1.0).
load_behaviour(basicTeletransport).
load_behaviour(basicDoorKey).
map([['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'],
['#', '.', '.', '.', '.', '.', '.', ' ', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '#', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#', '.', '#'],
['#', '.', '#', '.', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', ' ', '#', '.', '#', '.', '#'],
['#', '.', '#', '.', '#', '.', '.', '.', '.', '.', ' ', ' ', '.', '.', '.', ' ', '.', '.', '.', '#', '.', '#', '.', '#'],
['#', '.', '#', '.', '#', '.', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '.', '#', '.', '#'],
['#', ' ', '#', '.', '#', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#', '.', '#'],
['#', ' ', '#', '.', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '#', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#']]).
map_size(24, 11).
num_dots(108).
pacman_start(1, 7).
initMap:- 
	addSolidObject('#'), 
	createGameEntity(OID_K, 'k', object, 7, 1, inactive, norule, 
			[ name(llave), solid(false), static(false), use_rule(basicDoorKey),
			  description('Llave'), appearance(attribs(bold, cyan, default))]), 
	createGameEntity(OID_TT, '?', object, 10, 5, active, basicTeletransport, 
			[ name(pasadizo), solid(false), static(true), use_rule(norule),
			  description('Puerta de teletransporte'), appearance(attribs(normal, yellow, cyan))]), 
	createGameEntity(OID_D, '-', object, 18, 4, inactive, norule, 
			[ name(puerta), solid(true), static(true), use_rule(norule),
			  description('Puerta cerrada'), appearance(attribs(bold, cyan, default))]), 
	createGameEntity('!', object, 15, 5, inactive, norule, 
			[ name(dinamita_rapida), solid(false), static(false), use_rule(dinamitaUsoRule),
			  description('Dinamita que explota nada mas tocar un objeto'), appearance(attribs(bold, yellow, default))]), 
	createGameEntity('_', object, 1, 8, inactive, norule, 
			[ name(puerta_blindada), solid(true), static(true), use_rule(norule),
			  description('Puerta blindada'), appearance(attribs(bold, yellow, default))]), 
	createGameEntity('F', mortal, 11, 5, active, ghostRule, [ appearance(attribs(normal, red, default)) ]),
	basicDoorKey(init, OID_D, ['pl-man':destroyGameEntity(OID_D),'pl-man':destroyGameEntity(OID_K)], [OID_K]),
	basicTeletransport(init, OID_TT, from(10,5), to(1,7), ['@'], []).

dinamitaUsoRule(DinaId,_, X, Y, _):-
   entityLocation(PtaEID,X,Y,'_'),
	destroyGameEntity(DinaId),
	destroyGameEntity(PtaEID),
	msgWindowWriteln('KABOOOM!!!!! Vaya, la puerta se ha abierto :)'), !.
dinamitaUsoRule(_,_, _, _, _):-
	msgWindowWriteln('No puedo usar la llave asi!'), !.


seedir(left).
seedir(right).
seedir(up).
seedir(down).

ghostRule(EID):-
    seedir(DIR),
    see(EID, list, DIR, SEELIST),
    member('@', SEELIST),
    doAction(EID, move(DIR)), !.
ghostRule(_).
norule(_).
norule(_,_,_,_,_).
