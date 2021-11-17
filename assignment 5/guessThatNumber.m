function guessThatNumber()  % *** WARNING: CONTAINS INTENTIONAL BUGS! ***
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME:
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (buggy)\n\n', ...
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced 
% Bug 2: Found while running the script. OR operator did not allow it to
% accept any of the values, but fixed with replacement to AND operator.
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner % Bug 1: Found while initially running the script, 
    % and is a misuse of the '=' function because level is not a variable that
    % you want to assigna a value to. Fixed with '==' to evaluate the
    % statement for 'beginner' value during conditional statement.

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest; 
% Bug 3: Found just by reading through the script. Issue was that the
% variable 'advancedHighest' was written 'advancedhighest' and not with the
% capitol H. Fixed by replacing lower case h with capitol H.
end

% randomly select secret number between 1 and highest for level of play

secretNumber = randi(highest);     
% Bug 4: While running script, noticed it would give the same value no
% matter what level of play was entered. Fixed by allowing the secret
% number to be generated between 1 and the highest number allowed for the
% level of play.

% initialize number of guesses and User_guess

numOfTries = 0;
% Bug 11: Found while reading the script. Noticed that the number of tries
% would be displayed as one more than the actual value because variable was
% initialized as one. Fixed by reinitializing variable to 0.
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest
% Bug 10: Found while trying to guess the highest possible value for the
% game. Would not allow the highest value to be guessed. Fixed by removing
% the '='.
fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber
% Bug 5: Found when I noticed that while the condition is displaying 'guess
% is too low', the actual condition was checking if the user guess was
% larger. Fixed by switching the '>' to '<'.
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber 
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1 && userGuess == secretNumber
% Bug 6: Found while running and it would always display that I won on the
% first try, even when I was wrong. Fixed by inserting the AND operator and
% checking that the user guess is equal to the secret number.
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);
% Bug 7: Found while running the script. Noticed it would not have an input
% for the variable %d in the code, so numOfTries was added to update for
% the correct amount of tries it took to guess the number. 
end
% Bug 8: Found just while reading the script. Noticed that it didn't have
% an end for the loop. End was added so that the loop would not
% continuously run. 


end  % end of guessing loop
fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');
% Bug 9: Found while running the script. Would display 'Game Over' after
% each guess. Fixed by moving statement outside of the loop.
