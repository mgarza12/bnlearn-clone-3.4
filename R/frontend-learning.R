
# Grow-Shrink frontend.
gs = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE, undirected = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args, debug = debug,
    optimized = optimized, strict = strict, undirected = undirected)

}#GS

# Incremental Association frontend.
iamb = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE, undirected = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args, method = "iamb",
    debug = debug, optimized = optimized, strict = strict,
    undirected = undirected)

}#IAMB

# Fast-IAMB frontend.
fast.iamb = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE, undirected = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
    method = "fast.iamb", debug = debug, optimized = optimized,
    strict = strict, undirected = undirected)

}#FAST.IAMB

# Inter-IAMB frontend.
inter.iamb = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE, undirected = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
    method = "inter.iamb", debug = debug, optimized = optimized,
    strict = strict, undirected =  undirected)

}#INTER.IAMB

# FDR-IAMB frontend.
fdr.iamb = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
                    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
                    strict = FALSE, undirected = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
          blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
          method = "fdr.iamb", debug = debug, optimized = optimized,
          strict = strict, undirected =  undirected)

}#FDR.IAMB

# K-IAMB frontend.
k.iamb = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL, k = NULL, nbr.join = NULL,
  test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
  strict = FALSE, undirected = FALSE) {
  
  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
    method = "k.iamb", k = k, debug = debug, optimized = optimized,
    strict = strict, undirected =  undirected)
  
}#FDR.IAMB

# MMPC frontend.
mmpc = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
    method = "mmpc", debug = debug, optimized = optimized,
    strict = strict, undirected = TRUE)

}#MMPC

# HPC frontend.
hpc = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
               test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
               strict = FALSE, undirected = TRUE, nbr.join = NULL,
               pc.method = NULL) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
          blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
          method = "hpc", debug = debug, optimized = optimized,
          strict = strict, undirected = undirected, nbr.join = nbr.join,
          pc.method = pc.method)

}#HPC

# Semi-Interleaved HITON-PC.
si.hiton.pc = function(x, cluster = NULL, whitelist = NULL, blacklist = NULL,
    test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE, optimized = TRUE,
    strict = FALSE) {

  bnlearn(x = x, cluster = cluster, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args,
    method = "si.hiton.pc", debug = debug, optimized = optimized,
    strict = strict, undirected = TRUE)

}#MMPC

# ARACNE frontend.
aracne = function(x, whitelist = NULL, blacklist = NULL, mi = NULL,
    debug = FALSE) {

  mi.matrix(x = x, whitelist = whitelist, blacklist = blacklist,
    method = "aracne", mi = mi, debug = debug)

}#ARACNE

# Chow-Liu frontend.
chow.liu  = function(x, whitelist = NULL, blacklist = NULL, mi = NULL,
    debug = FALSE) {

  mi.matrix(x = x, whitelist = whitelist, blacklist = blacklist,
    method = "chow.liu", mi = mi, debug = debug)

}#CHOW.LIU

# Hill Climbing greedy search frontend.
hc = function(x, start = NULL, whitelist = NULL, blacklist = NULL,
    score = NULL, ..., debug = FALSE, restart = 0, perturb = 1,
    max.iter = Inf, optimized = TRUE) {

  greedy.search(x = x, start = start, whitelist = whitelist,
    blacklist = blacklist, score = score, heuristic = "hc",
    debug = debug, expand = c(list(...), restart = restart,
    perturb = perturb, max.iter = max.iter), optimized = optimized)

}#HC

# TABU list greedy search frontend.
tabu = function(x, start = NULL, whitelist = NULL, blacklist = NULL,
    score = NULL, ..., debug = FALSE, tabu = 10, max.tabu = tabu,
    max.iter = Inf, optimized = TRUE) {

  greedy.search(x = x, start = start, whitelist = whitelist,
    blacklist = blacklist, score = score, heuristic = "tabu",
    debug = debug, expand = c(list(...), max.iter = max.iter,
    tabu = tabu, max.tabu = max.tabu), optimized = optimized)

}#TABU

