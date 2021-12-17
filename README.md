CNAB240 Banco ABC Library for Ruby
==============

Build Status
-----------------

[![cnab240_bancoabc](https://github.com/Quasar-Flash/cnab240_bancoabc/actions/workflows/ruby.yml/badge.svg)](https://github.com/Quasar-Flash/cnab240_bancoabc/actions/workflows/ruby.yml)
[![Quality Gate Status](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=alert_status&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Coverage](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=coverage&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Maintainability Rating](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=sqale_rating&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)

Project Scores
-----------------

[![Bugs](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=bugs&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Code Smells](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=code_smells&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Duplicated Lines (%)](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=duplicated_lines_density&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Lines of Code](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=ncloc&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Reliability Rating](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=reliability_rating&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Security Rating](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=security_rating&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Technical Debt](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=sqale_index&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)
[![Vulnerabilities](https://sonarqube.eks.qflash.com.br/api/project_badges/measure?project=Quasar-Flash_cnab240_bancoabc&metric=vulnerabilities&token=ae764c50c4edff52b7a03d970f68bc697cdc5819)](https://sonarqube.eks.qflash.com.br/dashboard?id=Quasar-Flash_cnab240_bancoabc)

Requirements
-----------------

- Ruby: Any version (tested: 3.0.1, 2.7.3, 2.6.7, 2.5.9)
- Bundler

Problems?
-----------------

**Please do not directly email any committers with questions or problems.**  A community is best served when discussions are held in public.

Searching the [issues](https://github.com/Quasar-Flash/cnab240_bancoabc/issues) for your problem is also a good idea.

Contributing
-----------------

- Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet;
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it;
- Fork the project;
- Start a feature/bugfix branch;
- Commit and push until you are happy with your contribution;
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.;
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

License
-----------------

Please see [LICENSE](https://github.com/Quasar-Flash/cnab240_bancoabc/blob/master/LICENSE.txt) for licensing details.

Maintainers
-----------------

- Cícero Caiazzo, [@caiazzo14](https://github.com/caiazzo14) / [@Quasar-Flash](https://github.com/Quasar-Flash)
- Danilo Carolino, [@danilogco](https://github.com/danilogco) / [@Quasar-Flash](https://github.com/Quasar-Flash)

Run with Docker
-----------------

The commands bellow are used to run this project in a container.
They use the Dockerfile at the root of the project and create a volume to update the container with the code changes you make at the outside.

After every change to the source code you should do a '$rake install' in the container's bash and then you can run a new console or rspec/rubocop.

```bash
# in case you didn't build the image yet
docker build -t cnab-gem .
# raises the container and keeps it open and running using a never closing foreground job (in this case, 'bash')
docker run -it -v $(pwd):/cnab240_bancoabc cnab-gem bash
```
