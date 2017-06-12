FROM edxops/edxapp:latest
WORKDIR /edx/app/edxapp/edx-platform
ADD scripts/travis-install.sh /edx/app/edxapp/edx-platform/scripts
ADD scripts/travis-test.sh /edx/app/edxapp/edx-platform/scripts
RUN git status
RUN . /edx/app/edxapp/edxapp_env
RUN /edx/app/edxapp/edx-platform/scripts/travis-install.sh
RUN lsb_release -a
