# CodeCommit and AWS cli access: SAML federated logins

There is a very handy cmdline tool for this called **saml2aws**. Installing
**saml2aws** (<https://github.com/Versent/saml2aws>):

Windows:

`cinst saml2aws`

macXs:

`brew tap versent/homebrew-taps`

`brew install saml2aws`

`Then you have to configure the tool:`

`saml2aws configure`

This will ask you a number of questions, you will need to know:

URL: **https://sts.examplea.com/adfs/ls/idpinitiatedsignon** (obviously whatever
your sign on link is but this is a rough guide)

Username: <james.woolfenden@examplea.com> (Be best to use your own details for
this)

Provider: ADFS (if thats what you have)

MFA: Auto

Profile: saml (or whatever you want to call it)

Then when you need the credentials:

`saml2aws login`

You can test this using:

`aws s3 ls –-profile saml`

And youll see the buckets in your account that you can see.

## SSH and Https for CodeCommit

Neither. You need to add this credential helper (see
<https://github.com/awslabs/git-remote-codecommit>):

Linux:

`sudo pip install git-remote-codecommit`

Windows:

`pip install git-remote-codecommit`

Then you can clone a repo using:

`git clone codecommit://saml@<repo-name>`
(replacing `<repo-name>` with the name from codecommit not the git or https reference)
