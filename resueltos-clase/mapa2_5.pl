%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Prolog Code for Map-file generated from map2-027.txt
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map_format_version(1.1).
load_behaviour(automaticArcher).
load_behaviour(enemyBasicMovement).
load_behaviour(entitySequentialMovement).
load_behaviour(magicWand).
map([
'###########################################',
'###########################################',
'####################################### ###',
'################################   ##.....#',
'########################## # ##.....#.....#',
'#################### # ##.....#.....#.....#',
'############### ###.....#.....#.....#.....#',
'######### ###.....#.....#.....#.....#.....#',
'#######.....#.....#.....#.....#.....#.....#',
'# .... ..... ..... ..... ..... ..... .....#',
'#     #     #     #     #     #     #     #',
'###########################################',
'#         Use aV4dA_keDaVra Spell         #',
'###########################################'
]).
map_size(43, 14).
num_dots(139).
pacman_start(1, 9).
initMap:- 
	addSolidObject('#'), 

	createGameEntity(OID_MagicWand, '!', object, 37, 10, inactive, norule, 
		[name(magicWand), solid(false), static(false), use_rule(magicWand), 
			description('Magic wand'), appearance(attribs(bold, cyan, default))]),
  magicWand(init(OID_MagicWand, [])),
	magicWand(newSpell(OID_MagicWand, 788458969, 1, 'pl-man':killEnemyE)),
	
	createGameEntity(OID_AR1, 'v', object, 39, 2, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR1, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(OID_AR2, 'v', object, 32, 3, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR2, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),
	createGameEntity(OID_AR3, 'v', object, 34, 3, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR3, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(OID_AR4, 'v', object, 26, 4, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR4, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),
	createGameEntity(OID_AR5, 'v', object, 28, 4, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR5, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(OID_AR7, 'v', object, 15, 6, active, automaticArcher, 
		[name(arqueroAutomatico), solid(false), static(true), use_rule(norule),
			description('Arquero automático del rey'), appearance(attribs(normal, yellow, default))]), 
	automaticArcher(init, OID_AR7, ['@'], down, 4, [ bullet_appearance('¡', normal, red, default), continuous ]),

	createGameEntity(_, '|', object, 6, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 
	createGameEntity(_, '|', object, 12, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 
	createGameEntity(_, '|', object, 18, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 
	createGameEntity(_, '|', object, 24, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 
	createGameEntity(_, '|', object, 30, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 
	createGameEntity(_, '|', object, 36, 9, inactive, norule, 
		[name('Opened door'), solid(false), static(true), use_rule(norule),
			description('An opened door'), appearance(attribs(bold, default, green))]), 

	createGameEntity(EID_0, 'E', mortal, 33, 3, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
	enemyBasicMovement(init, EID_0, down-up, ['#']),
	createGameEntity(EID_2, 'E', mortal, 41, 3, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_2, left-right, ['#']),
	createGameEntity(EID_3, 'E', mortal, 41, 4, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_3, left-right, ['#']),
	createGameEntity(EID_4, 'E', mortal, 20, 5, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_4, down-up, ['#']),
	createGameEntity(EID_5, 'E', mortal, 22, 5, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_5, down-up, ['#']),
	createGameEntity(EID_7, 'E', mortal, 41, 5, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_7, left-right, ['#']),
	createGameEntity(EID_8, 'E', mortal, 41, 6, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_8, left-right, ['#']),
	createGameEntity(EID_9, 'E', mortal, 9, 7, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_9, down-up, ['#']),
	createGameEntity(EID_10, 'E', mortal, 41, 7, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
  enemyBasicMovement(init, EID_10, left-right, ['#']),
	createGameEntity(EID_11, 'E', moxrtal, 41, 8, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]),
  enemyBasicMovement(init, EID_11, left-right, ['#']).
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