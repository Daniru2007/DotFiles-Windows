os.execute("DOSKEY l=ls $*")
os.execute("DOSKEY ls=lsd $*")
os.execute("DOSKEY lt=lsd $* --tree")
os.execute("DOSKEY ll=lsd $* -l")
os.execute("DOSKEY la=lsd $* -a")
os.execute("DOSKEY lla=lsd $* -la")
os.execute("DOSKEY rmdir=rmdir $* /S /Q")
os.execute("DOSKEY rd=rmdir $* /S /Q")
os.execute("DOSKEY vim=nvim $*")
-- load(io.popen('oh-my-posh --config="C:\\Users\\danir\\oh_my_posh.omp.json" --init --shell cmd'):read("*a"))()

