#! /usr/bin/bash
# This should recursivly traverse a PlantUML tree adding include.puml for each directory
# Assume we are processing from this diretory down

# echo 
# echo "puml-gen-inc.sh with $*"

function dirInclude {
   echo @startuml > dirInclude.puml
   ls -l | sed '/^[-t]/d' | sed 's/^[^:]*:.../!include /' | sed 's"$"/dirInclude.puml"' >> dirInclude.puml
   ls *.puml | sed '/dirInclude.puml/d' | sed 's/^/!include /' >> dirInclude.puml
   echo @enduml >> dirInclude.puml
   chmod 777 dirInclude.puml
}

if [ $# -eq 0 ] 
then 
   dirInclude
   commands=$( ls -l | sed '/^[-t]/d' | sed 's/^[^:]*:.../ /' | sed 's/ /+/g')
   # echo "$commands"
   for command in $commands 
   do
      complete=$(echo $command | sed 's/^\+/puml-gen-inc.sh /' | sed 's/[+]/ /g' ) 
      # echo $complete
      $complete
   done
else 
   sub=$(echo "$PWD/$*/")
   cd "$sub"
   if [ $? -eq 0 ]
   then 
      echo $PWD
      puml-gen-inc.sh
   else
      ls -ls
   fi
fi

