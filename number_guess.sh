#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=postgres -t --no-align -c"

echo "Enter your username:"
read USERNAME;
RANDOM_NUMBER=$(( (RANDOM % 1000 ) + 1));

USER_EXISTS=$($PSQL "SELECT name FROM users WHERE name = '$USERNAME'");
if [[ -z $USER_EXISTS ]]
then
  USER_INSERTION=$($PSQL "INSERT INTO users(name) VALUES('$USERNAME')");
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'");
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id = $USER_ID");
  BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE user_id = $USER_ID");
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo -e "Guess the secret number between 1 and 1000:"
read GUESS
x=1;

while [[ ! $GUESS =~ ^[0-9]+$ ]]
do
  echo "That is not an integer, guess again:"
  read GUESS
done

while [ $GUESS != $RANDOM_NUMBER ]
do
  if [[ $GUESS -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:";
  else
    echo "It's lower than that, guess again:";
  fi
  x=$(( $x + 1 ));
  read GUESS
done

echo "You guessed it in $x tries. The secret number was $RANDOM_NUMBER. Nice job!"

USER_ID=$($PSQL "SELECT user_id FROM users WHERE name = '$USERNAME'");
DATA_INSERTION=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $x)");