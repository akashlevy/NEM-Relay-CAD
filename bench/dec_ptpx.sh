#! /bin/tcsh
foreach nin (2 4 10)
  foreach drive (0 1 2 3 4 6 8 12 16 20 24)
    echo RUNNING: source ptpx.sh dec${nin} BUFFD${drive}BWP40 0.0025
    source ptpx.sh dec${nin} BUFFD${drive}BWP40 0.0025
  end
end