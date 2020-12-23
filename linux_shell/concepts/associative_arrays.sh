######################################################
# ASSOCIATIVE ARRAYS (Hashes)
######################################################
# Initialization
  declare -A aa # Associative array
  aa=([key01]=1 [key02]=k02 ["key03"]="Key 03")

# Index
  echo "${#aa[@]}" # Count elements
  echo "${!aa[@]}" # Listing keys
  echo "${aa[@]}" # Listing values

# Iteration
  for key in "${!aa[@]}"; do
   echo "Key:   ${key}"
   echo "Value: ${aa[$key]}"
  done
######################################################