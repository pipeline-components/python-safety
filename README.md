# Pipeline Components: Safety by pyup.io for Python

[![][gitlab-repo-shield]][repository]
![Project Stage][project-stage-shield]
![Project Maintenance][maintenance-shield]
[![License][license-shield]](LICENSE)
[![GitLab CI][gitlabci-shield]][gitlabci]

## Docker status

[![Image Size][size-shield]][dockerhub]
[![Docker Pulls][pulls-shield]][dockerhub]

## Usage

The image is for running safety.
The variable `SAFETY_API_KEY` can be used to set if you have a paid api key.

For more information: [pyup safety][pyuplink]

## Examples

```yaml
python-safety:
  stage: linting
  image: registry.gitlab.com/pipeline-components/python-safety:latest
  script:
    - safety check --full-report -r requirements.txt
```

## Versioning

This project uses [Semantic Versioning][semver] for its version numbering.

## Support

Got questions?

Check the [discord channel][discord]

You could also [open an issue here][issue]

## Contributing

This is an active open-source project. We are always open to people who want to
use the code or contribute to it.

We've set up a separate document for our [contribution guidelines][contributing-link].

Thank you for being involved! 😍

## Authors & contributors

The original setup of this repository is by [Robbert Müller][mjrider].

The Build pipeline is large based on [Community Hass.io Add-ons
][hassio-addons] by [Franck Nijhof][frenck].

For a full list of all authors and contributors,
check [the contributor's page][contributors].

## License

This project is licensed under the [MIT License](./LICENSE) by [Robbert Müller][mjrider].

[contributing-link]: https://pipeline-components.dev/contributing/
[contributors]: https://gitlab.com/pipeline-components/python-safety/-/graphs/main
[discord]: https://discord.gg/vhxWFfP
[dockerhub]: https://hub.docker.com/r/pipelinecomponents/python-safety
[frenck]: https://github.com/frenck
[gitlab-repo-shield]: https://img.shields.io/badge/Source-Gitlab-orange.svg?logo=gitlab
[gitlabci-shield]: https://img.shields.io/gitlab/pipeline/pipeline-components/python-safety.svg
[gitlabci]: https://gitlab.com/pipeline-components/python-safety/-/commits/main
[hassio-addons]: https://github.com/hassio-addons
[issue]: https://gitlab.com/pipeline-components/python-safety/issues
[license-shield]: https://img.shields.io/badge/License-MIT-green.svg
[maintenance-shield]: https://img.shields.io/maintenance/yes/2025.svg
[mjrider]: https://gitlab.com/mjrider
[project-stage-shield]: https://img.shields.io/badge/project%20stage-production%20ready-brightgreen.svg
[pulls-shield]: https://img.shields.io/docker/pulls/pipelinecomponents/python-safety.svg?logo=docker
[repository]: https://gitlab.com/pipeline-components/python-safety
[semver]: http://semver.org/spec/v2.0.0.html
[size-shield]: https://img.shields.io/docker/image-size/pipelinecomponents/python-safety.svg?logo=docker

[pyuplink]: https://pyup.io/safety/
