% Map colouring
% Possible pairs of colours of neighbour countries
n( red, green). n( red, blue). n( red, yellow).
n( green, red). n( green, blue). n( green, yellow).
n( blue, red). n( blue, green). n( blue, yellow).
n( yellow, red). n( yellow, green). n( yellow, blue).

% rules
colours(Chile, Argentina, Uruguay, Peru, Bolivia, Paraguay, Brasil, Ecuador, Colombia, Venezuela, Guyana, Surinam, TrinidadTobago, FrenchGuiana,
        Panama, CostaRica, Nicaragua, ElSalvador, Honduras, Guatemala, Belice, Cuba, Haiti, RepublicaDominicana, Bahamas,
        Mexico, USA, Canada, Alaska, Groenlandia, SEA) :-
SEA = blue, % Sea has to be coloured blue
n(Chile, SEA), n(Chile, Peru), n(Chile, Bolivia), n(Chile, Argentina),
n(Argentina, Bolivia), n(Argentina, Paraguay), n(Argentina, Brasil), n(Argentina, Uruguay), n(Argentina, SEA),
n(Uruguay, Brasil), n(Uruguay, SEA),
n(Peru, SEA), n(Peru, Ecuador), n(Peru, Colombia), n(Peru, Brasil), n(Peru, Bolivia),
n(Bolivia, Brasil), n(Bolivia, Paraguay),
n(Paraguay, Brasil), 
n(Brasil, Colombia), n(Brasil, Venezuela), n(Brasil, Guyana), n(Brasil, Surinam), n(Brasil, FrenchGuiana), n(Brasil, SEA),
n(Ecuador, SEA), n(Ecuador, Colombia),
n(Colombia, SEA), n(Colombia, Panama), n(Colombia, Venezuela),
n(Venezuela, SEA), n(Venezuela, Guyana),
n(Guyana, SEA), n(Guyana, Surinam), n(Guyana, FrenchGuiana),
n(FrenchGuiana, SEA),
n(Panama, SEA), n(Panama, CostaRica),
n(CostaRica, SEA), n(CostaRica, Nicaragua),
n(Nicaragua, SEA), n(Nicaragua, Honduras),
n(ElSalvador, SEA), n(ElSalvador, Guatemala), n(ElSalvador, Honduras),
n(Honduras, Guatemala), n(Honduras, SEA),
n(Guatemala, SEA), n(Guatemala, Mexico), n(Guatemala, Belice),
n(Belice, Mexico), n(Belice, SEA),
n(Cuba, SEA), 
n(Haiti, SEA), n(Haiti, RepublicaDominicana),
n(RepublicaDominicana, SEA),
n(Bahamas, SEA),
n(Mexico, SEA), n(Mexico, USA), 
n(USA, SEA), n(USA, Canada),
n(Canada, SEA), n(Canada, Alaska),
n(Groenlandia, SEA).



%
