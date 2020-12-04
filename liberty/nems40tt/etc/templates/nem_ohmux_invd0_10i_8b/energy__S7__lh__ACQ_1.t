##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 20781 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Tue, 03 Nov 2020 09:02:29 PST #
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
## Test energy__S7__lh
set tempTest [ SBTest "energy__S7__lh" ]
$tempTest setTargets { energy__S7__lh Cin__S7__lh ccs_cin1__S0__hl ccs_cin1__S7__lh ccs_cin2__S0__hl ccs_cin2__S7__lh ccs_tin1__S0__hl ccs_tin1__S7__lh ccs_tin2__S0__hl ccs_tin2__S7__lh energy1__S7__lh__VB energy1__S7__lh__VDD energy1__S7__lh__VSS leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__S0__hl time_at_voltage__S7__lh }
$tempTest setTargetInputs {
  {S7 lh}}

$tempTest setSwitchingInputs {
  {S7 lh}  {S0 hl}}

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
$tempAcq setState "!S9&!S8&!S3&!S2&!S1&!S6&!S5&!S4&!I9&!I8&!I1&!I3&!I2&!I5&!I4&!I7&!I6&ZN&!I0"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "Cin__S7__lh"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin1__S7__lh"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin2__S7__lh"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin1__S7__lh"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin2__S7__lh"
$tempAcq setAdditionalStateCoverage "1" "time_at_voltage__S7__lh"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I9 I8 ZN:out S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { initial_delay units ct default_slew pp prop_delay_level energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus              {   I9   I8   S8   S3   S2   S1   S0   S7   S9   S5   I6   I1   S6   I7   I0   I5   I4   S4   I2   I3   ZN    } {
                   "0"        {} {   0    0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0    0    1     }
       "initial_delay" { start } {   -    -    -    -    -    -    0    1    -    -    -    -    -    -    -    -    -    -    -    -    -     }
"(initial_delay)+(pp)"        {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_S0               Tin        { S0 start } NO_USER SYS }
  { tin_S7               Tin        { S7 start } NO_USER SYS }
  { cin_S7               Cin        { S7 start } NO_USER SYS }
  { ccs_cin1_S0          ccs_cin1   { S0 start } NO_USER SYS }
  { ccs_cin2_S0          ccs_cin2   { S0 start } NO_USER SYS }
  { ccs_tin1_S0          ccs_tin1   { S0 start } NO_USER SYS }
  { ccs_tin2_S0          ccs_tin2   { S0 start } NO_USER SYS }
  { ccs_time_ref_S0      time_at_voltage { S0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { ccs_cin1_S7          ccs_cin1   { S7 start } NO_USER SYS }
  { ccs_cin2_S7          ccs_cin2   { S7 start } NO_USER SYS }
  { ccs_tin1_S7          ccs_tin1   { S7 start } NO_USER SYS }
  { ccs_tin2_S7          ccs_tin2   { S7 start } NO_USER SYS }
  { ccs_time_ref_S7      time_at_voltage { S7 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { energy__S7__lh       energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__S7__lh__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__S7__lh__VB  energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__S7__lh__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
}

$tempWT bindInterface { I9 I8 ZN S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { cell_initial_delay S7[cycle_time] S7[cycle_time] S7[default_slew] cell_power_period S7[prop_delay_inp_level_rise] power_stabilization_threshold power_stabilization_threshold_absolute }
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

