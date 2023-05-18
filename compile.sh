#!/bin/bash

source ./path.sh

compile-lm ./data/local/lm_tmp/uni_train.ilm.gz -t=yes /dev/stdout | grep -v unk | gzip -c > ./data/local/nist_lm\/lm_phone_ug.arpa.gz

compile-lm ./data/local/lm_tmp/bi_train.ilm.gz -t=yes /dev/stdout | grep -v unk | gzip -c > ./data/local/nist_lm\/lm_phone_bg.arpa.gz