##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 16422 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 04:21:34 PST #
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
$tempTestColl makeFormalPorts {
    I9
    I8
    S9
    S0
    I1
    I0
    I3
    I2
    I5
    I4
    I7
    I6
    S3
    S8
    S6
    S5
    S7
    S2
    ZN
    S4
    S1}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test leakage_power
set tempTest [ SBTest "leakage_power" ]
$tempTest setTargets { leakage_power }
$tempTest setAnalysisType tranPlus

## 
## Sweep Specification
$tempTest setTagNumTableDimensions 0 mpw

## 
## Harnesses
$tempTest setAcquire 1
$tempTest setStateCoverage "1"

## 
## ACQ_1
set tempAcq [ SBLeakageCurrentAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "S9&!S8&!S3&!S2&!S1&!S0&!S7&!S6&!S5&!S4&!I9&!I8&!I1&!I3&!I2&!I5&!I4&!I7&!I6&ZN&!I0"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I9 I8 ZN:out S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { initial_delay units ct default_slew trailing_delay pp }

$tempWT setStimulus                       {   I9   I8   S8   S3   S2   S1   S0   S7   S9   S5   I6   I1   S6   I7   I0   I5   I4   S4   I2   I3   ZN    } {
                            "0"   { in0 } {   0    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    1     }
   "(0)+initial_delay+(1.0*pp)" { start } {   0    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    1     }
"(0)+initial_delay+(1.0*pp)+pp"   { end } {   0    0    0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    1     }
}

$tempWT addMeasurements {} {
  { leakage_current      leakage_power { (0)+initial_delay+(1.0*pp) (0)+initial_delay+(1.0*pp)+pp {I0 I1 I2 I3 I4 I5 I6 I7 I8 I9 S0 S1 S2 S3 S4 S5 S6 S7 S8 S9} {} } NO_USER SYS }
}

$tempWT bindInterface { I9 I8 ZN S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { cell_initial_delay None[cycle_time] None[cycle_time] None[default_slew] cell_trailing_delay cell_power_period }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

## 
## Sweep Specification
$tempAcq setTagNumTableDimensions 0 mpw

## 
## Harnesses

set tempHarness [ SBHarness default ]
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_0 ZN_0[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_1
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_1 ZN_1[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_2
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_2 ZN_2[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_3
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_3 ZN_3[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_4
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_4 ZN_4[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_5
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_5 ZN_5[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_6
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_6 ZN_6[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_7
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_7 ZN_7[logic_low_name]}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
$tempAcq addHarness $tempHarness
release_obj $tempHarness

$tempAcq setHarnessName default
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

