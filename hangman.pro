?- window(title("Strawberry Hangman"), pos(100, 50), size(555, 500)).


win_func(init):-
	window_brush(_, rgb(214,211,176)),

	G_WORD := "BANANA",
	G_WRONG_GUESS_NUM := 0,
	LETTERS := str_length(G_WORD),
	make_wildcard(LETTERS, Wildcard),
	G_RESULT := Wildcard,
	G_TEXT_BOX := edit( pos(50, 300), size(435, 35), text(G_RESULT)),
	
	button(class(a_func), text("A"), pos(10,350), size(35,35)),
	button(class(b_func), text("B"), pos(50,350), size(35,35)),
	button(class(c_func), text("C"), pos(90,350), size(35,35)),
	button(class(d_func), text("D"), pos(130,350), size(35,35)),
	button(class(e_func), text("E"), pos(170,350), size(35,35)),
	button(class(f_func), text("F"), pos(210,350), size(35,35)),
	button(class(g_func), text("G"), pos(250,350), size(35,35)),
	button(class(h_func), text("H"), pos(290,350), size(35,35)),
	button(class(i_func), text("I"), pos(330,350), size(35,35)),
	button(class(j_func), text("J"), pos(370,350), size(35,35)),
	button(class(k_func), text("K"), pos(410,350), size(35,35)),
	button(class(l_func), text("L"), pos(450,350), size(35,35)),
	button(class(m_func), text("M"), pos(490,350), size(35,35)),
	button(class(n_func), text("N"), pos(10,400), size(35,35)),
	button(class(o_func), text("O"), pos(50,400), size(35,35)),
	button(class(p_func), text("P"), pos(90,400), size(35,35)),
	button(class(q_func), text("Q"), pos(130,400), size(35,35)),
	button(class(r_func), text("R"), pos(170,400), size(35,35)),
	button(class(s_func), text("S"), pos(210,400), size(35,35)),
	button(class(t_func), text("T"), pos(250,400), size(35,35)),
	button(class(u_func), text("U"), pos(290,400), size(35,35)),
	button(class(v_func), text("V"), pos(330,400), size(35,35)),
	button(class(w_func), text("W"), pos(370,400), size(35,35)),
	button(class(x_func), text("X"), pos(410,400), size(35,35)),
	button(class(y_func), text("Y"), pos(450,400), size(35,35)),
	button(class(z_func), text("Z"), pos(490,400), size(35,35)).


win_func(paint) :- 
	for(I, 1, G_WRONG_GUESS_NUM),
		paint(I),	
		fail.
	

make_wildcard(1, "_").
make_wildcard(N, R1 + " _") :-
	N1 is N - 1,
	make_wildcard(N1, R1).


a_func(press) :- check_letter("A").
b_func(press) :- check_letter("B").
c_func(press) :- check_letter("C").
d_func(press) :- check_letter("D").
e_func(press) :- check_letter("E").
f_func(press) :- check_letter("F").
g_func(press) :- check_letter("G").
h_func(press) :- check_letter("H").
i_func(press) :- check_letter("I").
j_func(press) :- check_letter("J").
k_func(press) :- check_letter("K").
l_func(press) :- check_letter("L").
m_func(press) :- check_letter("M").
n_func(press) :- check_letter("N").
o_func(press) :- check_letter("O").
p_func(press) :- check_letter("P").
q_func(press) :- check_letter("Q").
r_func(press) :- check_letter("R").
s_func(press) :- check_letter("S").
t_func(press) :- check_letter("T").
u_func(press) :- check_letter("U").
v_func(press) :- check_letter("V").
w_func(press) :- check_letter("W").
x_func(press) :- check_letter("X").
y_func(press) :- check_letter("Y").
z_func(press) :- check_letter("Z").


paint(1) :-
	pen(3, rgb(0, 0, 0)),                    % platform color
	line(100, 250, 100, 50).                 % pole
paint(2) :-
	line(70, 250, 130, 250).                 % platform base
paint(3) :-
	line(100, 50, 180, 50).                  % platform top
paint(4) :-
	pen(3, rgb(207, 180, 105)),              % rope color
	line(180, 50, 180, 70).                  % rope
paint(5) :-
	pen(2, rgb(232, 190, 172)),              % head color
	brush(rgb(232, 190, 172)),               % head color
	round_rect(150, 70, 210, 130, 100, 100). % head
paint(6) :-
	pen(2, rgb(17, 145, 6)),                 % hat color
	brush(rgb(17, 145, 6)),                  % hat color
	line(150, 80, 210, 80),                  % hat trim
	rect(160, 60, 200, 80).                  % hat
paint(7) :-
	pen(2, rgb(17, 145, 6)),                 % blouse color
	line(180, 130, 180, 180).                % blouse
paint(8) :-
	line(180, 140, 200, 160).                % right arm
paint(9) :-
	line(180, 140, 160, 160).                % left arm
paint(10) :-
	pen(2, rgb(245, 66, 93)),                % pants color
	line(180, 180, 190, 230).                % rigth leg
paint(11) :-
	line(180, 180, 170, 230).                % left leg


check_letter(L) :- 
	(
	sub_string(L, G_WORD, S, 1)->
		replace_letter(L),
		set_text(G_RESULT, G_TEXT_BOX)
	else
		G_WRONG_GUESS_NUM := G_WRONG_GUESS_NUM + 1
	),
	update_window(_).


replace_letter(L) :-
	sub_string(L, G_WORD, S, 1),
	Begin := sub_string(G_RESULT, 0, 2*S),
	End := string_end(G_RESULT, 2*S+1, _), 
	G_RESULT := Begin + L + End,
	fail.
replace_letter(L).
	
