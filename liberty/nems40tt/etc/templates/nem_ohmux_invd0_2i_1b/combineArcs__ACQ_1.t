##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 16389 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 04:21:23 PST #
#                                                                            #
# Copyright (C) 2017 Synopsys Inc.                                #
# This file contains confidential and proprietry information.                #
# All rights reserved.                                                       #
#                                                                            #
##############################################################################

set tempTestColl [ SBTestCollection automap ]


# Specifies the version of the template API expected by this file.
$tempTestColl setTemplateVer 7

## 
## Configuration Flags
$tempTestColl setConfigurationFlags { doTiming doPower doCcs }

## 
## Formal Ports
$tempTestColl makeFormalPorts {ZN_0 S1 S0 I0_0 I1_0}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test combineArcs
set tempTest [ SBTest "combineArcs" ]
$tempTest setTargets { combine_arcs }
$tempTest setAnalysisType tranPlus

## 
## Sweep Specification

## 
## Harnesses
$tempTest setAcquire 1

## 
## ACQ_1
set tempAcq [ SBCombineArcsAcquisition "ACQ_1" ]
$tempAcq setAcquire 1
$tempAcq setState "0"
$tempAcq setStateCoverage "0"

## 
## Combined Acquisitions
$tempAcq addCombinedAcquisition delay__S0__hl__ZN_0__hl__ACQ_1
$tempAcq addCombinedAcquisition delay__S1__lh__ZN_0__hl__ACQ_1
$tempAcq addCombinedAcquisition energy__S0__hl__ZN_0__hl__ACQ_1
$tempAcq addCombinedAcquisition energy__S1__lh__ZN_0__hl__ACQ_1

## 
## Sweep Specification

## 
## Harnesses
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

