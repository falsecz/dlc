#!/bin/bash -eu

cd /puppet

# Warning this part is highly experiemental, might not work. Sorry, later. :)
if [[ -e ./Puppetfile ]]; then
	echo "Running librarian to handle module dependencies..."
	librarian-puppet install
fi

echo "Applying puppet..dddd."
puppet apply --modulepath $1 $2 --no-usecacheonfailure --verbose -d

