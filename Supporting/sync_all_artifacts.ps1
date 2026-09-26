param(
  [string]$SourceDir = (Join-Path $PSScriptRoot "..\..\mnt_data"),
  [string]$RepoDir = (Get-Location).Path
)

$ErrorActionPreference = "Stop"
$project = Join-Path $RepoDir "Project"
$supporting = Join-Path $RepoDir "Supporting"
New-Item -ItemType Directory -Force -Path $project,$supporting | Out-Null

$projectNames = @(
"B1_MiniLM_Relevance_Judging_Pack_896.csv","B1_MiniLM_Run_Record.md",
"B1_MiniLM_Test_Query_Diagnostics.csv","B1_MiniLM_Test_Top10.csv",
"B1_MiniLM_Top1_Category_Diagnostics.csv","b1_candidate_attention.npy",
"b1_candidate_embeddings_minilm.npy","b1_candidate_token_ids.npy","b1_chunk.py",
"b1_judge_answer_embeddings.npy","b1_query_chunk.py","b1_test_query_attention.npy",
"b1_test_query_embeddings_minilm.npy","b1_test_query_token_ids.npy",
"capability_manual_audit_sample_200_v5(2).csv",
"capability_tagging_correction_report_v5_to_v7(2).md",
"capability_tagging_decision_record_v7(2).md",
"capability_transition_matrix_v5_to_v7_long(2).csv",
"final_capability_v14_targeted_audit_60 (1)(1).csv",
"final_capability_v14_targeted_audit_60(2).csv",
"final_capability_v14_targeted_audit_report (1)(1).md",
"final_capability_v14_targeted_audit_report(2).md",
"finalize_b1_search.py","judge_embed.py",
"mode1_tickets_only_test_retrieval(2).csv","run_b1_minilm.py","run_b1_minilm_fast.py",
"train_capability_tagged_v5(1).csv","train_capability_tagged_v7.csv",
"train_valid_capability_tagged_v5.csv","train_valid_capability_tagged_v7.csv",
"valid_capability_tagged_v5(1).csv","valid_capability_tagged_v7(2).csv"
)
foreach($n in $projectNames){
  $src=Join-Path $SourceDir $n
  if(Test-Path -LiteralPath $src){ Copy-Item -LiteralPath $src -Destination (Join-Path $project $n) -Force }
}
foreach($folder in @("b1_index","artifacts")){
  $src=Join-Path $SourceDir $folder
  if(Test-Path -LiteralPath $src){
    $dst=if($folder -eq "b1_index"){$project}else{$supporting}
    Copy-Item $src (Join-Path $dst $folder) -Recurse -Force
  }
}
$supportNames=@("KB_Freeze_Spec_v1.md","build_frozen_kb_v1.py","all-MiniLM-L6-v2.zip","msdialog_dissertation_corrected_retrieval_index.zip","msdialog_dissertation_retrieval_artifacts.zip")
foreach($n in $supportNames){
  $src=Join-Path $SourceDir $n
  if(Test-Path -LiteralPath $src){ Copy-Item -LiteralPath $src -Destination (Join-Path $supporting $n) -Force }
}
foreach($folder in @("b1_model","miniLM")){
  $src=Join-Path $SourceDir $folder
  if(Test-Path -LiteralPath $src){ Copy-Item $src (Join-Path $supporting $folder) -Recurse -Force }
}
if(Get-Command git-lfs -ErrorAction SilentlyContinue){
  git lfs install
  git lfs track "Project/*.csv" "Project/*.npy" "Project/b1_index/**/*.csv" "Project/b1_index/**/*.npz" "Supporting/*.zip" "Supporting/b1_model/**/*.bin" "Supporting/b1_model/**/*.safetensors" "Supporting/miniLM/**/*.bin" "Supporting/miniLM/**/*.safetensors"
}
git add Project Supporting .gitattributes
git status --short
