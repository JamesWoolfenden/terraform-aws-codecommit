## Using Codecommit

To use codecommit you need to set some git config properties for the credential helper:

`git config --global credential.helper '!aws codecommit credential-helper $@'`

`git config --global credential.UseHttpPath true`

And for SSH look at: <https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-ssh-unixes.html>

Use ssh-keygen and create a key in your home folder called codecommit

`publickey=$(<~/.ssh/codecommit.pub)`

`user=$(aws iam get-user --query 'User.UserName' --output text)`

### On Windows

`$publickey=get-content ~/.ssh/codecommit.pub`

`$user=aws iam get-user --query 'User.UserName'`

On both:
`aws iam upload-ssh-public-key --user-name $user --ssh-public-key-body $publickey`

Get your ssh key id from the previous commands output

`SSHPublicKeyId=$(aws iam list-ssh-public-keys --user-name $user --query 'SSHPublicKeys[*].SSHPublicKeyId' --output text)`

OR

`$SSHPublicKeyId=(aws iam list-ssh-public-keys --user-name $user --query 'SSHPublicKeys[*].SSHPublicKeyId')|convertfrom-json`

Update your config file with:

$gitconfigupdate=@"
Host git-codecommit.*.amazonaws.com
  User $SSHPublicKeyId
IdentityFile ~/.ssh/codecommit
"@
Add-content ~/.ssh/config \$gitconfigupdate

### linux

cat << EOF > ~/.ssh/config
Host git-codecommit.\*.amazonaws.com
User \$SSHPublicKeyId
IdentityFile ~/.ssh/codecommit
EOF

eval \$(ssh-agent -s)
ssh-add codecommit

Test with:
`ssh git-codecommit.us-east-2.amazonaws.com`
