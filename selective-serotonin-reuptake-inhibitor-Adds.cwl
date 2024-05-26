cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  selective-serotonin-reuptake-inhibitor-ssri-adds-suspension---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  lustral-selective-serotonin-reuptake-inhibitor-ssri-adds---primary:
    run: lustral-selective-serotonin-reuptake-inhibitor-ssri-adds---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-suspension---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: lustral-selective-serotonin-reuptake-inhibitor-ssri-adds---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-paroxetine---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-paroxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-escitalopram---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-prozac---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-prozac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-paroxetine---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-solution---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-solution---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-prozac---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-fluoxetine---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-fluoxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-solution---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-fluoxetine---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-sertraline---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-sertraline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-sugar---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-capsule---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-sertraline---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-cipramil---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-cipramil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-capsule---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-100mg---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-cipramil---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-seroxat---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-seroxat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-100mg---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-liquid---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-seroxat---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-fluvoxamine---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-fluvoxamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-liquid---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-cipralex---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-cipralex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-fluvoxamine---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-paxoran---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-paxoran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-cipralex---primary/output
  selective-serotonin-reuptake-inhibitor-ssri-adds-faverin---primary:
    run: selective-serotonin-reuptake-inhibitor-ssri-adds-faverin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-paxoran---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: selective-serotonin-reuptake-inhibitor-ssri-adds-faverin---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
