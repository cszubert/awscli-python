FROM python:3.5.2

# Install Pip and the AWS CLI
# Prerequisites:
#   pip
#   python3
RUN pip install awscli --upgrade --user

# Adding the AWS CLI Executable to your Command Line Path
RUN echo 'export PATH=~/.local/bin:$PATH'>>root/.bashrc

RUN apt-get update
RUN apt-get --assume-yes install groff
