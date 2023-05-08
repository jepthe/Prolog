% Scheduling a meeting
% schedule( TimeA, A1, A2, TimeB, Bl, BZ, TimeD, D1, D2):
% TimeA and experts A1, A2 assigned to session on Artificial Intelligence,
0/0 TimeB, B1, B2 assigned to session on bioinformatics, and similar for databases
schedule( Ta, Al, A2, Tb, B1, B2, Td, D1, D2) :-
session( Ta, artificial_intelligence, A1, A2), % Session A1 at time Ta, with experts A1 and A2
session( Tb, bioinformatics, B1, B2), % Bioinformatics at Tb, with experts Bl, B2
session( Td, databases, D1, D2), % Databases at Td, with experts D1 and D2
no_conﬂict( Ta, A1, A2, Tb, B1, B2), % No conﬂict between A1 and Bioinfo
no_conﬂict( Ta, A1, A2, Td, D1, D2), % No conﬂict between Databases and AI
no_conﬂict( Tb, B1, B2, Td, D1, D2). % No conﬂict between Bioinfo and Databases
% session( Time, Topic, P1, P2):
% session at Time on Topic attended by responsible experts P1, P2
session( Time, Topic, P1, P2) :-
time( Time), % Time is morning or afternoon
expert( Topic, P1), % Person P1 is expert on Topic
expert( Topic, P2), % P2 is also expert on Topic
P1 \= P2. % P1, P2 different persons
% no_conﬂict( Timel, P1, P2, Time2, Q1, Q2):
% There is no time conﬂict between two sessions at Timel and Time2
% and experts P1, P2, and Q1, Q2, respectively
no_conﬂict( Timel, _, _, Time2, _, _) :-
Timel \= Time2. % Two sessions at different times — not conﬂict
no_conﬂict( Time, P1, P2, Time, Q1, Q2) :- % Two sessions at the same time
P1 \= Q1, P1 \= Q2, % No overlap between experts
P2 \= Q1, P2 \= Q2.

0/0 Possible times of sessions
time( morning). time( afternoon).

0/0 Experts for topics
expert( bioinformatics, barbara). expert( bioinformatics, ben).
expert( artificial_intelligence, adam). expert( artiﬁciaLintelligence, ann).
expert( artificial_intelligence, barbara). expert( databases, adam).

expert( databases, danny).

 