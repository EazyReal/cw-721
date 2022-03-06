GIT_ROOT=$(git rev-parse --show-toplevel)

. $GIT_ROOT/.env

# upload code
TX=$(junod tx wasm store $GIT_ROOT/artifacts/cw721_fixed_price.wasm --from $KEY_NAME --chain-id=$CHAIN_ID --gas auto --gas-prices $GAS_PRICE --output json -y | jq -r '.txhash')
# get code-id
CODE_ID=$(junod query tx $TX --output json | jq -r '.logs[0].events[-1].attributes[0].value')

# set init metadata
INIT_META='{"name":"Poodle Coin","symbol":"POOD","decimals":6,"initial_balances":[{"address":"<validator-self-delegate-address>","amount":"12345678000"}]}'
# instantiate contract code
junod tx wasm instantiate $CODE_ID \
    $INIT_META \
    --amount 50000ujunox \
    --label "Poodlecoin erc20" \
    --from <your-key> --chain-id <chain-id> \
    --gas auto \
    -y

# get contract address (this hold if the contract is the first initiated instance)
CONTRACT_ADDR=$(junod query wasm list-contract-by-code $CODE_ID --output json | jq -r '.contracts[0]')

# query contract address
junod query wasm contract $CONTRACT_ADDR