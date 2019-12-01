# gitlab-ci-overdue

Cancel GitLab pipelines that are overdue.

## CLI

```
usage: gitlab-ci-overdue [-h] [-c PATH] [--allowed-duration MINUTES] [-n] [-V]
                         project_id

Cancel GitLab pipelines that are overdue.

positional arguments:
  project_id            project ID or namespace/project_path

optional arguments:
  -h, --help            show this help message and exit
  -c PATH, --config PATH
                        configuration file
  --allowed-duration MINUTES
                        how long a pipeline is allowed to run; default is 30
                        minutes
  -n, --dry-run         don't actually cancel anything, just show what would be
                        done
  -V, --version         show program's version number and exit

See https://python-gitlab.readthedocs.io/en/stable/cli.html#cli-configuration
for information about configuration file.
```

## Using the docker image

How to build:

```sh
docker build -t gitlab-ci-overdue .
```

Usage:

```sh
docker run --rm -e GITLAB_PRIVATE_TOKEN=<token> gitlab-ci-overdue [<options>]
```

To change the GitLab URL, add `-e GITLAB_URL=<url>` option.
