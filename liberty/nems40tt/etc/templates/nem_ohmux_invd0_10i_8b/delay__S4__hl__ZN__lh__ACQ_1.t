##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 10386 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Mon, 07 Dec 2020 02:25:17 PST #
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
## Test delay__S4__hl__ZN__lh
set tempTest [ SBTest "delay__S4__hl__ZN__lh" ]
$tempTest setTargets { delay__S4__hl__ZN__lh Cin__S0__lh Cin__S4__hl Tout__ZN__lh ccs_cin1__S0__lh ccs_cin1__S4__hl ccs_cin2__S0__lh ccs_cin2__S4__hl ccs_tin1__S0__lh ccs_tin1__S4__hl ccs_tin2__S0__lh ccs_tin2__S4__hl delay_ccs_native_current__S4__hl__ZN__lh time_at_voltage__S0__lh time_at_voltage__S4__hl }
$tempTest setTargetInputs {
  {S4 hl}}

$tempTest setTargetOutputs {
  {ZN lh}}

$tempTest setSwitchingInputs {
  {S4 hl}  {S0 lh}}

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
$tempAcq setState "I4&!I0&!I1&!I2&!I3&!I5&!I6&!I7&!I8&!I9&!S1&!S2&!S3&!S5&!S6&!S7&!S8&!S9"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { I9 I8 ZN:out S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { initial_delay units ct default_slew pp prop_delay_level ccsPoints volt_tolerance stable }

$tempWT setStimulus                                                {   I9   I8   S8   S3   S2   S1   S0   S7   S9   S5   I6   I1   S6   I7   I0   I5   I4   S4   I2   I3   ZN    } {
                                                 "0"            {} {   0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    0    1    1    0    0    0     }
                                     "initial_delay" { start out } {   -    -    -    -    -    -    1    -    -    -    -    -    -    -    -    -    -    0    -    -    1     }
"max((initial_delay)+(pp),(initial_delay)+(stable))"            {} {   -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_S0               Tin        { S0 start } NO_USER SYS }
  { tin_S4               Tin        { S4 start } NO_USER SYS }
  { cin_S0               Cin        { S0 start } NO_USER SYS }
  { cin_S4               Cin        { S4 start } NO_USER SYS }
  { ccs_cin1_S0          ccs_cin1   { S0 start } NO_USER SYS }
  { ccs_cin2_S0          ccs_cin2   { S0 start } NO_USER SYS }
  { ccs_tin1_S0          ccs_tin1   { S0 start } NO_USER SYS }
  { ccs_tin2_S0          ccs_tin2   { S0 start } NO_USER SYS }
  { ccs_time_ref_S0      time_at_voltage { S0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { ccs_cin1_S4          ccs_cin1   { S4 start } NO_USER SYS }
  { ccs_cin2_S4          ccs_cin2   { S4 start } NO_USER SYS }
  { ccs_tin1_S4          ccs_tin1   { S4 start } NO_USER SYS }
  { ccs_tin2_S4          ccs_tin2   { S4 start } NO_USER SYS }
  { ccs_time_ref_S4      time_at_voltage { S4 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { tout_ZN              Tout       { ZN out } NO_USER SYS }
  { delay_S4_ZN          delay      { S4 start ZN out } NO_USER SYS }
  { delay_ccs_native_current__S4__hl__ZN__lh delay_ccs_native_current { S4 start ZN VSS out (initial_delay)+(stable) load_ZN __param_VSS __param_VDD ccsPoints volt_tolerance } NO_USER SYS }
}

$tempWT bindInterface { I9 I8 ZN S8 S3 S2 S1 S0 S7 S9 S5 I6 I1 S6 I7 I0 I5 I4 S4 I2 I3 } { cell_initial_delay S4[cycle_time] S4[cycle_time] S4[default_slew] cell_power_period S4[prop_delay_inp_level_fall] ZN[num_ccs_samples] ZN[ccs_max_voltage_error] ZN[stable_time] }
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

