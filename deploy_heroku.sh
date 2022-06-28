current_branch=$(git name-rev --name-only HEAD)

function ask_yes_or_no() {
    read -p "$1 ([y]es or [N]o): "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        y|yes) echo "yes" ;;
        *)     echo "no" ;;
    esac
}

if [[ "no" == $(ask_yes_or_no "Force deploy $current_branch branch on heroku?") ]]
then
    echo "Aborted"
    exit 0
fi

# Deploy
echo "Deploying..."
git push -f heroku $current_branch:master
