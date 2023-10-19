#!/usr/bin/env cwl-runner

cwlVersion: v1.2
class: Workflow
id: my_workflow

inputs:
  file1:
    type: File
  file2:
    type: File

outputs:
  concatenated_file:
    type: File
    outputSource: concat/output_file

steps:
  concat:
    run: concat_tool.cwl
    in:
      input_file1: file1
      input_file2: file2
    out: [output_file]
