library(GA)
ga(type = c("permutation"),
   
   1. O usuario entra com 5 cores em ordem
   2. O PC chuta cores pra  5 posiçoes
   2. fit1 = cor e lugar certos. Retorna de 0 a 5
   3. fit2 = cor certa. Retorna de 0 a 5
   4. Se
   4.1 fit1 == 5, acaba.
   4.2 Se 
   4.2.1 fit2 == 5, Apenas rearranja as posiçoes
   4.2.1 fit2 < 5,
   #PT1 
   StringResposta <- c("","","","","")
   for (i in 1:5){
     char = readline("Digite um caracter ")
     StringResposta[i] <- char
   }
   #PT2  
   library(stringi)  
   StringPrimeira <- c("A","B","C","D","E","F","G","H")
   StringPrimeira <- permute(StringPrimeira)
   StringPrimeira <- StringPrimeira[1:5]
   #PT3
   numDeTrue <- stri_cmp_eq(StringPrimeira, StringResposta)
   fit1 <- sum(numDeTrue) # Ou fit1 <- table(numDeTrue)["TRUE"]
   #PT4
   fit2 <- 0
   for (i in 1:5){
     fit2 <- fit2 + is.element(StringPrimeira[i], StringResposta)  
   }
   #PT5
   
   
   
   y <- stri_rand_strings(1, 5, '[A-H]')
   
   library(gtools)        
   rs <- c("A","B","C","D","E")
   permute(1:5)
   rs <- permute(rs)
   
   y <- permute(y)
   
   
   
   
   
   
   
   ###
#   http://www.obitko.com/tutorials/genetic-algorithms/ga-basic-description.php#outline   
#   [Start] Generate random population of n chromosomes (suitable solutions for the problem)
#   [Fitness] Evaluate the fitness f(x) of each chromosome x in the population
#   [New population] Create a new population by repeating following steps until the new population is complete
#   [Selection] Select two parent chromosomes from a population according to their fitness (the better fitness, the bigger chance to be selected)
#   [Crossover] With a crossover probability cross over the parents to form a new offspring (children). If no crossover was performed, offspring is an exact copy of parents.
#   [Mutation] With a mutation probability mutate new offspring at each locus (position in chromosome).
#   [Accepting] Place new offspring in a new population 
#   [Replace] Use new generated population for a further run of algorithm
#   [Test] If the end condition is satisfied, stop, and return the best solution in current population
#   [Loop] Go to step 2 