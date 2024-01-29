# Launch your own Mattermost server

## Mattermost
[Mattermost](https://mattermost.com/) is an open-source, self-hostable online chat service with file sharing, search, and integrations. It's designed as an internal chat for organisations and companies, and mostly markets itself as an open-source alternative to Slack and Microsoft Teams.

For simplicity, we'll deploy our Mattermost server using an acorn image.

## Limitations 
❗ Voice and video streaming do not work via this acorn deployment.  That's due to issues with specifying an external port.

## What is Acorn?
Acorn is a new cloud platform that allows you to easily deploy, develop and manage web services with containerization.  A single acorn image can deploy all that you need: from a single container webserver, to a multi service Kubernetes cluster with high availability.  Don't worry if you don't understand what all those terms mean; we don't have to know that in order to deploy our server.

## Setup Acorn Account
Setup an acorn account at [acorn.io](https://acorn.io).  This can be a free account for your first deployment, and if you'd like additional storage space you can look into the pro account or enterprise.  You will need a Github account to signup as shown in the image below.

![signin_acorn](https://github.com/randall-coding/opensupports-docker/assets/39175191/d46815fb-d2d5-42cd-b93d-41ca541a63bd)

## Install acorn cli 
First we need to install acorn-cli locally.  Choose an install method from the list below:

**Linux or Mac** <br>
`curl https://get.acorn.io | sh`

**Homebrew (Linux or Mac)** <br>
`brew install acorn-io/cli/acorn`

**Windows** <br> 
Uncompress and move the [binary](https://cdn.acrn.io/cli/default_windows_amd64_v1/acorn.exe) to your PATH

**Windows (Scoop)** <br>
`scoop install acorn`

For up to date installation instructions, visit the [official docs](https://runtime-docs.acorn.io/installation/installing).

## Login with CLI
Back in our local command terminal login to acorn.io with: <br>
`acorn login acorn.io` 

## Deploying Acorn
Now that we have the acorn cli configured, we can deploy our acorn image with a few simple commands.

Clone the repo locally if you haven't already with:

`git clone https://github.com/randall-coding/mattermost-acorn.git`

Next build and run.

`acorn build -t mattermost`

`acorn run -n mattermost mattermost`

Visit your acorn dashboard to see if your deployment was successful.

Click on the mattermost deployment, and find the endpoint section on the right side panel.  This is your mattermost instance link.

![mattermost_acorn_ui](https://github.com/randall-coding/mattermost-acorn/assets/39175191/7094f1dc-2304-43d5-ba0e-5c260b4ba009)

![mattermost_endpoint](https://github.com/randall-coding/mattermost-acorn/assets/39175191/fee17478-bfe5-45bc-b807-94d8724c1a70)

## Configure Mattermost

First, visit the server's endpoint url. You should land on the page shown below. Click "View in Browser" to continue.

![mattermost_view_browser](https://github.com/randall-coding/mattermost-acorn/assets/39175191/234569ca-44cb-4259-ba51-df884f0f8586)

This will take you to the Mattermost registration page.  Fill out the form with your email address, username, and password.

![mattermost_create_account](https://github.com/randall-coding/mattermost-acorn/assets/39175191/c83ab444-3f6e-4470-b1ac-2730b370b869)

After registration, you will be directed to the team creation page where you can enter your desired team name.

![mattermost_team_name](https://github.com/randall-coding/mattermost-acorn/assets/39175191/a6501d1d-c280-4854-b058-fcb894c6ad67)

Finally, you will be taken to your newly created Team's "Town Square" chat.

![mattermost_chat](https://github.com/randall-coding/mattermost-acorn/assets/39175191/472f614d-6e27-46f8-9936-6ab6b89799c2)

#### SMTP Configuration (Optional)

You can configure SMTP by going to the `System Console` from the dropdown menu in the top left corner.

<img width="332" alt="mattermost_smtp1" src="https://github.com/randall-coding/mattermost-acorn/assets/39175191/ae5f1a7a-300e-48d9-8338-15559e99f535">

Then select SMTP from the left navigation bar.

<img width="800" alt="mattermost_smtp2" src="https://github.com/randall-coding/mattermost-acorn/assets/39175191/3dc1b7b6-ccf2-42ff-84c7-12be037450a4">

Fill out the SMTP form according to your SMTP Server information and click "Save".  You should now be able to receive email notifications and invites from your server (assuming all went well).

## Conclusion
That's all there is to it.  We've now got a Mattermost server up and running from an acorn image.
For more detailed instructions on working with your Mattermost server see the Mattermost documentation.

## References
* [Mattermost Documentation](https://docs.mattermost.com/)
* [Getting started with Acorn](https://docs.acorn.io/getting-started)
