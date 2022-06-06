#! /bin/tcsh
foreach nin (2 4 10)
  foreach drive (1)
    foreach load (0.00021 0.00073 0.00177 0.00385 0.00802 0.01635 0.03301 0.06633 0.13266 0.26532)
      echo RUNNING: source ptpx.sh muxs${nin} BUFFD${drive}BWP40 $load
      source ptpx.sh muxs${nin} BUFFD${drive}BWP40 $load
    end
  end
end
# foreach nin (2 4 10)
#   foreach drive (0 1 2 3 4 6 8 12 16 20 24)
#     foreach load (0.00021 0.00073 0.00177 0.00385 0.00802 0.01635 0.03301 0.06633 0.13266 0.26532)
#       echo RUNNING: source ptpx.sh muxs${nin} BUFFD${drive}BWP40 $load
#       source ptpx.sh muxs${nin} BUFFD${drive}BWP40 $load
#     end
#   end
# end
