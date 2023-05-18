#!/bin/bash

source ./path.sh

build-lm.sh -i ./data/local/dict/lm_train.text -n 1 -o ./data/local/lm_tmp/uni_train.ilm.gz #create unigram model
build-lm.sh -i ./data/local/dict/lm_train.text -n 2 -o ./data/local/lm_tmp/bi_train.ilm.gz #create bigram model

build-lm.sh -i ./data/local/dict/lm_test.text -n 1 -o ./data/local/lm_tmp/uni_test.ilm.gz #create unigram model
build-lm.sh -i ./data/local/dict/lm_test.text -n 2 -o ./data/local/lm_tmp/bi_test.ilm.gz #create bigram model

build-lm.sh -i ./data/local/dict/lm_val.text -n 1 -o ./data/local/lm_tmp/uni_val.ilm.gz #create unigram model
build-lm.sh -i ./data/local/dict/lm_val.text -n 2 -o ./data/local/lm_tmp/bi_val.ilm.gz #create bigram model