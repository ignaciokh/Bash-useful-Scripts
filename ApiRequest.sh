api="https://digi-api.com/api/v1/digimon"


echo "Please select from the following list from which Digimon you want to get information"
echo "Agumon"
echo "Airdramon"
echo "Angemon"
echo "Betamon"
echo "Birdramon"
echo ""
read digimon_name

function getAPI
{
curl --location --request GET "$api/$digimon_name" --header "Content-Type: application/json" | jq > "$digimon_name"
}

#running function
getAPI
