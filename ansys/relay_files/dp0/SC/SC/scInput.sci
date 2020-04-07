<SystemCoupling Ver="1">
  <Participants Count="2">
    <Participant Ver="1" Type="0">
      <Name PropType="string">Solution 2</Name>
      <DisplayName PropType="string">EM Transient</DisplayName>
      <ParticipantType PropType="string">MAPDL</ParticipantType>
      <SupportsCouplingIterations PropType="bool">True</SupportsCouplingIterations>
      <UnitSystem PropType="string">MKS_STANDARD</UnitSystem>
      <Regions Count="1">
        <Region Ver="1">
          <Name PropType="string">FSIN_1</Name>
          <DisplayName PropType="string">Fluid Solid Interface</DisplayName>
          <TopologicalDimensionality PropType="int">3</TopologicalDimensionality>
        </Region>
      </Regions>
      <Variables Count="2">
        <Variable Ver="1">
          <Name PropType="string">FORC</Name>
          <DisplayName PropType="string">Force</DisplayName>
          <PhysicalType PropType="string">Force</PhysicalType>
        </Variable>
        <Variable Ver="1">
          <Name PropType="string">INCD</Name>
          <DisplayName PropType="string">Incremental Displacement</DisplayName>
          <PhysicalType PropType="string">Length</PhysicalType>
        </Variable>
      </Variables>
      <BaseUnits Length="m" Time="s" Mass="kg" Luminance="cd" Angle="radian" SolidAngle="sr" Temperature="C" ChemicalAmount="mol" Current="A" />
    </Participant>
    <Participant Ver="1" Type="0">
      <Name PropType="string">Solution 3</Name>
      <DisplayName PropType="string">Fluid Flow (Fluent)</DisplayName>
      <ParticipantType PropType="string">FLUENT</ParticipantType>
      <SupportsCouplingIterations PropType="bool">True</SupportsCouplingIterations>
      <UnitSystem PropType="string">SI</UnitSystem>
      <Regions Count="2">
        <Region Ver="1">
          <Name PropType="string">outside_wall</Name>
          <DisplayName PropType="string">outside_wall</DisplayName>
          <TopologicalDimensionality PropType="int">3</TopologicalDimensionality>
        </Region>
        <Region Ver="1">
          <Name PropType="string">inside_wall</Name>
          <DisplayName PropType="string">inside_wall</DisplayName>
          <TopologicalDimensionality PropType="int">3</TopologicalDimensionality>
        </Region>
      </Regions>
      <Variables Count="2">
        <Variable Ver="1">
          <Name PropType="string">force</Name>
          <DisplayName PropType="string">force</DisplayName>
          <PhysicalType PropType="string">Force</PhysicalType>
        </Variable>
        <Variable Ver="1">
          <Name PropType="string">displacement</Name>
          <DisplayName PropType="string">displacement</DisplayName>
          <PhysicalType PropType="string">Length</PhysicalType>
        </Variable>
      </Variables>
      <BaseUnits Length="m" Time="s" Mass="kg" Luminance="cd" Angle="radian" SolidAngle="sr" Temperature="K" ChemicalAmount="mol" Current="A" />
    </Participant>
  </Participants>
  <Analysis Ver="1">
    <AnalysisType PropType="int">1</AnalysisType>
    <Initialization Ver="1">
      <Option PropType="int">0<!--0=Automatic, 1=Value Specified--></Option>
    </Initialization>
    <Duration Ver="1">
      <Option PropType="int">1<!--0=Number of Steps, 1=End Time--></Option>
      <Time PropType="double" UCat="Time" Unt="s">5E-09<!--This input is only required if Duration Option=1--></Time>
    </Duration>
    <Step Ver="1">
      <MaximumIterations PropType="int">5<!--For single coupling iteration, both MinimumIterations and MaximumIterations should be 1--></MaximumIterations>
      <MinimumIterations PropType="int">1</MinimumIterations>
      <Size PropType="double" UCat="Time" Unt="s">1E-09</Size>
      <Option PropType="int">1<!--0=Nondimensional Steps, 1=Step size value specified, (Unsupported: 2=Step size scaled by iteration convergence)--></Option>
    </Step>
    <UnitSystem PropType="string">MKS<!-- --></UnitSystem>
  </Analysis>
  <Transfers Count="2">
    <Transfer Ver="1">
      <Name PropType="string">Data Transfer</Name>
      <DisplayName PropType="string">Data Transfer</DisplayName>
      <ExecuteCouplingAt PropType="int">2</ExecuteCouplingAt>
      <ConvergenceOption PropType="int">0</ConvergenceOption>
      <ConvergenceTarget PropType="double">0.01</ConvergenceTarget>
      <UnderRelaxationFactor PropType="double">1</UnderRelaxationFactor>
      <Ramping PropType="int">0<!--None=0; Linear=1--></Ramping>
      <Source Ver="1">
        <Participant PropType="string">Solution 3</Participant>
        <Region PropType="string">inside_wall</Region>
        <Variable PropType="string">force</Variable>
      </Source>
      <Target Ver="1">
        <Participant PropType="string">Solution 2</Participant>
        <Region PropType="string">FSIN_1</Region>
        <Variable PropType="string">FORC</Variable>
      </Target>
      <MappingSettings Ver="1" />
    </Transfer>
    <Transfer Ver="1">
      <Name PropType="string">Data Transfer 2</Name>
      <DisplayName PropType="string">Data Transfer 2</DisplayName>
      <ExecuteCouplingAt PropType="int">2</ExecuteCouplingAt>
      <ConvergenceOption PropType="int">0</ConvergenceOption>
      <ConvergenceTarget PropType="double">0.01</ConvergenceTarget>
      <UnderRelaxationFactor PropType="double">1</UnderRelaxationFactor>
      <Ramping PropType="int">0<!--None=0; Linear=1--></Ramping>
      <Source Ver="1">
        <Participant PropType="string">Solution 2</Participant>
        <Region PropType="string">FSIN_1</Region>
        <Variable PropType="string">INCD</Variable>
      </Source>
      <Target Ver="1">
        <Participant PropType="string">Solution 3</Participant>
        <Region PropType="string">inside_wall</Region>
        <Variable PropType="string">displacement</Variable>
      </Target>
      <MappingSettings Ver="1" />
    </Transfer>
  </Transfers>
  <ExecutionControl Ver="0">
    <CoSimulationSequence Count="2">
      <Participant Ver="1">
        <Name PropType="string">Solution 3</Name>
        <SolutionSequence PropType="int">2</SolutionSequence>
      </Participant>
      <Participant Ver="1">
        <Name PropType="string">Solution 2</Name>
        <SolutionSequence PropType="int">1</SolutionSequence>
      </Participant>
    </CoSimulationSequence>
    <DebugOutput Ver="1">
      <Transfers Ver="1">
        <Default PropType="int">0</Default>
        <SourceData PropType="int">0</SourceData>
        <SourceMeshCoords PropType="int">0</SourceMeshCoords>
        <SourceMeshTopol PropType="int">0</SourceMeshTopol>
        <TargetData PropType="int">0</TargetData>
        <TargetMeshCoords PropType="int">0</TargetMeshCoords>
        <TargetMeshTopol PropType="int">0</TargetMeshTopol>
      </Transfers>
      <Default PropType="int">0</Default>
      <AnalysisInitialization PropType="int">0</AnalysisInitialization>
      <ConvergenceChecks PropType="int">0</ConvergenceChecks>
      <ParticipantConnection PropType="int">0</ParticipantConnection>
      <Shutdown PropType="int">0</Shutdown>
      <SolutionInitialization PropType="int">0</SolutionInitialization>
      <Startup PropType="int">0</Startup>
    </DebugOutput>
    <IntermediateResultFileOutput Ver="1">
      <FrequencyOption PropType="int">1<!--0=None, 1=Every Step, 2=Step Interval--></FrequencyOption>
    </IntermediateResultFileOutput>
  </ExecutionControl>
</SystemCoupling>