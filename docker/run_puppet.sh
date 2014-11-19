#!/bin/bash -eu

cd /puppet

# Warning this part is highly experiemental, might not work. Sorry, later. :)
if [[ -e ./Puppetfile ]]; then
	echo "Running librarian to handle module dependencies..."
	librarian-puppet install
fi

echo "Applying puppet..dddd."
puppet apply --modulepath modules:sbks1/modules manifests/local.pp --no-usecacheonfailure --verbose -d

