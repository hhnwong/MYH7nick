#!/bin/bash
shuf ./mapped_pd_all.mut 
gsplit -l 34 -d ./mapped_pd_all.mut pd
