# execute with `bash .scripts/create-new-scratch-org.sh`

yell() { echo "$0: $*" >&2; }
die() { yell "$*"; kill -SIGINT $$; }
try() { "$@" || die "cannot $*"; }

# come up with a unique org name
orgName=`hostname;date`
orgName="$(echo -e "${orgName}" | tr -d '[:space:]')"

# create it
sfdx force:org:create --definitionfile config/project-scratch-def.json --setalias $orgName --setdefaultusername

# push the code
sfdx force:source:push -f

# open the app
sfdx force:org:open