map_format_version(1.1).
load_behaviour(basicDoorKey).
load_behaviour(enemyBasicMovement).
load_behaviour(gunBasic).
map([
'############',
'###......###',
'##..####..##',
'#..#    #..#',
'#.##... ##.#',
'#.# ...  ..#',
'#.##... ##.#',
'#..#    #..#',
'##..####..##',
'###......###',
'############'
]).
map_size(12, 11).
num_dots(44).
pacman_start(8, 5).
initMap:- 
	addSolidObject('#'),

	createGameEntity(OID_K0, 'a', object, 1, 5, inactive, norule, 
    [name(llave), solid(false), static(false), use_rule(basicDoorKey),
			description('Llave para entrar en Pac-Man'), appearance(attribs(bold, cyan, default))]),

	createGameEntity(OID_D0, '|', object, 7, 5, inactive, norule, 
    [name(maquina), solid(true), static(true), use_rule(norule),
			description('Puerta'), appearance(attribs(normal, yellow, black))]), 
	
  basicDoorKey(init, OID_D0, 
  [ 
		'pl-man':destroyGameEntity(OID_K0),
		'pl-man':destroyGameEntity(OID_D0)
	], [ OID_K0 ]),

	createGameEntity(OID_P0, '¬', object, 3, 5, inactive, norule, 
    [name('pistola'), solid(false), static(false), use_rule(gunBasic),
			description('Pistola con 2 balas'), appearance(attribs(bold, cyan, default))]), 
	gunBasic(init, OID_P0, 2, ['E'], destroy),
	
	createGameEntity(EID_0, 'E', mortal, 5, 4, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]), 
	createGameEntity(EID_1, 'E', mortal, 5, 6, active, enemyBasicMovement, [appearance(attribs(normal, red, default))]),
	enemyBasicMovement(init, EID_0, left-right, ['#']),
	enemyBasicMovement(init, EID_1, right-left, ['#']).

norule(_).
norule(_,_,_,_,_).
