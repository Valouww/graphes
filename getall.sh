./getID.sh

ID=$(<liste-id.txt)

for ligne in $ID; do
    ./get-artifacts.sh $ligne
done

