# Lightning Web Components

## Introduction

Lightning Web Components are the newer and improved version of lightning components for salesforce lightning framework

## Setup your Development Environment

### Requirements

#### Install Visual Studio Code and also all official salesforce extensions

1. Download and install Visual Studio Code [here](https://code.visualstudio.com/download)

2. Go to extensions, search `publisher:"Salesforce"` and install all of them except for "CodeScan"

#### Install Salesforce CLI for use with SFDX

1. Download Salesforce CLI from [here](https://developer.salesforce.com/tools/sfdxcli)

2. Run `sfdx plugins:install salesforcedx`

#### Cloning the code base and installing dependencies

1. Clone the repository to a local directory.

    `git clone git@github.com:gparada/lightning-web-components.git`

2. Navigate to the project

    `cd lightning-web-components`

#### Setting Up and Deploying project to a Scratch Org

1. To try out LWC you need a Dev Hub Org with LWC enable. If you don't already have one, you can create a spring 19 pre-release developer org [here](https://www.salesforce.com/form/signup/prerelease-spring19/)

2. Set your default workspace in SFDX to that org

    `sfdx force:auth:web:login --setdefaultdevhubusername --setalias LWC`

3. Enable Dev Hub on the org

    Go to setup and search for `Dev Hub`, click on the `Enable Dev Hub` toggle if it is dissable 

4. Create a Scratch Org

    `bash .scripts/create-new-scratch-org.sh`

5. The scratch org should open automaticall, if it does not, run.

    `sfdx force:org:open`

6. Check out all the SFDX commands.

    `sfdx force:doc:commands:list`

### Deploying changes to your scratch org.

#### Create new LWC

1. Run `sfdx force:lightning:component:create --type web --componentname your_component_name` Or press `Cmd + Shift + P` and type `SFDX: Create Lightning Web Component`

#### Pushing

1. Run `sfdx force:source:push` Or press `Cmd + Shift + P` and type `SFDX: Push Source from scratch org`

#### Pull changes from Scratch Org

1. Run `sfdx force:source:pull` Or press `Cmd + Shift + P` and type `SFDX: Pull Source from scratch org`
