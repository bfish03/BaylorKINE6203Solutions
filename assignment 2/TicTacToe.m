%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Tic-Tac-Toe Assigment
%
% Created by: Baylor Fish
%
% Due Date: October 7th, 2021
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
clear;
% Initialize variables
turnMessage = 'Please choose an available space and enter its corresponding number';
continueGame = 0;
%Section below is the prompt to start the game%
while continueGame == 0
disp("Let's play Tic-Tac-Toe")
prompt = input("Would you like to play? Type 'Y' for yes and 'N' for no.");
    if prompt == Y
        disp("Prepare to lose")
    else
        disp("Bye")
        break
    end

% Creating game board and computer first move
gameBoard = ['1' '2' '3' '4' '5' '6' '7' '8' '9'];
disp("Available places will display their corresponding number. The computer will go first and will use 'X' as its game piece.")
disp("Your game piece will be 'O'. The computer, me, will go first.")
disp("Here is the game board.")
gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
gameBoard(5) = 'X';
disp(gameBoardDisplay);
        
% Generate first human move
humanMove = input(turnMessage);

% Check step for valid response
    if (humanMove < 1) || (humanMove > 9)
        disp('Please enter a valid response.');
        humanMove = input(turnMessage);
    end

    

% Check step for space availablity
    if (gameBoard(humanMove) == 'X') || (gameBoard(humanMove) == 'O')
        disp('This spot is already taken. Please select an available spot.');
        humanMove = input(turnMessage);
    end
    gameBoard(humanMove) = 'O';
    gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
    disp(gameBoardDisplay)

% Computers 2nd turn
    disp('My turn')
    if (gameBoard(1) == 'O')
        gameBoard(7) = 'X';
    else
        gameBoard(1) = 'X';
    end
    gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
    disp(gameBoardDisplay)

% Players 2nd turn
    humanMove = input(turnMessage);

% Check step for valid response
    if (humanMove < 1) || (humanMove > 9)
        disp('Please enter a valid response.');
        humanMove = input(turnMessage);
    end

% Check step for space availablity
    if (gameBoard(humanMove) == 'X') || (gameBoard(humanMove) == 'O')
        disp('This spot is already taken. Please select an available spot.');
        humanMove = input(turnMessage);
    end
    gameBoard(humanMove) = 'O';
    gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
    disp(gameBoardDisplay)

% Computers 3rd turn
    disp('My turn')
% Generating Computer turn
    if (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == '3')
        gameBoard(3) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(1) == '1')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == '9')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == '9')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == '7')
        gameBoard(7) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == '3')
        gameBoard(3) = 'X';
    elseif (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == '3')
        gameBoard(3) = 'X';
    elseif (gameBoard(2) == 'O') && (gameBoard(3) == 'O') && (gameBoard(1) == '1')
        gameBoard(1) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(1) == 'O') && (gameBoard(2) == '2')
        gameBoard(2) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == '9')
        gameBoard(9) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(9) == 'O') && (gameBoard(6) == '6')
        gameBoard(6) = 'X';
    elseif (gameBoard(6) == 'O') && (gameBoard(9) == 'O') && (gameBoard(3) == '3')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == 'O') && (gameBoard(8) == 'O') && (gameBoard(7) == '7')
        gameBoard(7) = 'X';
    elseif (gameBoard(8) == 'O') && (gameBoard(7) == 'O') && (gameBoard(9) == '9')
        gameBoard(9) = 'X';
    elseif (gameBoard(7) == 'O') && (gameBoard(9) == 'O') && (gameBoard(8) == '8')
        gameBoard(8) = 'X';
    elseif (gameBoard(1) == '1')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == '7')
        gameBoard(7) = 'X';
    elseif (gameBoard(3) == '3')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == '9')
        gameBoard(9) = 'X';
    elseif (gameBoard(2) == '2')
        gameBoard(2) = 'X';
    elseif (gameBoard(4) == '4')
        gameBoard(4) = 'X';
    elseif (gameBoard(6) == '6')
        gameBoard(6) = 'X';
    elseif (gameBoard(8) == '8')
        gameBoard(8) = 'X';
    end

    gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
    disp(gameBoardDisplay);

% Check for computer win conditions
    if (gameBoard(1) == 'X') && (gameBoard(2) == 'X') && (gameBoard(3) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'X') && (gameBoard(4) == 'X') && (gameBoard(7) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(2) == 'X') && (gameBoard(5) == 'X') && (gameBoard(8) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'X') && (gameBoard(6) == 'X') && (gameBoard(9) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(4) == 'X') && (gameBoard(5) == 'X') && (gameBoard(6) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(7) == 'X') && (gameBoard(8) == 'X') && (gameBoard(9)== 'X')
        disp('I win!');
        continueGame = 1;
        break
    end

% Human 3rd move
humanMove = input(turnMessage);

% Check step for valid response
    if (humanMove < 1) || (humanMove > 9)
        disp('Please enter a valid response.');
        humanMove = input(turnMessage);
    end

% Check step for space availablity
    if (gameBoard(humanMove) == 'X') || (gameBoard(humanMove) == 'O')
        disp('This spot is already taken. Please select an available spot.');
        humanMove = input(turnMessage);
    end

gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
    gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
    gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
gameBoard(humanMove) = 'O';

