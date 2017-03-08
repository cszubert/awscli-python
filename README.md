# awscli-python

Runs AWS CLI in an official python based docker image. Includes Groff to enable AWS CLI command line help.


## Usage
### Starting a container:
Run container mapped to host AWS CLI configuration:
```
docker run -it --rm -v $HOME/.aws:/root/.aws cszubert/awscli-python bash
```

Run container passing IAM User access keys in command line:
```
docker run -it --rm -e AWS_ACCESS_KEY_ID=<Access Key ID> -e AWS_SECRET_ACCESS_KEY=<Secret Access Key> cszubert/awscli-python bash
```
where \<Access Key ID> and \<Secret Access Key> are the AWS IAM User's access keys.


### Example AWS CLI commands to run inside the container:
Get help with AWS CLI
```
aws help
```

Check AWS CLI version
```
aws --version
```

Configure AWS CLI:
```
aws configure
```
Note: If you run this iside a container mapped to host AWS CLI configuration, the IAM User's access keys and other configurations will be sotred on the host.

List s3 buckets - you must properly configure IAM user's keys and have required s3 permission:
```
aws s3 ls
```

Return information about instance in a specified region:
```
aws ec2 describe-instances --region us-east-1
```

## More Information

AWS cli: <https://aws.amazon.com/cli/>

Groff: <https://www.gnu.org/software/groff/>
