menu :-
    nl, write(''), nl,
    write('Welcome to WORKO'), nl, nl,
    write('Where you can find your something'), nl, nl,
    write('Please choose the type of products you are interested in'), nl,
    write('------------------------'), nl,
    write('1 - Handmade products'), nl,
    write('2 - Ready to sale products'), nl, nl,
    write('Enter 0 to exit'), nl, nl,
    write('-->> Enter option: '), nl, nl,
    read(X),
    choice(X).

choice(0) :-
    halt.
choice(1) :-
    nl,
    write('Please enter your budget'), nl,
    write('------------------------'), nl,
    write('1. Budget greater than or equal to 20000 and less than or equal to 100000'), nl,
    write('2. Budget greater than or equal to 5000 and less than or equal to 10000'), nl,
    write('3. Budget greater than or equal to 1000 and less than or equal to 5000'), nl,
    write('4. Budget less than 500'), nl,
    read(Budget),
    ropt_handmade(Budget).
choice(2) :-
    nl,
    write('Please enter your budget'), nl,
    write('------------------------'), nl,
    write('1. Budget greater than or equal to 20000 and less than or equal to 100000'), nl,
    write('2. Budget greater than or equal to 5000 and less than or equal to 10000'), nl,
    write('3. Budget greater than or equal to 1000 and less than or equal to 5000'), nl,
    write('4. Budget less than 500'), nl,
    read(Budget),
    ropt_ready(Budget).
choice(_) :-
    write('Invalid option. Please try again.'), nl,
    menu.

ropt_handmade(Budget) :-
    % Suggest business ideas for a high budget
    Budget >= 20000, Budget =< 100000,
    write('1- Baking:'), nl,
    write('   - Baking Classes'), nl,
    write('   - Custom Cakes'), nl,
    write('2- Crochet:'), nl,
    write('   - Crochet Home Decor'), nl,
    write('   - Crochet Fashion'), nl,
    write('   - Crochet Baby Items'), nl,
    write('3- Designing:'), nl,
    write('   - Handmade Furniture'), nl,
    write('   - Leather Goods'), nl,
    menu.

ropt_handmade(Budget) :-
    % Suggest business ideas for a medium budget
    Budget >= 5000, Budget =< 10000,
    write('1- Baking:'), nl,
    write('   - Quality Control and Customer Feedback'), nl,
    write('   - Online Bakery classes'), nl,
    write('2- Crochet:'), nl,
    write('   - Amigurumi Toys'), nl,
    write('   - Crochet Workshops or Classes'), nl,
    write('3- Designing:'), nl,
    write('   - Handmade Stationery'), nl,
    write('   - Artistic Home Decor'), nl,
    menu.

ropt_handmade(Budget) :-
    % Suggest business ideas for a moderate budget
    Budget >= 1000, Budget =< 5000,
    write('1- Baking:'), nl,
    write('   - Healthy Baked Goods'), nl,
    write('   - Pastry Platters'), nl,
    write('2- Crochet:'), nl,
    write('   - Scarves and Cowls'), nl,
    write('3- Designing:'), nl,
    write('   - Handmade Soaps and Bath Products'), nl,
    write('   - Customized T-shirts and Apparel'), nl,
    menu.

ropt_handmade(Budget) :-
    % Suggest business ideas for a low budget
    Budget >= 500, Budget =< 1000,
    write('1- Baking'), nl,
    write('- Cupcakes'), nl,
    write('- Brownies'), nl,
    write('- Muffins'), nl,
    write('2- Crochet'), nl,
    write('- Hats'), nl,
    write('3- Designing:'), nl,
    write('- Upcycled Products'), nl,
    menu.

ropt_handmade(Budget) :-
    % Suggest business ideas for a very low budget
    Budget < 500,
    write('Sorry, your budget is not enough to start a business.'), nl,
    menu.

ropt_ready(Budget) :-
    % Suggest business ideas for a high budget
    Budget >= 20000, Budget =< 100000,
    write('1- You can sell electronic machines like:'), nl,
    write('   - Sport machines'), nl,
    write('   - Kitchen machines'), nl,
    write('   - Smartphones'), nl,
    write('2- You can sell jewelry like:'), nl,
    write('   - Gemstones'), nl,
    write('3- You can sell food truck'), nl,
    menu.

ropt_ready(Budget) :-
    % Suggest business ideas for a medium budget
    Budget >= 5000, Budget =< 10000,
    write('You can sell animal supplies like:'), nl,
    write('   - Toys and food'), nl,
    write('You can sell newborn supplies like:'), nl,
    write('   - Clothes, blankets, beds'), nl,
    menu.

ropt_ready(Budget) :-
    % Suggest business ideas for a moderate budget
    Budget >= 1000, Budget =< 5000,
    write('1- You can sell bags'), nl,
    write('2- You can sell watches'), nl,
    menu.

ropt_ready(Budget) :-
    % Suggest business ideas for a low budget
    Budget >= 500, Budget =< 1000,
    write('1- You can sell phone cases'), nl,
    write('2- You can sell iPad pen'), nl,
    menu.

ropt_ready(Budget) :-
    % Suggest business ideas for a very low budget
    Budget < 500,
    write('Sorry, your budget is not enough to start a business.'), nl,
    menu.









