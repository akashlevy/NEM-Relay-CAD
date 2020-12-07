##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 10460 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Mon, 07 Dec 2020 02:25:09 PST #
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
$tempTestColl makeFormalPorts {I3_0 S3 S2 S1 S0 I0_0 ZN_0 I1_0 I2_0}
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
## ACQ_11
set tempAcq [ SBCombineArcsAcquisition "ACQ_11" ]
$tempAcq setAcquire 1
$tempAcq setState "0"
$tempAcq setStateCoverage "0"

## 
## Combined Acquisitions
$tempAcq addCombinedAcquisition delay__S3__lh__ZN_0__hl__ACQ_1
$tempAcq addCombinedAcquisition energy__S3__lh__ZN_0__hl__ACQ_1

## 
## Sweep Specification

## 
## Harnesses
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl
