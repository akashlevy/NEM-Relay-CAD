##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 16422 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 04:21:33 PST #
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
## Test delay__I2__hl__ZN__lh
set tempTest [ SBTest "delay__I2__hl__ZN__lh" ]
$tempTest setTargets { delay__I2__hl__ZN__lh Cin__I2__hl Tout__ZN__lh cap_energy__ZN__lh ccs_cin1__I2__hl ccs_cin2__I2__hl ccs_tin1__I2__hl ccs_tin2__I2__hl delay_ccs_native_current__I2__hl__ZN__lh energy1__I2__hl__ZN__lh__VB energy1__I2__hl__ZN__lh__VDD energy1__I2__hl__ZN__lh__VSS energy__I2__hl__ZN__lh leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__I2__hl }
$tempTest setTargetInputs {
  {I2 hl}}

$tempTest setTargetOutputs {
  {ZN lh}}

$tempTest setSwitchingInputs {
  {I2 hl}}

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
set tempAcq [ SBDelayAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "S2&!I0&!I1&!I3&!I4&!I5&!I6&!I7&!I8&!I9&!S0&!S1&!S3&!S4&!S5&!S6&!S7&!S8&!S9"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2__hl__ZN__lh__VDD"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VB"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2__hl__ZN__lh__VSS"
$tempAcq setAdditionalStateCoverage "1" "energy__I2__hl__ZN__lh"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2__hl__ZN__lh__VB"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VDD"
$tempAcq setAdditionalStateCoverage "1" "cap_energy__ZN__lh"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VB"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VDD"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I9 I8 ZN:inout S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus                                                {   I9   I8   S8   S3   S2   S1   S0   S7   S9   S5   I6   I1   S6   I7   I0   I5   I4   S4   I2   I3   ZN    } {
                                                 "0"            {} {   0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0    0    1    0    Z,0   }
                                     "initial_delay" { start out } {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    0    -    Z,1   }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -,-   }
}

$tempWT addMeasurements {} {
  { tin_I2               Tin        { I2 start } NO_USER SYS }
  { cin_I2               Cin        { I2 start } NO_USER SYS }
  { ccs_cin1_I2          ccs_cin1   { I2 start } NO_USER SYS }
  { ccs_cin2_I2          ccs_cin2   { I2 start } NO_USER SYS }
  { ccs_tin1_I2          ccs_tin1   { I2 start } NO_USER SYS }
  { ccs_tin2_I2          ccs_tin2   { I2 start } NO_USER SYS }
  { ccs_time_ref_I2      time_at_voltage { I2 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN              Tout       { ZN out } NO_USER SYS }
  { delay_I2_ZN          delay      { I2 start ZN out } NO_USER SYS }
  { delay_ccs_native_current__I2__hl__ZN__lh delay_ccs_native_current { I2 start ZN VSS out (initial_delay)+(stable) load_ZN __param_VSS __param_VDD ccsPoints volt_tolerance } NO_USER SYS }
  { energy__I2__hl__ZN__lh energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__I2__hl__ZN__lh__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__I2__hl__ZN__lh__VB energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__I2__hl__ZN__lh__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
  { cap_energy__ZN__lh   cap_energy { start pp cap_ZN ZN 0 } }
}

$tempWT bindInterface { I9 I8 ZN S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { cell_initial_delay I2[cycle_time] I2[cycle_time] I2[default_slew] cell_power_period I2[prop_delay_inp_level_fall] ZN[num_ccs_samples] ZN[ccs_max_voltage_error] ZN[stable_time] power_stabilization_threshold power_stabilization_threshold_absolute }
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
$tempTopOp setElementName cap_ZN
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN ground_ZN}
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

