invento(edison,foco).
invento(colmeraurer,prolog).
coeficiente_intelectual(einstein,210).
coeficiente_intelectual(edison,160).
coeficiente_intelectual(waldorf,90).

genio(Persona):-coeficiente_intelectual(Persona,CI), CI > 150.
genio(Persona):-invento(Persona,_).

invento_inteligente(Invento) :- invento(Persona,Invento),coeficiente_intelectual(Persona,CI), CI >= 160.