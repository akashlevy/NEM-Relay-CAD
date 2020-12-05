##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 16358 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 04:21:24 PST #
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
$tempTestColl makeFormalPorts {ZN S0 I1 I0 I3 I2 S3 S2 S1}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test energy__I0__hl
set tempTest [ SBTest "energy__I0__hl" ]
$tempTest setTargets { energy__I0__hl Cin__I0__hl ccs_cin1__I0__hl ccs_cin2__I0__hl ccs_tin1__I0__hl ccs_tin2__I0__hl energy1__I0__hl__VB energy1__I0__hl__VDD energy1__I0__hl__VSS leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__I0__hl }
$tempTest setTargetInputs {
  {I0 hl}}

$tempTest setSwitchingInputs {
  {I0 hl}}

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
$tempAcq setState "S3&!S2&!S1&!S0&!I1&!I2&!I3&ZN"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin2__I0__hl"
$tempAcq setAdditionalStateCoverage "1" "time_at_voltage__I0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin1__I0__hl"
$tempAcq setAdditionalStateCoverage "1" "Cin__I0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin1__I0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin2__I0__hl"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { ZN:out I2 I1 I0 I3 S0 S3 S2 S1 } { initial_delay units ct default_slew pp prop_delay_level energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus              {   I2   I1   I0   I3   S0   S3   S2   S1   ZN    } {
                   "0"        {} {   0    0    1    0    0    1    0    0    1     }
       "initial_delay" { start } {   -    -    0    -    -    -    -    -    -     }
"(initial_delay)+(pp)"        {} {   -    -    -    -    -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_I0               Tin        { I0 start } NO_USER SYS }
  { cin_I0               Cin        { I0 start } NO_USER SYS }
  { ccs_cin1_I0          ccs_cin1   { I0 start } NO_USER SYS }
  { ccs_cin2_I0          ccs_cin2   { I0 start } NO_USER SYS }
  { ccs_tin1_I0          ccs_tin1   { I0 start } NO_USER SYS }
  { ccs_tin2_I0          ccs_tin2   { I0 start } NO_USER SYS }
  { ccs_time_ref_I0      time_at_voltage { I0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { energy__I0__hl       energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__I0__hl__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__I0__hl__VB  energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__I0__hl__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
}

$tempWT bindInterface { ZN I2 I1 I0 I3 S0 S3 S2 S1 } { cell_initial_delay I0[cycle_time] I0[cycle_time] I0[default_slew] cell_power_period I0[prop_delay_inp_level_fall] power_stabilization_threshold power_stabilization_threshold_absolute }
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

