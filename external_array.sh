#!/usr/local/bin/bash

declare -A STACKS=(\
  [get_accounts]=GetAccountsStack \
  [publish]=PublishStack \
  [layer]=AMIBakeryLayerStack \
  [document]=AmiBakeryDocumentStack \
  [ami_cleaner]=AmiCleanerStack \
  [assessment]=AmiBakeryAssessmentStack \
  [base_update]=AmiBakeryBaseAmiUpdateStack \
  [instance_cleaner]=AmiBakeryInstanceCleanerStack \
)
