%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DIF:	1
%%% PT:	00:04	[STS: 00:12]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

map([['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#'],
['#', ' ', '.', '.', '.', '.', '#', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '#', '#', '#', '#', '#', ' ', '#', '#', '#', '#', '#', '.', '#'],
['#', '.', '.', '.', '.', '.', '.', ' ', '#', '#', '#', '#', '#', '.', '#'],
['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '.', '#'],
['#', ' ', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '.', '#'],
['#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#', '#']]).
map_size(15, 10).
num_dots(39).
pacman_start(1, 8).
initMap:- 
	addSolidObject('#').
norule(_).
