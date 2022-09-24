# Update AWS Task Definition

This is a very simple composite action that
* downloads the current version of a task definition
* updates the image
* deploys a new version of the task def

### Usage
```yaml
jobs:
  update_my_app:
    runs-on: ubuntu-latest

    steps:
      - run: |
          docker build -t myimage:latest .
          docker push my_repo

      - uses: jsmrcaga/action-update-aws-taskdef@v0.0.3
        with:
          image: myimage:latest
          family: mytaskdef
          service: myservice
          cluster: mycluster
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}

```
