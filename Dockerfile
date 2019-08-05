# Copyright 2017 Acquia, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

FROM centos:7.6.1810
MAINTAINER Acquia Engineering <engineering@acquia.com>

ARG RUBY_VERSION
ENV RUBY_VERSION ${RUBY_VERSION:-2.6.3}

# Install base system dependencies
RUN set -xe \
    && yum install -y \
      autoconf \
      automake \
      bison \
      bzip2 \
      cmake \
      gcc-c++ \
      git \
      glibc-devel \
      glibc-headers \
      java-1.8.0-openjdk \
      libffi-devel \
      libicu-devel \
      libtool \
      libyaml-devel \
      make \
      mysql-devel \
      patch \
      patch \
      readline-devel \
      sqlite-devel \
      systemd-devel \
      tar \
      which \
    && yum clean all \
    && rm -rf /tmp/* \
    && rm -rf /var/tmp/*

# Install Ruby and Bundler
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
    && curl -sSL https://get.rvm.io | bash \
    && /bin/bash -l -c "rvm install ${RUBY_VERSION} \
      && rvm default ${RUBY_VERSION} \
      && gem install bundler \
      && rvm cleanup all"

