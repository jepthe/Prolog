% Map colouring
% Possible pairs of colours of neighbour countries
n( red, green). n( red, blue). n( red, yellow).
n( green, red). n( green, blue). n( green, yellow).
n( blue, red). n( blue, green). n( blue, yellow).
n( yellow, red). n( yellow, green). n( yellow, blue).

% Part of Europe (Italy = Italy, Slovenia = Slovenia, Croacia = Croatia, Switzerland = Switzerland, ...)
% Rules creadas de acuerdo con los paises vecinos gráficamente
colours( Italy, Slovenia, Croacia, Switzerland, Austria, Hungary, Germany, Slovakia, CzechRepublic, Poland, SEA) :-
SEA = blue, % Adriatic Sea has to be coloured blue
n( Italy, Switzerland), n( Italy, Austria), n( Italy, Slovenia), n( Italy, SEA), % Italy and Switzerland are neighbours, etc.
n( Slovenia, Austria), n( Slovenia, Croacia), n( Slovenia, Hungary), n( Slovenia, SEA),
n( Croacia, Hungary), n( Croacia, SEA),
n( Austria, Switzerland), n( Austria, Germany), n( Austria, Hungary), n( Austria, Slovakia), n( Austria, CzechRepublic),
n( Switzerland, Germany),
n( Hungary, Slovakia),
n( Germany, Slovakia), n( Germany, CzechRepublic), n( Germany, Poland),%no son vecinos n( Germany, Slovakia) no sé por qué viene así
n( Slovakia, CzechRepublic), n( Slovakia, Poland),
n( CzechRepublic, Poland).

%question colours( Italy, Slovenia, Croacia, Switzerland, Austria, Hungary, Germany, Slovakia, CzechRepublic, Poland, SEA).