# Generic Restricted Maximization frontend.
rsmax2 = function(x, whitelist = NULL, blacklist = NULL, restrict = "gs",
    maximize = "hc", test = NULL, score = NULL, alpha = 0.05, test.args = NULL,
    ..., maximize.args = list(), optimized = TRUE, strict = FALSE,
    debug = FALSE) {

  restrict.args = list(test = test, alpha = alpha, test.args = test.args, strict = strict)
  maximize.args = list(...)

  hybrid.search(x, whitelist = whitelist, blacklist = blacklist,
    restrict = restrict, maximize = maximize, score = score,
    restrict.args = restrict.args, maximize.args = maximize.args,
    optimized = optimized, debug = debug)

}#RSHC

# MMHC frontend.
mmhc = function(x, whitelist = NULL, blacklist = NULL, test = NULL,
    score = NULL, alpha = 0.05, test.args = NULL, ..., restart = 0, perturb = 1,
    max.iter = Inf, optimized = TRUE, strict = FALSE, debug = FALSE) {

  restrict.args = list(test = test, alpha = alpha, test.args = test.args, strict = strict)
  maximize.args = c(list(...), restart = restart,
                   perturb = perturb, max.iter = max.iter)

  hybrid.search(x, whitelist = whitelist, blacklist = blacklist,
    restrict = "mmpc", maximize = "hc", restrict.args = restrict.args,
    maximize.args = maximize.args, score = score, optimized = optimized,
    debug = debug)

}#MMHC

# H2PC frontend.
h2pc = function(x, whitelist = NULL, blacklist = NULL, test = NULL,
                score = NULL, alpha = 0.05, test.args = NULL, ..., restart = 0, perturb = 1,
                max.iter = Inf, optimized = TRUE, strict = FALSE, debug = FALSE,
                nbr.join = NULL, pc.method = NULL) {

  restrict.args = list(test = test, alpha = alpha, test.args = test.args, strict = strict,
                       nbr.join = nbr.join, pc.method = pc.method)
  maximize.args = c(list(...), restart = restart,
                    perturb = perturb, max.iter = max.iter)

  hybrid.search(x, whitelist = whitelist, blacklist = blacklist,
                restrict = "hpc", maximize = "hc", restrict.args = restrict.args,
                maximize.args = maximize.args, score = score, optimized = optimized,
                debug = debug)

}#H2PC

# Frontend for the Markov blanket learning algotrithms.
learn.mb = function(x, node, method, whitelist = NULL, blacklist = NULL,
    start = NULL, test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE,
    optimized = TRUE, ...) {

  mb.backend(x, target = node, method = method, whitelist = whitelist,
    blacklist = blacklist, start = start, test = test, alpha = alpha,
    test.args = test.args, debug = debug, optimized = optimized, ...)

}#LEARN.MB

# Frontend for causal discovery learning algotrithms.
learn.nbr = function(x, node, method, whitelist = NULL, blacklist = NULL,
    start = NULL, test = NULL, alpha = 0.05, test.args = NULL, debug = FALSE,
    optimized = TRUE, ...) {

  nbr.backend(x, target = node, method = method, whitelist = whitelist,
    blacklist = blacklist, test = test, alpha = alpha, test.args = test.args, debug = debug,
    optimized = optimized, ...)

}#LEARN.NBR

# naive Bayes frontend.
naive.bayes = function(training, explanatory, data) {

  bayesian.classifier(data, training = training, explanatory = explanatory,
    method = "naive", whitelist = NULL, blacklist = NULL, expand = list(),
    debug = FALSE)

}#NAIVE.BAYES

# tree-augmented naive Bayes frontend.
tree.bayes = function(x, training, explanatory, whitelist = NULL, blacklist = NULL,
    mi = NULL, root = NULL, debug = FALSE) {

  bayesian.classifier(x, training = training, explanatory = explanatory,
    method = "tan", whitelist = whitelist, blacklist = blacklist,
    expand = list(estimator = mi, root = root), debug = debug)

}#TAN
