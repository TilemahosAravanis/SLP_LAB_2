#!/bin/bash

source ./path.sh

feat-to-dim scp:data/train/feats.scp - # dim of characteristics
feat-to-len scp:data/train/feats.scp ark,t:data/train/feats.lengths.txt # num of frames
head -5 data/train/feats.lengths.txt # print the first 5