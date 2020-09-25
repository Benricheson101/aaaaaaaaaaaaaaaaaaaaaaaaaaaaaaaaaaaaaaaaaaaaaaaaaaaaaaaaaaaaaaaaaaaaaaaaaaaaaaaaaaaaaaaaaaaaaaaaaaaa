let 
  fun inf_loop () = (
    print "a";
    inf_loop ()
  )
in
  inf_loop ()
end
