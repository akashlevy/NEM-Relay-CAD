##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 29177 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 03:27:42 PST #
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
$tempTestColl makeFormalPorts {I1 I0 S1 S0 ZN}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test energy__S0__lh__ZN__lh
set tempTest [ SBTest "energy__S0__lh__ZN__lh" ]
$tempTest setTargets { energy__S0__lh__ZN__lh cap_energy__ZN__lh energy1__S0__lh__ZN__lh__VB energy1__S0__lh__ZN__lh__VDD energy1__S0__lh__ZN__lh__VSS leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS }
$tempTest setTargetInputs {
  {S0 lh}}

$tempTest setTargetOutputs {
  {ZN lh}}

$tempTest setSwitchingInputs {
  {S0 lh}  {S1 hl}}

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
set tempAcq [ SBEnergyAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "I1&!I0"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I1 I0 ZN:out S0 S1 } { initial_delay units ct default_slew pp energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus                  {   I1   I0   S0   S1   ZN    } {
                   "0"            {} {   1    0    0    1    0     }
       "initial_delay" { start out } {   -    -    1    0    1     }
"(initial_delay)+(pp)"            {} {   -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_S1               Tin        { S1 start } NO_USER SYS }
  { tin_S0               Tin        { S0 start } NO_USER SYS }
  { tout_ZN              Tout       { ZN out } NO_USER SYS }
  { energy__S0__lh__ZN__lh energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__S0__lh__ZN__lh__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__S0__lh__ZN__lh__VB energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__S0__lh__ZN__lh__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
  { cap_energy__ZN__lh   cap_energy { start pp cap_ZN_0 ZN 0 } }
}

$tempWT bindInterface { I1 I0 ZN S0 S1 } { cell_initial_delay S0[cycle_time] S0[cycle_time] S0[default_slew] cell_power_period power_stabilization_threshold power_stabilization_threshold_absolute }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

## 
## Sweep Specification
$tempAcq setTagNumTableDimensions 0 mpw

## 
## Harnesses

set tempHarness [ SBHarness default ]
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement dcvs
$tempTopOp setElementName cap_ground_ZN
$tempTopOp setOperation insert
$tempTopOp setNodes {ground_ZN 0}
$tempTopOp setParam {0}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_0 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_1
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_1 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_2
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_2 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_3
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_3 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_4
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_4 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_5
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_5 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_6
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_6 ground_ZN}
$tempTopOp setParam {load_ZN}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_7
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_7 ground_ZN}
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

