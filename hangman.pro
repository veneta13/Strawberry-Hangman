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


a_func(press) :- add_text(G_TEXT_BOX, "a").
b_func(press) :- add_text(G_TEXT_BOX, "b").
c_func(press) :- add_text(G_TEXT_BOX, "c").
d_func(press) :- add_text(G_TEXT_BOX, "d").
e_func(press) :- add_text(G_TEXT_BOX, "e").
f_func(press) :- add_text(G_TEXT_BOX, "f").
g_func(press) :- add_text(G_TEXT_BOX, "g").
h_func(press) :- add_text(G_TEXT_BOX, "h").
i_func(press) :- add_text(G_TEXT_BOX, "i").
j_func(press) :- add_text(G_TEXT_BOX, "j").
k_func(press) :- add_text(G_TEXT_BOX, "k").
l_func(press) :- add_text(G_TEXT_BOX, "l").
m_func(press) :- add_text(G_TEXT_BOX, "m").
n_func(press) :- add_text(G_TEXT_BOX, "n").
o_func(press) :- add_text(G_TEXT_BOX, "o").
p_func(press) :- add_text(G_TEXT_BOX, "p").
q_func(press) :- add_text(G_TEXT_BOX, "q").
r_func(press) :- add_text(G_TEXT_BOX, "r").
s_func(press) :- add_text(G_TEXT_BOX, "s").
t_func(press) :- add_text(G_TEXT_BOX, "t").
u_func(press) :- add_text(G_TEXT_BOX, "u").
v_func(press) :- add_text(G_TEXT_BOX, "v").
w_func(press) :- add_text(G_TEXT_BOX, "w").
x_func(press) :- add_text(G_TEXT_BOX, "x").
y_func(press) :- add_text(G_TEXT_BOX, "y").
z_func(press) :- add_text(G_TEXT_BOX, "z").


win_func(paint) :- 
	pen(3, rgb(0, 0, 0)),       % platform color
     line(100, 250, 100, 50),    % pole
	line(70, 250, 130, 250),    % platform base
	line(100, 50, 180, 50),     % platform top
	pen(3, rgb(207, 180, 105)), % rope color
	line(180, 50, 180, 70).     % rope     