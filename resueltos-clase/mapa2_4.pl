%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Prolog Code for Map-file generated from map2-025.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map_format_version(1.1).
load_behaviour(automaticArcher).
load_behaviour(enemyBasicMovement).
load_behaviour(entitySequentialMovement).
load_behaviour(magicWand).
map([
'###########################',
'#####  .....###.....  #####',
'#####  .............  #####',
'#####  .....#.#.....  #####',
'#############.#############',
'#############.#############',
'#####  .............  #####',
'#####  .............  #####',
'#############.#############',
'######### ###.### #########',
'#####  .............  #####',
'#####  .....###.....  #####',
'#####  .............  #####',
'###########################',
'# Use aV4dA_keDaVra Spell #',
'###########################'
]).
map_size(27, 16).
num_dots(100).
pacman_start(6, 1).
initMap:- 
	addSolidObject('#'), 

	createGameEntity(OID_MagicWand, '!', object, 6, 3, inactive, norule, 
		[name(magicWand), solid(false), static(false), use_rule(magicWand), 
			description('Magic wand'), appearance(attribs(bold, cyan, default))]),
  magicWand(init(OID_MagicWand, [])),
	magicWand(newSpell(OID_MagicWand, 788458969, 1, 'pl-man':killEnemyE)),
	
	createGameEntity(OID_AR1, 'v', object, 9, 9, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR1, ['@'], down, 3, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(OID_AR2, 'v', object, 17, 9, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR2, ['@'], down, 3, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(EID_0, 'E', mortal, 20, 1, active, entitySequentialMovement, [appearance(attribs(normal, red, default))]), 
	entitySequentialMovement(init, EID_0, [d,d,l,l,l,l,u,u,r,r,r,r], []),
	createGameEntity(EID_1, 'E', mortal, 20, 3, active, entitySequentialMovement, [appearance(attribs(normal, red, default))]), 
	entitySequentialMovement(init, EID_1, [l,l,l,l,l,u,l,l,l,l,d,l,l,l,l,l,u,r,r,r,r,r,r,r,r,r,r,r,r,r,r,d], []),

	createGameEntity(_, 'E', mortal, 13, 3, inactive, norule, [appearance(attribs(normal, red, default))]), 
	createGameEntity(_, 'E', mortal, 13, 4, inactive, norule, [appearance(attribs(normal, red, default))]), 
	createGameEntity(_, 'E', mortal, 13, 5, inactive, norule, [appearance(attribs(normal, red, default))]),

	createGameEntity(_, 'E', mortal, 13, 8, inactive, norule, [appearance(attribs(normal, red, default))]), 
	createGameEntity(_, 'E', mortal, 13, 9, inactive, norule, [appearance(attribs(normal, red, default))]).
norule(_).
norule(_,_,_,_,_).


%%%
%%% Kill Spell
%%%
killEnemyE(_, EID, X, Y, [ DIR ]):-
  see(EID, list, DIR, SEELIST),
  member(AIM, SEELIST),
  member(AIM, ['E']), !, 
	nth0(DIST, SEELIST, AIM),
	p_calculateEntityXY(DIR, DIST, X, Y, EX, EY),
	entityLocation(DEST_EID,EX,EY,AIM), 
  destroyGameEntity(DEST_EID),
  maplist(user:write, ['MAGICWAND: Enemy pulverized!', '\n']).

killEnemyE(_,_,_,_,_):-
  maplist(user:write, ['MAGICWAND: Spell failed...', '\n']).

% Calculate X,Y location of the entity we are seeing
p_calculateEntityXY(left, DIST, X, Y, NX, Y):- NX is X-DIST.
p_calculateEntityXY(right, DIST, X, Y, NX, Y):- NX is X+DIST.
p_calculateEntityXY(up, DIST, X, Y, X, NY):- NY is Y-DIST.
p_calculateEntityXY(down, DIST, X, Y, X, NY):- NY is Y+DIST.