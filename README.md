# CosmWasm NFTS

## Maxwill's Notes
- main resource
    - https://docs.junonetwork.io/smart-contracts-and-junod-development/
    - https://docs.cosmwasm.com/docs/1.0/smart-contracts/contract-semantics
- `juno_client.toml.example`
- for adding key, change `$HOME/.juno/config/client.toml`
    - keyring-backend = "file"
    - alternative:
        - https://ahelpme.com/linux/dbusexception-could-not-get-owner-of-name-org-freedesktop-secrets-no-such-name/
        - https://ahelpme.com/linux/dbusexception-could-not-get-owner-of-name-org-freedesktop-secrets-no-such-name/ 
- for using test net, see [link](https://docs.junonetwork.io/smart-contracts-and-junod-development/junod-local-dev-setup#quickstart-on-the-testnet-with-a-public-node)
    - node="<public node RCP address>", e.g. "https://rpc.uni.junomint.com:443/"
    - chain-id = "uni-2"
- for online deployment
    - https://blueprints.juno.giansalex.dev/#/codes/new
        - this is built from https://github.com/CosmWasm/code-explorer
    - trial: https://blueprints.juno.giansalex.dev/#/codes/445

This repo is the official repository to work on all NFT standard and examples
in the CosmWasm ecosystem. `cw721` and `cw721-base` were moved from
[`cw-plus`](https://github.com/CosmWasm/cw-plus) to start this repo, but it shall evolve
as driven by the community's needs.

Please feel free to modify cw721 as you need to support these projects and add many extensions
and additional standards (like [cw-2981](https://github.com/CosmWasm/cw-plus/pull/414)) to meet
the demands of the various NFT projects springing forth.

## Maintainers

This repo is not maintained directly by Confio (although we can provide some code reviews and support),
but rather by 4 highly active community members working on NFT projects of their own:

* [alwin-peng](https://github.com/alwin-peng)
* [ben2x4](https://github.com/ben2x4)
* [JakeHartnell](https://github.com/JakeHartnell)
* [orkunkl](https://github.com/orkunkl)
* [the-frey](https://github.com/the-frey)

## Contributing

If you are working on an NFT project as well and wish to give input, please raise issues and/or PRs.
Additional maintainers can be added if they show commitment to the project.

You can also join the `#nfts` channel on [CosmWasm Discord](https://docs.cosmwasm.com/chat)
for more interactive discussion on these themes.

