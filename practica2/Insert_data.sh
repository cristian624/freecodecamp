#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games,teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # get teams

if [[ ($WINNER != "winner") && ($OPPONENT != "opponent") ]]
then  
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER' or name='$OPPONENT'  ")
    # if not found
  
  if [[ -z $WINNER_ID ]]
  then
   # insert teams
   INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
   echo $WINNER
   # get new 

  fi

  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'  ")
  
  # if not found
  
  if [[ -z $OPPONENT_ID ]]
  then
   # insert teams
   INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
   echo $OPPONENT
   # get new 

  fi
 fi 
done

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
 if [[ ($YEAR != "year") && ($ROUND != "round") && ($WINNER != "winner") && ($OPPONENT != "opponent") && ($WINNER_GOALS != "winner_goals") && ($OPPONENT_GOALS != "opponent_goals")  ]]
  then
  # get teams
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'  ")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'  ")
   # insert games
    INSERT_STUDENT_RESULT=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,	winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOALS, $OPPONENT_GOALS)")
    if [[ $INSERT_STUDENT_RESULT == "INSERT 0 1" ]]
    then
     echo "Inserted into games, $YEAR $ROUND $WINNER"
    fi
 fi 
done
