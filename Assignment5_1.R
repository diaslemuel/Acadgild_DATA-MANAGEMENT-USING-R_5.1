#Problem Statement
#1. How many vowels are there in the names of USA States?
#2. Visualize the vowels distribution.
USArrests
vowels = c("a", "e", "i", "o", "u")
# vector for storing results
#this starts five counters at the same time
num_vowels = vector(mode = "integer", length = 5)

# calculate number of vowels in each name
#for j in vowels takes a,e,i,o,u respectively
for (j in seq_along(vowels)) {
  num_aux = str_count(tolower(states), vowels[j])
  num_vowels[j] = sum(num_aux)
}

# add vowel names
names(num_vowels) = vowels

# total number of vowels
num_vowels
