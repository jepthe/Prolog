cat(fubby). // fubby is a cat
black_spots(fubby). // fubby has black spots
dog(figaro). // figaro is a dog
white_spots(figaro). // figaro has white spots

//Rules
owns(mary, Pet):- cat(Pet), black_spots(Pet). // mary owns a Pet if it is a cat and it has black spots
loves(Who, What):-owns(Who, What). // If someone owns something, he loves it.