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
## Test delay__S9__lh__ZN_0__hl
set tempTest [ SBTest "delay__S9__lh__ZN_0__hl" ]
$tempTest setTargets { delay__S9__lh__ZN_0__hl Cin__S1__hl Cin__S9__lh Tout__ZN_0__hl ccs_cin1__S1__hl ccs_cin1__S9__lh ccs_cin2__S1__hl ccs_cin2__S9__lh ccs_tin1__S1__hl ccs_tin1__S9__lh ccs_tin2__S1__hl ccs_tin2__S9__lh delay_ccs_native_current__S9__lh__ZN_0__hl time_at_voltage__S1__hl time_at_voltage__S9__lh }
$tempTest setTargetInputs {
  {S9 lh}}

$tempTest setTargetOutputs {
  {ZN_0 hl}}

$tempTest setSwitchingInputs {
  {S9 lh}  {S1 hl}}

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
$tempAcq setState "I9_0&!I0_0&!I10_0&!I11_0&!I12_0&!I13_0&!I1_0&!I2_0&!I3_0&!I4_0&!I5_0&!I6_0&!I7_0&!I8_0&!S0&!S10&!S11&!S12&!S13&!S2&!S3&!S4&!S5&!S6&!S7&!S8"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0:out S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable }

$tempWT setStimulus                                                {   I3_0 I4_0 S8   S3   S2   S1   S0   S7   S6   S5   S4   I1_0 I2_0 S13  S11  S10  I5_0 I12_0 S9   I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12  I6_0 ZN_0  } {
                                                 "0"            {} {   0    0    0    0    0    1    0    0    0    0    0    0    0    0    0    0    0    0     0    0    0     1    0     0    0     0    0    0    1     }
                                     "initial_delay" { start out } {   -    -    -    -    -    0    -    -    -    -    -    -    -    -    -    -    -    -     1    -    -     -    -     -    -     -    -    -    0     }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     -    -    -     -    -     -    -     -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_S1               Tin        { S1 start } NO_USER SYS }
  { tin_S9               Tin        { S9 start } NO_USER SYS }
  { cin_S1               Cin        { S1 start } NO_USER SYS }
  { cin_S9               Cin        { S9 start } NO_USER SYS }
  { ccs_cin1_S1          ccs_cin1   { S1 start } NO_USER SYS }
  { ccs_cin2_S1          ccs_cin2   { S1 start } NO_USER SYS }
  { ccs_tin1_S1          ccs_tin1   { S1 start } NO_USER SYS }
  { ccs_tin2_S1          ccs_tin2   { S1 start } NO_USER SYS }
  { ccs_time_ref_S1      time_at_voltage { S1 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { ccs_cin1_S9          ccs_cin1   { S9 start } NO_USER SYS }
  { ccs_cin2_S9          ccs_cin2   { S9 start } NO_USER SYS }
  { ccs_tin1_S9          ccs_tin1   { S9 start } NO_USER SYS }
  { ccs_tin2_S9          ccs_tin2   { S9 start } NO_USER SYS }
  { ccs_time_ref_S9      time_at_voltage { S9 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN_0            Tout       { ZN_0 out } NO_USER SYS }
  { delay_S9_ZN_0        delay      { S9 start ZN_0 out } NO_USER SYS }
  { delay_ccs_native_current__S9__lh__ZN_0__hl delay_ccs_native_current { S9 start ZN_0 VSS out (initial_delay)+(stable) load_ZN_0 __param_VDD __param_VSS ccsPoints volt_tolerance } NO_USER SYS }
}

$tempWT bindInterface { I3_0 I4_0 S8 S3 S2 S1 S0 S7 S6 S5 S4 I1_0 I2_0 S13 ZN_0 S11 S10 I5_0 I12_0 S9 I8_0 I13_0 I9_0 I11_0 I7_0 I10_0 I0_0 S12 I6_0 } { cell_initial_delay S9[cycle_time] S9[cycle_time] S9[default_slew] cell_power_period S9[prop_delay_inp_level_rise] ZN_0[num_ccs_samples] ZN_0[ccs_max_voltage_error] ZN_0[stable_time] }
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

