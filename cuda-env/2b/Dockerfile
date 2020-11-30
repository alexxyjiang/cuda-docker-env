FROM alexxyjiang/cuda-env:server-latest
LABEL maintainer="Xueyuan, Jiang <alexxyjiang@gmail.com>"
RUN apt-get install -y octave-control octave-image octave-io octave-optim octave-signal octave-statistics
RUN pip install --upgrade numpy scipy sympy pandas scikit-image scikit-learn matplotlib overrides pyyaml tqdm
RUN pip install --upgrade nltk
RUN pip install --upgrade lightgbm
RUN pip install --upgrade torch torchvision
RUN pip install --upgrade tensorflow tensorflow_ranking
CMD ["sh", "/start_servers.sh"]
