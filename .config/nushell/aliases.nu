# basic shortcuts
alias :q = exit
alias :e = echo $env.EDITOR
alias c = clear
# alias ls = ls -a
alias pwd = echo $env.PWD
alias cat = bat
alias grep = rg

def o2info [] {
 let kernel = (uname -r)
 let proc = (uname --processor)
 let name = (uname --nodename)
 let os = (uname -o)
 print $"(ansi green)($name)(ansi reset) (ansi red)($os)\(($proc)\)(ansi reset)"
 print $kernel
}