% Check for human win conditions
    if (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'O') && (gameBoard(5) == 'O') && (gameBoard(9) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'O') && (gameBoard(4) == 'O') && (gameBoard(7) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(2) == 'O') && (gameBoard(5) == 'O') && (gameBoard(8) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'O') && (gameBoard(5) == 'O') && (gameBoard(7) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(4) == 'O') && (gameBoard(5) == 'O') && (gameBoard(6) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(7) == 'O') && (gameBoard(8) == 'O') && (gameBoard(9)== 'O')
        disp('You win!');
        continueGame = 1;
        break
    end

% Computers 4th turn
disp('My turn');

% Generating Computer turn
    if (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(2) == 'O') && (gameBoard(3) == 'O') && (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(1) == 'O') && (gameBoard(2) == ' ')
        gameBoard(2) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(9) == 'O') && (gameBoard(6) == ' ')
        gameBoard(6) = 'X';
    elseif (gameBoard(6) == 'O') && (gameBoard(9) == 'O') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == 'O') && (gameBoard(8) == 'O') && (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(8) == 'O') && (gameBoard(7) == 'O') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(7) == 'O') && (gameBoard(9) == 'O') && (gameBoard(8) == ' ')
        gameBoard(8) = 'X';
    elseif (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(2) == ' ')
        gameBoard(2) = 'X';
    elseif (gameBoard(4) == ' ')
        gameBoard(4) = 'X';
    elseif (gameBoard(6) == ' ')
        gameBoard(6) = 'X';
    elseif (gameBoard(8) == ' ')
        gameBoard(8) = 'X';
    end

gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
disp(gameBoardDisplay);

% 4th human turn
humanMove = input(turnMessage);

% Check step for valid response
    if (humanMove < 1) || (humanMove > 9)
        disp('Please enter a valid response.');
        humanMove = input(turnMessage);
    end

% Check step for space availablity
    if (gameBoard(humanMove) == 'X') || (gameBoard(humanMove) == 'O')
        disp('This spot is already taken. Please select an available spot.');
        humanMove = input(turnMessage);
    end

gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
gameBoard(humanMove) = 'O';

% Check for human win conditions
    if (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'O') && (gameBoard(5) == 'O') && (gameBoard(9) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'O') && (gameBoard(4) == 'O') && (gameBoard(7) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(2) == 'O') && (gameBoard(5) == 'O') && (gameBoard(8) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'O') && (gameBoard(5) == 'O') && (gameBoard(7) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(4) == 'O') && (gameBoard(5) == 'O') && (gameBoard(6) == 'O')
        disp('You win!');
        continueGame = 1;
        break
    elseif (gameBoard(7) == 'O') && (gameBoard(8) == 'O') && (gameBoard(9)== 'O')
        disp('You win!');
        continueGame = 1;
        break
    end

% Computers 5th turn
disp('My turn');

% Generating Computer turn
    if (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(1) == 'O') && (gameBoard(2) == 'O') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(2) == 'O') && (gameBoard(3) == 'O') && (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(1) == 'O') && (gameBoard(2) == ' ')
        gameBoard(2) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(6) == 'O') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(3) == 'O') && (gameBoard(9) == 'O') && (gameBoard(6) == ' ')
        gameBoard(6) = 'X';
    elseif (gameBoard(6) == 'O') && (gameBoard(9) == 'O') && (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == 'O') && (gameBoard(8) == 'O') && (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(8) == 'O') && (gameBoard(7) == 'O') && (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(7) == 'O') && (gameBoard(9) == 'O') && (gameBoard(8) == ' ')
        gameBoard(8) = 'X';
    elseif (gameBoard(1) == ' ')
        gameBoard(1) = 'X';
    elseif (gameBoard(7) == ' ')
        gameBoard(7) = 'X';
    elseif (gameBoard(3) == ' ')
        gameBoard(3) = 'X';
    elseif (gameBoard(9) == ' ')
        gameBoard(9) = 'X';
    elseif (gameBoard(2) == ' ')
        gameBoard(2) = 'X';
    elseif (gameBoard(4) == ' ')
        gameBoard(4) = 'X';
    elseif (gameBoard(6) == ' ')
        gameBoard(6) = 'X';
    elseif (gameBoard(8) == ' ')
        gameBoard(8) = 'X';
    end

gameBoardDisplay = ['     ', gameBoard(1), ' |  ', gameBoard(2), '  | ', ... 
     gameBoard(3), newline, '   ----|-----|-----', newline, '     ', ...
     gameBoard(4) ' |  ', gameBoard(5), '  | ', gameBoard(6), newline,...
     '   ----|-----|-----', newline, '     ', gameBoard(7), ' |  ',gameBoard(8),...
     '  | ', gameBoard(9), newline];
disp(gameBoardDisplay);

% Check for computer win conditions
    if (gameBoard(1) == 'X') && (gameBoard(2) == 'X') && (gameBoard(3) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'X') && (gameBoard(5) == 'X') && (gameBoard(9) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(1) == 'X') && (gameBoard(4) == 'X') && (gameBoard(7) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(2) == 'X') && (gameBoard(5) == 'X') && (gameBoard(8) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'X') && (gameBoard(6) == 'X') && (gameBoard(9) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(3) == 'X') && (gameBoard(5) == 'X') && (gameBoard(7) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(4) == 'X') && (gameBoard(5) == 'X') && (gameBoard(6) == 'X')
        disp('I win!');
        continueGame = 1;
        break
    elseif (gameBoard(7) == 'X') && (gameBoard(8) == 'X') && (gameBoard(9)== 'X')
        disp('I win!');
        continueGame = 1;
        break
    else
        disp('Tie. This would never be allowed in baseball.')
        continueGame = 1;
        break
    end
end