##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 16456 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Fri, 04 Dec 2020 04:21:40 PST #
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
    I3_0
    I4_0
    S8
    S3
    S2
    S1
    I5_0
    S7
    S6
    S5
    S4
    I1_0
    I2_0
    S13
    S12
    S11
    S10
    S0
    I12_0
    S9
    I8_0
    I13_0
    I9_0
    I11_0
    I7_0
    I10_0
    I0_0
    ZN_0
    I6_0}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test delay__I10_0__hl__ZN_0__lh
set tempTest [ SBTest "delay__I10_0__hl__ZN_0__lh" ]
$tempTest setTargets { delay__I10_0__hl__ZN_0__lh Cin__I10_0__hl Tout__ZN_0__lh cap_energy__ZN_0__lh ccs_cin1__I10_0__hl ccs_cin2__I10_0__hl ccs_tin1__I10_0__hl ccs_tin2__I10_0__hl delay_ccs_native_current__I10_0__hl__ZN_0__lh energy1__I10_0__hl__ZN_0__lh__VB energy1__I10_0__hl__ZN_0__lh__VDD energy1__I10_0__hl__ZN_0__lh__VSS energy__I10_0__hl__ZN_0__lh leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__I10_0__hl }
$tempTest setTargetInputs {
  {I10_0 hl}}

$tempTest setTargetOutputs {
  {ZN_0 lh}}

$tempTest setSwitchingInputs {
  {I10_0 hl}}

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
$tempAcq setState "S10&!I0_0&!I11_0&!I12_0&!I13_0&!I1_0&!I2_0&!I3_0&!I4_0&!I5_0&!I6_0&!I7_0&!I8_0&!I9_0&!S0&!S1&!S11&!S12&!S13&!S2&!S3&!S4&!S5&!S6&!S7&!S8&!S9"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "energy__I10_0__hl__ZN_0__lh"
$tempAcq setAdditionalStateCoverage "1" "cap_energy__ZN_0__lh"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VDD"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VB"
$tempAcq setAdditionalStateCoverage "1" "energy1__I10_0__hl__ZN_0__lh__VB"
$tempAcq setAdditionalStateCoverage "1" "energy1__I10_0__hl__ZN_0__lh__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VSS"
$tempAcq setAdditionalStateCoverage "1" "leakage_power1__VDD"
$tempAcq setAdditionalStateCoverage "1" "energy1__I10_0__hl__ZN_0__lh__VDD"
$tempAcq setAdditionalStateCoverage "1" "leakage_power2__VB"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0:inout S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus                                                {   I3_0 I4_0 S8   S3   S2   S1   S0   S7   S6   S5   S4   I1_0 I2_0 S13  S11  S10  I5_0 I12_0 S9   I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12  I6_0 ZN_0  } {
                                                 "0"            {} {   0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    1    0    0     0    0    0     0    0     0    1     0    0    0    Z,0   }
                                     "initial_delay" { start out } {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     -    -    -     -    -     -    0     -    -    -    Z,1   }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     -    -    -     -    -     -    -     -    -    -    -,-   }
}

$tempWT addMeasurements {} {
  { tin_I10_0            Tin        { I10_0 start } NO_USER SYS }
  { cin_I10_0            Cin        { I10_0 start } NO_USER SYS }
  { ccs_cin1_I10_0       ccs_cin1   { I10_0 start } NO_USER SYS }
  { ccs_cin2_I10_0       ccs_cin2   { I10_0 start } NO_USER SYS }
  { ccs_tin1_I10_0       ccs_tin1   { I10_0 start } NO_USER SYS }
  { ccs_tin2_I10_0       ccs_tin2   { I10_0 start } NO_USER SYS }
  { ccs_time_ref_I10_0   time_at_voltage { I10_0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN_0            Tout       { ZN_0 out } NO_USER SYS }
  { delay_I10_0_ZN_0     delay      { I10_0 start ZN_0 out } NO_USER SYS }
  { delay_ccs_native_current__I10_0__hl__ZN_0__lh delay_ccs_native_current { I10_0 start ZN_0 VSS out (initial_delay)+(stable) load_ZN_0 __param_VSS __param_VDD ccsPoints volt_tolerance } NO_USER SYS }
  { energy__I10_0__hl__ZN_0__lh energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__I10_0__hl__ZN_0__lh__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__I10_0__hl__ZN_0__lh__VB energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__I10_0__hl__ZN_0__lh__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
  { cap_energy__ZN_0__lh cap_energy { start pp cap_ZN_0 ZN_0 0 } }
}

$tempWT bindInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0 S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { cell_initial_delay I10_0[cycle_time] I10_0[cycle_time] I10_0[default_slew] cell_power_period I10_0[prop_delay_inp_level_fall] ZN_0[num_ccs_samples] ZN_0[ccs_max_voltage_error] ZN_0[stable_time] power_stabilization_threshold power_stabilization_threshold_absolute }
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
