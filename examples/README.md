# Set up credential helper
```git config --global credential.helper "!aws codecommit credential-helper $@"
git config --global credential.UseHttpPath true```

```bash
$>terraform apply
$>git clone git clone https://git-codecommit.us-west-2.amazonaws.com/v1/repos/slalom-devops
$>cd slalom-devops
$>echo 'hello world' > touch.txt
$>git commit -a -m 'init master'
$>git push -u origin master
```

### Sample buildspec files
In this example directory there is `buildspec_test.yml` and `buildspec.yml`. These are sample build spec files you can add to the root of your new repository in CodeCommit. The test buildspec files contains the `artifacts` section that copies the entire repo to the build stage to be used there.
