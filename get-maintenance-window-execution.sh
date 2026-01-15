aws ssm get-maintenance-window-execution-task-invocation \
    --window-execution-id "d0abee00-8040-4fa2-a1f1-66316e8f5864" \
    --task-id "6acec124-7129-460d-907f-553343ece86f" \
    --invocation-id "e606b7c0-d1bc-4b3e-8c8c-df584ec5e4f5" \
    | jq .
