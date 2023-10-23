function bash::performance() {
  limit=${1:-10}

  for i in $(seq 1 $limit); do time bash -i -c exit; done
}
