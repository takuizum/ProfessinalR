devtools::install_github("Non-Contradiction/JuliaCall")

library(JuliaCall)
julia <- julia_setup()
julia_command("a = sqrt(2);"); julia_eval("a")
