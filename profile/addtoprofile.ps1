function loginaws{
    param(
        [string]$role="defaultrolearn",
        [string]$username="username",
        [string]$password="addpassword",
        [string]$profile="saml")

        saml2aws --skip-prompt --username $username --password $password --role $role login --profile $profile --force
        $env:AWS_PROFILE=$profile
  }
