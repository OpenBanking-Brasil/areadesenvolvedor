# Contribution guide

This project is based on [Slate Docs](https://github.com/slatedocs/slate), you can find more details and documentation [here](/documentation/README.md)

## CI/CD

This project is configured to use Github actions to `build`, `deploy` and check the Open API specification with [Stoplight spectral](https://github.com/stoplightio/spectral)

## Stoplight

This project has some Open API specifications that need to be validated, we use Stoplight Spectral as a Github Action.

### Spectral locally

You can run [Stoplight Spectral](https://github.com/stoplightio/spectral) locally to see more details about errors.

- Install following [this section](https://github.com/stoplightio/spectral#installation) and execute the following command:

`spectral lint documentation/source/swagger/*.yaml`