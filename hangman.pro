?- window(title("Strawberry Hangman"), pos(100, 50), size(555, 500)).

win_func(init):-
	window_brush(_, rgb(214,211,176)),
	WORD := "BANANA",
	G_TEXT_BOX := edit( pos(50, 300), size(435, 35)),
	
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


a_func(press) :- add_text(G_TEXT_BOX, "A").
b_func(press) :- add_text(G_TEXT_BOX, "B").
c_func(press) :- add_text(G_TEXT_BOX, "C").
d_func(press) :- add_text(G_TEXT_BOX, "D").
e_func(press) :- add_text(G_TEXT_BOX, "E").
f_func(press) :- add_text(G_TEXT_BOX, "F").
g_func(press) :- add_text(G_TEXT_BOX, "G").
h_func(press) :- add_text(G_TEXT_BOX, "H").
i_func(press) :- add_text(G_TEXT_BOX, "I").
j_func(press) :- add_text(G_TEXT_BOX, "J").
k_func(press) :- add_text(G_TEXT_BOX, "K").
l_func(press) :- add_text(G_TEXT_BOX, "L").
m_func(press) :- add_text(G_TEXT_BOX, "M").
n_func(press) :- add_text(G_TEXT_BOX, "N").
o_func(press) :- add_text(G_TEXT_BOX, "O").
p_func(press) :- add_text(G_TEXT_BOX, "P").
q_func(press) :- add_text(G_TEXT_BOX, "Q").
r_func(press) :- add_text(G_TEXT_BOX, "R").
s_func(press) :- add_text(G_TEXT_BOX, "S").
t_func(press) :- add_text(G_TEXT_BOX, "T").
u_func(press) :- add_text(G_TEXT_BOX, "U").
v_func(press) :- add_text(G_TEXT_BOX, "V").
w_func(press) :- add_text(G_TEXT_BOX, "W").
x_func(press) :- add_text(G_TEXT_BOX, "X").
y_func(press) :- add_text(G_TEXT_BOX, "Y").
z_func(press) :- add_text(G_TEXT_BOX, "Z").


win_func(paint) :- 
	pen(3, rgb(0, 0, 0)),                    % platform color
	line(100, 250, 100, 50),                 % pole
	line(70, 250, 130, 250),                 % platform base
	line(100, 50, 180, 50),                  % platform top
	pen(3, rgb(207, 180, 105)),              % rope color
	line(180, 50, 180, 70),                  % rope
	pen(2, rgb(232, 190, 172)),              % head color
	brush(rgb(232, 190, 172)),               % head color
	round_rect(150, 70, 210, 130, 100, 100), % head
	pen(2, rgb(17, 145, 6)),                 % hat color
	brush(rgb(17, 145, 6)),                  % hat color
	line(150, 80, 210, 80),                  % hat trim
	rect(160, 60, 200, 80),                  % hat
	pen(2, rgb(17, 145, 6)),                 % blouse color
	line(180, 130, 180, 180),                % blouse
	line(180, 140, 200, 160),                % right arm
	line(180, 140, 160, 160),                % left arm
	pen(2, rgb(245, 66, 93)),                % pants color
	line(180, 180, 190, 230),                % rigth leg
	line(180, 180, 170, 230).                % left leg