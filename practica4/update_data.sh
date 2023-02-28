#! /bin/bash

#change type column atomic_number to decimal

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=periodic_table -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
fi

cat atomic_mass.txt | while IFS="|" read atomic_number atomic_mass
do
# get teams
#echo $atomic_number $atomic_mass


if [[ ($atomic_number != "atomic_number") && ($atomic_mass != "atomic_mass") ]]
then  
  atomic_ID=$($PSQL "SELECT atomic_number, atomic_mass FROM properties WHERE atomic_number = $atomic_number ")
    # if not found
 # echo $WINNER_ID
  if [[ $atomic_ID ]]
  then
   # insert teams
   UPDATE_TEAM_RESULT=$($PSQL "update properties set atomic_mass = $atomic_mass  where atomic_number = $atomic_number")
   # get new 
  fi
 
  fi 
done

  atomic=$($PSQL "SELECT atomic_number, atomic_mass FROM properties ")
  echo $atomic 
