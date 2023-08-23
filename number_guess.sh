#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=games -t --no-align -c"

NUMBER=$((1 + $RANDOM % 1000));
# echo "$NUMBER"

echo  "Enter your username:"
read USERNAME;

EXIST=$($PSQL "select * from details where username='$USERNAME'")
COUNT=0

GUESS() {

     read G
      if [[ $G =~ ^[0-9]+$ ]]
      then
        if [[ $G > $NUMBER ]]
        then
          echo "It's lower than that, guess again:"
          COUNT=$((COUNT + 1))  
          GUESS 
        elif [[ $G == $NUMBER ]]
        then
           COUNT=$((COUNT + 1))  
           RESULT=$($PSQL "insert into details(username,games_played,best_game) values('$USERNAME',1,$COUNT)")
           echo "You guessed it in $COUNT tries. The secret number was $NUMBER. Nice job!"
        else
            echo "It's higher than that, guess again:"
            COUNT=$((COUNT + 1))  
            GUESS 
        fi
      else
        echo  "That is not an integer, guess again:"
        GUESS
      fi

}

if [[ $EXIST ]]
then

    echo "$EXIST" | while IFS='|' read ID NAME GCOUNT GUES
    do
       echo -e "\nWelcome back, $NAME! You have played $GCOUNT games, and your best game took $GUES guesses."
       echo  "Guess the secret number between 1 and 1000:"
    done
    GUESS
    
else

    echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
    echo  "Guess the secret number between 1 and 1000:"
    GUESS 
    
fi