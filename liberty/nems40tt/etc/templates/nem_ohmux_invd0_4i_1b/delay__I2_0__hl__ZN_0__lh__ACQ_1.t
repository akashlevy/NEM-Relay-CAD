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
## Test delay__I2_0__hl__ZN_0__lh
set tempTest [ SBTest "delay__I2_0__hl__ZN_0__lh" ]
$tempTest setTargets { delay__I2_0__hl__ZN_0__lh Cin__I2_0__hl Tout__ZN_0__lh cap_energy__ZN_0__lh ccs_cin1__I2_0__hl ccs_cin2__I2_0__hl ccs_tin1__I2_0__hl ccs_tin2__I2_0__hl delay_ccs_native_current__I2_0__hl__ZN_0__lh energy1__I2_0__hl__ZN_0__lh__VB energy1__I2_0__hl__ZN_0__lh__VDD energy1__I2_0__hl__ZN_0__lh__VSS energy__I2_0__hl__ZN_0__lh leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__I2_0__hl }
$tempTest setTargetInputs {
  {I2_0 hl}}

$tempTest setTargetOutputs {
  {ZN_0 lh}}

$tempTest setSwitchingInputs {
  {I2_0 hl}}

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
$tempAcq setState "S2&!I0_0&!I1_0&!I3_0&!S0&!S1&!S3"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "cap_energy__ZN_0__lh"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VSS"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2_0__hl__ZN_0__lh__VDD"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2_0__hl__ZN_0__lh__VSS"
$tempAcq setAdditionalStateCoverage "1" "energy__I2_0__hl__ZN_0__lh"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VDD"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VB"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VDD"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VB"
$tempAcq setAdditionalStateCoverage "1" "energy1__I2_0__hl__ZN_0__lh__VB"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I3_0 S3 ZN_0:inout S1 S0 I0_0 I1_0 S2 I2_0 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus                                                {   I3_0 S3   S1   S0   I0_0 I1_0 S2   I2_0 ZN_0  } {
                                                 "0"            {} {   0    0    0    0    0    0    1    1    Z,0   }
                                     "initial_delay" { start out } {   -    -    -    -    -    -    -    0    Z,1   }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -,-   }
}

$tempWT addMeasurements {} {
  { tin_I2_0             Tin        { I2_0 start } NO_USER SYS }
  { cin_I2_0             Cin        { I2_0 start } NO_USER SYS }
  { ccs_cin1_I2_0        ccs_cin1   { I2_0 start } NO_USER SYS }
  { ccs_cin2_I2_0        ccs_cin2   { I2_0 start } NO_USER SYS }
  { ccs_tin1_I2_0        ccs_tin1   { I2_0 start } NO_USER SYS }
  { ccs_tin2_I2_0        ccs_tin2   { I2_0 start } NO_USER SYS }
  { ccs_time_ref_I2_0    time_at_voltage { I2_0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN_0            Tout       { ZN_0 out } NO_USER SYS }
  { delay_I2_0_ZN_0      delay      { I2_0 start ZN_0 out } NO_USER SYS }
  { delay_ccs_native_current__I2_0__hl__ZN_0__lh delay_ccs_native_current { I2_0 start ZN_0 VSS out (initial_delay)+(stable) load_ZN_0 __param_VSS __param_VDD ccsPoints volt_tolerance } NO_USER SYS }
  { energy__I2_0__hl__ZN_0__lh energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__I2_0__hl__ZN_0__lh__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__I2_0__hl__ZN_0__lh__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
  { energy1__I2_0__hl__ZN_0__lh__VB energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { cap_energy__ZN_0__lh cap_energy { start pp cap_ZN_0 ZN_0 0 } }
}

$tempWT bindInterface { I3_0 S3 ZN_0 S1 S0 I0_0 I1_0 S2 I2_0 } { cell_initial_delay I2_0[cycle_time] I2_0[cycle_time] I2_0[default_slew] cell_power_period I2_0[prop_delay_inp_level_fall] ZN_0[num_ccs_samples] ZN_0[ccs_max_voltage_error] ZN_0[stable_time] power_stabilization_threshold power_stabilization_threshold_absolute }
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
$tempTopOp setElementName cap_ground_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ground_ZN_0 0}
$tempTopOp setParam {0}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_0 ground_ZN_0}
$tempTopOp setParam {load_ZN_0}
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

