GIT_ROOT=$(git rev-parse --show-toplevel)

. $GIT_ROOT/.env

TX=$(junod tx wasm store $GIT_ROOT/artifacts/cw721_fixed_price.wasm --from $KEY_NAME --chain-id=$CHAIN_ID --gas auto --gas-prices $GAS_PRICE --output json -y | jq -r '.txhash')
CODE_ID=$(junod query tx $TX --output json | jq -r '.logs[0].events[-1].attributes[0].value')
