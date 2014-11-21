##### CLI tool for test provisioning local cloud with puppet in docker.

## Requirements
Install Docker according to instructions on http://docker.io . Clone this repository or export contents to a new one you intend to work on Puppet scripts in, and you should be all set.

- linux or osx (install boot2docker)

## Installation
#### OSX
```
brew tap falsecz/homebrew-misc
brew install dlc
```
#### Linux
clone this repository and add dlc command to path


## Usage
```
# dlc init
dlc provision hostname.[dlc]
``

##Features
- auto setup routes to boot2docker network (osx)
- auto build base image
- auto build/start dnsmasq image (shared for all instances)
- support Puppetfile (librarian-puppet)


