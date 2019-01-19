## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| default_branch | The name of the default repository branch | string | `master` | no |
| depends_on | This is a way to make a module depends on, which isnt built in. | list | `<list>` | no |
| developer_group | An existing Iam Group to attach the policy permissions to | string | - | yes |
| repository_name | The name of your GIT repository | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| clone_url_https | - |
| clone_url_ssh | - |

