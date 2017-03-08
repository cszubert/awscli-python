FROM python

# Install AWS CLI
RUN pip install awscli --upgrade --user

# Adding AWS CLI Executable to Path
RUN echo 'export PATH=~/.local/bin:$PATH'>>root/.bashrc

# Install groff to enable AWS CLI command line help
RUN apt-get update \
    && apt-get --assume-yes install groff
