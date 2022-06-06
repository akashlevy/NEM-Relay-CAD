#! /bin/tcsh
foreach nin (2 4 10)
  foreach res (1 5)
    foreach load (0.00021 0.00073 0.00177 0.00385 0.00802 0.01635 0.03301 0.06633 0.13266 0.26532)
      echo RUNNING: source ptpx.sh feedthru${res}k BUFFD1BWP40 $load $nin
      source ptpx.sh feedthru${res}k BUFFD1BWP40 $load $nin
    end
  end
end