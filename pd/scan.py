#!/usr/bin/python

import os
import sys
import re

def scan_csv(filename, mut):
  mut_entries = []
  with open(filename, 'rb') as f:
    for linenum, line in enumerate(f):
      if linenum == 0:
        header = line
      split = line.split(',')[0]
      second_split = split.split(':')
      if (str(second_split[3]) + str(second_split[2]) + str(second_split[4])) in mut:
        mut_entries.append(line)

  return header, mut_entries

def read_mutations(filename):
  all_mutations = []
  with open(filename, 'rb') as f:
    for line in f:
      line = re.sub(r"\s+", "", line, flags = re.UNICODE)
      all_mutations.append(line)
  return all_mutations
      

if __name__ == "__main__":
  csv = sys.argv[1]
  mut_file = sys.argv[2]
  mut_filename = os.path.basename(mut_file)
  save_dir = sys.argv[3]

  mut = read_mutations(mut_file)
  print(mut)
  header, csv_muts = scan_csv(csv, mut)
  
  with open(sys.argv[3] + 'pd_final_' + mut_filename + '.csv', 'w') as f:
    f.write(header)
    for mut in csv_muts:
      f.write(mut)

