class Game
	attr_accessor :players , :board , :current_player, :other_player

	def initialize
		
		intro_text
		intro_sentence
		system "clear"
		intro_text
		initialization
		perform

	end


	def intro_sentence

		puts " "
		puts "------------->> BIENVENUE À TOI JOUEUR <<---------------- 
	
Dans ce jeu, tu te retrouves à participer à une partie de OXO. 
Tu dois te montrer extrêmement plus stratégique que ton adversaire.
Or, les possibilités quasi-infinies en font un jeu très complexe.. 
Laisse toi prendre par une partie extrêmement passionnante. 
Auras-tu assez de force pour rivaliser ?
	
POUR COMMENCER UNE PARTIE, APPUYER SUR [ENTRÉE]"

	gets.chomp		#mettre en commentaire pour mode auto.
	puts "
*********************************************************
***                   INSTRUCTIONS                    ***
*********************************************************

À CHAQUE TOUR, TU SERAS CONFRONTÉ À UNE GRILLE DE 9 CASES.
TU DEVRAS CHOISIR UNE DES 9 CASES AFIN D'Y PLACER TON SYMBOLE.
SI TU ALIGNES 3 SYMBOLES SIMILAIRES, TU GAGNES LA PARTIE :

-> Lorsque ce sera ton tour, note la case à laquelle tu souhaites te placer.
-> Appuie alors sur la touche [ENTER].
-> Ta commande est enregistré, tu passes alors la main à ton adversaire.

SOIT LE PLUS STRATÉGIQUE ET REMPORTE CETTE PARTIE HAUT LA MAIN !
PRÊT ? PARTEZ !




