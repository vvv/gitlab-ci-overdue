# gitlab-ci-overdue

Cancel GitLab pipelines that are overdue.

## Using the docker image

### How to build

```sh
docker build -t gitlab-ci-overdue .
```

### How to use

```sh
docker run -it --rm -e GITLAB_PRIVATE_TOKEN=<token> \
    gitlab-ci-overdue [<options>]
```

To change the GitLab URL, add `-e GITLAB_URL=<url>` option.
