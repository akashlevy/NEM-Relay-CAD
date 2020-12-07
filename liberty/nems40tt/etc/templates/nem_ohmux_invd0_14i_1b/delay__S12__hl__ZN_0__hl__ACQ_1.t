##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 10424 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Mon, 07 Dec 2020 02:25:25 PST #
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
## Test delay__S12__hl__ZN_0__hl
set tempTest [ SBTest "delay__S12__hl__ZN_0__hl" ]
$tempTest setTargets { delay__S12__hl__ZN_0__hl Cin__S0__lh Cin__S12__hl Tout__ZN_0__hl ccs_cin1__S0__lh ccs_cin1__S12__hl ccs_cin2__S0__lh ccs_cin2__S12__hl ccs_tin1__S0__lh ccs_tin1__S12__hl ccs_tin2__S0__lh ccs_tin2__S12__hl delay_ccs_native_current__S12__hl__ZN_0__hl time_at_voltage__S0__lh time_at_voltage__S12__hl }
$tempTest setTargetInputs {
  {S12 hl}}

$tempTest setTargetOutputs {
  {ZN_0 hl}}

$tempTest setSwitchingInputs {
  {S12 hl}  {S0 lh}}

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
$tempAcq setState "I0_0&!I10_0&!I11_0&!I12_0&!I13_0&!I1_0&!I2_0&!I3_0&!I4_0&!I5_0&!I6_0&!I7_0&!I8_0&!I9_0&!S1&!S10&!S11&!S13&!S2&!S3&!S4&!S5&!S6&!S7&!S8&!S9"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0:out S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable }

$tempWT setStimulus                                                {   I3_0 I4_0 S8   S3   S2   S1   S0   S7   S6   S5   S4   I1_0 I2_0 S13  S11  S10  I5_0 I12_0 S9   I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12  I6_0 ZN_0  } {
                                                 "0"            {} {   0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0     0    0    0     0    0     0    0     1    1    0    1     }
                                     "initial_delay" { start out } {   -    -    -    -    -    -    1    -    -    -    -    -    -    -    -    -    -    -     -    -    -     -    -     -    -     -    0    -    0     }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     -    -    -     -    -     -    -     -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_S12              Tin        { S12 start } NO_USER SYS }
  { tin_S0               Tin        { S0 start } NO_USER SYS }
  { cin_S12              Cin        { S12 start } NO_USER SYS }
  { cin_S0               Cin        { S0 start } NO_USER SYS }
  { ccs_cin1_S12         ccs_cin1   { S12 start } NO_USER SYS }
  { ccs_cin2_S12         ccs_cin2   { S12 start } NO_USER SYS }
  { ccs_tin1_S12         ccs_tin1   { S12 start } NO_USER SYS }
  { ccs_tin2_S12         ccs_tin2   { S12 start } NO_USER SYS }
  { ccs_time_ref_S12     time_at_voltage { S12 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { ccs_cin1_S0          ccs_cin1   { S0 start } NO_USER SYS }
  { ccs_cin2_S0          ccs_cin2   { S0 start } NO_USER SYS }
  { ccs_tin1_S0          ccs_tin1   { S0 start } NO_USER SYS }
  { ccs_tin2_S0          ccs_tin2   { S0 start } NO_USER SYS }
  { ccs_time_ref_S0      time_at_voltage { S0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN_0            Tout       { ZN_0 out } NO_USER SYS }
  { delay_S12_ZN_0       delay      { S12 start ZN_0 out } NO_USER SYS }
  { delay_ccs_native_current__S12__hl__ZN_0__hl delay_ccs_native_current { S12 start ZN_0 VSS out (initial_delay)+(stable) load_ZN_0 __param_VDD __param_VSS ccsPoints volt_tolerance } NO_USER SYS }
}

$tempWT bindInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0 S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { cell_initial_delay S12[cycle_time] S12[cycle_time] S12[default_slew] cell_power_period S0[prop_delay_inp_level_rise] ZN_0[num_ccs_samples] ZN_0[ccs_max_voltage_error] ZN_0[stable_time] }
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

