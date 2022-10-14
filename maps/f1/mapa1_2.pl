
load_behaviour(enemyBasicMovement).

map_format_version(1.1).

map([
'#############################',
'########..#  #..####..#  #..#',
'##.....#..#  #..#  #..## #..#',
'##..#..#..#  #..####..#.##..#',
'##..####..####..#..#..#..#..#',
'##..........................#',
'##..........................#',
'#############################'
]).
map_size(29, 8).
num_dots(100).
pacman_start(27, 1).
initMap:-
 	addSolidObject('#'),


	createGameEntity(EID_0, 'E', mortal, 2, 5, active, enemyBasicMovement, 
	[appearance(attribs(normal, red, default))]), 
	createGameEntity(EID_1, 'E', mortal, 3 , 5, active, enemyBasicMovement, 
	[appearance(attribs(normal, red, default))]),



    enemyBasicMovement(init, EID_0, right-left, ['#']),
	enemyBasicMovement(init, EID_1, up-down, ['#']).

	

norule(_). 


