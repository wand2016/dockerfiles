FROM jagregory/pandoc:latest

# doing twice fixes Hash Sum Mismatch Error (ridiculous)
RUN apt-get update -y || apt-get update -y

RUN apt-get install -y locales
RUN apt-get install -y task-japanese

# uncomment ja_JP.UTF-8 Locale and generate
RUN sed -i -e 's/# ja_JP.UTF-8 UTF-8/ja_JP.UTF-8 UTF-8/' /etc/locale.gen
RUN locale-gen
RUN update-locale LANG=ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8

# install texlive
RUN apt-get install -y texlive-luatex texlive-fonts-recommended texlive-fonts-extra texlive-lang-japanese 

# install pandoc plugins
RUN cabal update && cabal install pandoc-citeproc pandoc-crossref