==================== DÉBUT DE PARTIE ==================== "
		puts "Appuyez sur [ENTER]"
		gets.chomp

	end


	def instruction
		
	end




	def initialization

		puts " "
		puts "------------->> INITIALISATION DES JOUEURS <<----------------"
		puts " "
		puts "Quel est ton nom Joueur 1 : "
		print ">"
		name_player1 = gets.chomp
		player_1 = Player.new(name_player1)
		puts "#{name_player1} obtient le signe #{player_1.sign} !"

		puts " "
		puts "Quel est ton nom Joueur 2 : "
		print ">"
		name_player2 = gets.chomp
		player_2 = Player.new(name_player2)
		puts "#{name_player2} obtient le signe #{player_2.sign} !"

		@players = [player_1, player_2]
		@current_player, @other_player = @players.shuffle
		puts " "
		puts "#{@current_player.name} a été sélectionné aléatoirement pour commencer la partie."
		puts " "
		puts "QUE LA PARTIE COMMENCE ! [ENTER]"
		gets.chomp
		@board = Board.new
		
	end



	def choose_action

  		puts "#{@current_player.name}: ENTRE LA POSITION SUR LAQUELLE TU VEUX TE PLACER :"
  		choosen_action = gets.chomp

  		return choosen_action

	end




	def choosen_action_result(choosen_action)


	  if choosen_action == "A1"
	  	if @board.array_board_cases[0][0].value == "X" || @board.array_board_cases[0][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][0].value = @current_player.sign	
	  	end

	  elsif choosen_action == "a1"
	  	if @board.array_board_cases[0][0].value == "X" || @board.array_board_cases[0][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][0].value = @current_player.sign
	  	end
	  	
	  elsif choosen_action == "A2"
	  	if @board.array_board_cases[0][1].value == "X" || @board.array_board_cases[0][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][1].value = @current_player.sign
	  	end
		
	  elsif choosen_action == "a2"
	  	if @board.array_board_cases[0][1].value == "X" || @board.array_board_cases[0][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][1].value = @current_player.sign	  		
	  	end
			  	
	  elsif choosen_action == "A3"
	  	if @board.array_board_cases[0][2].value == "X" || @board.array_board_cases[0][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][2].value = @current_player.sign  		
	  	end
		
	  elsif choosen_action == "a3"
	  	if @board.array_board_cases[0][2].value == "X" || @board.array_board_cases[0][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[0][2].value = @current_player.sign	  		
	  	end
		
	  elsif choosen_action == "B1"
	  	if @board.array_board_cases[1][0].value == "X" || @board.array_board_cases[1][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][0].value = @current_player.sign	  		
	  	end
		
	  elsif choosen_action == "b1"
	  	if @board.array_board_cases[1][0].value == "X" || @board.array_board_cases[1][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][0].value = @current_player.sign	  		
	  	end
		
	  elsif choosen_action == "B2"
	  	if @board.array_board_cases[1][1].value == "X" || @board.array_board_cases[1][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][1].value = @current_player.sign	  		
	  	end
		
	  elsif choosen_action == "b2"
	  	if @board.array_board_cases[1][1].value == "X" || @board.array_board_cases[1][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][1].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "B3"
	  	if @board.array_board_cases[1][2].value == "X" || @board.array_board_cases[1][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][2].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "b3"
	  	if @board.array_board_cases[1][2].value == "X" || @board.array_board_cases[1][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[1][2].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "C1"
	  	if @board.array_board_cases[2][0].value == "X" || @board.array_board_cases[2][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][0].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "c1"
	  	if @board.array_board_cases[2][0].value == "X" || @board.array_board_cases[2][0].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][0].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "C2"
	  	if @board.array_board_cases[2][1].value == "X" || @board.array_board_cases[2][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][1].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "c2"
	  	if @board.array_board_cases[2][1].value == "X" || @board.array_board_cases[2][1].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][1].value = @current_player.sign	
	  	end

	  elsif choosen_action == "C3"
	  	if @board.array_board_cases[2][2].value == "X" || @board.array_board_cases[2][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][2].value = @current_player.sign	  		
	  	end

	  elsif choosen_action == "c3"
	  	if @board.array_board_cases[2][2].value == "X" || @board.array_board_cases[2][2].value == "O"
	  		puts "CETTE CASE EST DÉJÀ PRISE ! VEUILLEZ RÉESSAYER !"
	  		choosen_action = choose_action
	  		choosen_action_result(choosen_action)
	  	else @board.array_board_cases[2][2].value = @current_player.sign	  		
	  	end

	  else puts "CETTE POSITION EST INEXISTANTE."
	  	choosen_action = choose_action
	  	choosen_action_result(choosen_action)
	  	
	  end

	end




	def switch_players

		@current_player, @other_player = @other_player, @current_player

	end




	def round_num(turn)
		puts " "
		puts ".------------------------------------------------------------------------------------."
		puts "|                                   |TOUR N°#{turn}|                                       |" 
		puts "¤------------------------------------------------------------------------------------¤"
		
	end






	def try_again

		puts "RECOMMENCER UNE NOUVELLE PARTIE ? [Y/N]"
		answer = gets.chomp
		if answer == "Y" || answer == "y"
			system "clear"
			Game.new

		elsif answer == "N" || answer == "n"
			
		else puts "COMMANDE INCORRECTE."
			try_again

		end
		
	end





	def intro_text

		puts "
    ██████████╗██████╗    ████████╗█████╗ ██████╗    ████████╗██████╗███████╗
    ╚══██╔══████╔════╝    ╚══██╔══██╔══████╔════╝    ╚══██╔══██╔═══████╔════╝
       ██║  ████║            ██║  █████████║            ██║  ██║   ███████╗  
       ██║  ████║            ██║  ██╔══████║            ██║  ██║   ████╔══╝  
       ██║  ██╚██████╗       ██║  ██║  ██╚██████╗       ██║  ╚██████╔███████╗
       ╚═╝  ╚═╝╚═════╝       ╚═╝  ╚═╝  ╚═╝╚═════╝       ╚═╝   ╚═════╝╚══════╝
                                                                         "
        puts "
        ____ _  _ ____    ____ ____  __  __       ___  __  _  _ ____ 
       (_  _/ )( (  __)  (  _ (  __)/ _\\(  )     / __)/ _\\( \\/ (  __)
         )( ) __ () _)    )   /) _)/    / (_/\\  ( (_ /    / \\/ \\) _) 
        (__)\\_)(_(____)  (__\\_(____\\_/\\_\\____/   \\___\\_/\\_\\_)(_(____)
        "
		puts "______________________________________________________________________________________"
		puts " "
		
	end








	def victory_text

		puts "
     ______ __ __       ____  _____      ____  ____  ____ ____    ___      __ 
    |      |  |  |     /    |/ ___/     /    |/    |/    |    \\  /  _]    |  |
    |      |  |  |    |  o  (   \\_     |   __|  o  |   __|  _  |/  [_     |  |
    |_|  |_|  |  |    |     |\\__  |    |  |  |     |  |  |  |  |    _]    |__|
      |  | |  :  |    |  _  |/  \\ |    |  |_ |  _  |  |_ |  |  |   [_      __ 
      |  | |     |    |  |  |\\    |    |     |  |  |     |  |  |     |    |  |
      |__|  \\__,_|    |__|__| \\___|    |___,_|__|__|___,_|__|__|_____|    |__|
       "

		puts "--------------------------------------------------------------------------------------"
		puts " "
    	puts "Le joueur #{@current_player.name} a gagné la partie ! Félicitation !"
                                                                          
	end






	def loose_text

		puts "
       ___    __ __ __   ___    __            
      /  _]  /  |  |  | /  _]  /  ]           
     /  [_  /  /|  |  |/  [_  /  /            
    |    _]/  / |  _  |    _]/  /             
    |   [_/   \\_|  |  |   [_/   \\_      __ __ 
    |     \\     |  |  |     \\     |    |  |  |
    |_____|\\____|__|__|_____|\\____|    |__|__|
     "

		puts "--------------------------------------------------------------------------------------"
		puts " "
    	puts "La partie se termine sur une égalité."
                                                                          
	end








	def perform

		turn = 1

		while turn < 10

			system "clear"
			intro_text
			round_num(turn)
			Show.new(@board)
			choosen_action = choose_action
			# until @board.case_empty?(choosen_action) #choosen_action > 0 && choice < 10 &&
   #          	puts "Mauvaise case ! Réessaie pour voir"
   #          	choosen_action = gets.chomp.to_i # sinon on redemande un choix au joueur
   #          end
			choosen_action_result(choosen_action) 
			system "clear"
			intro_text

			if @board.victory?
				victory_text
				Show.new(@board)
				break
				try_again
			end


			switch_players

			turn += 1

		end

		if !@board.victory?
			system "clear"
			intro_text
			loose_text
			Show.new(@board)
		end

		try_again
		
	end

	        












	 


end


#@info_player = [player, player.value_player, choice]