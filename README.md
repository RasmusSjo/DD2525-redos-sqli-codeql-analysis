# ReDoS & SQL injection analysis with CodeQL

## Project Overview
This project was conducted as part of the course Language-Based Security (DD2525) at KTH.

The goal of the project is to use CodeQL to analyse open-source JavaScript/TypeScript projects for ReDoS and SQL injection vulnerabilities. The project includes custom CodeQL queries used to perform multi-repository variant analysis (MRVA), as well as an analysis of the identified results.

## Repository Structure
```text
queries/            Custom CodeQL Queries
results/            Analysis Output
report/             Project Report
databases.json      List of target repositories for (MRVA)
```

## Requirements
* Visual Studio Code with the CodeQL extension.

* Public GitHub repository with code scanning enabled (for MRVA).

## Setup
### Clone the repository

```bash
git clone https://github.com/RasmusSjo/DD2525-redos-sqli-codeql-analysis.git
cd DD2525-redos-sqli-codeql-analysis
```

### Setup CodeQL
* Install the VSCode CodeQL extension

* Copy the databases.json content into database configuration file for MRVA.

* Follow the steps described in [Running CodeQL queries at scale with multi-repository variant analysis](https://docs.github.com/en/code-security/how-tos/find-and-fix-code-vulnerabilities/scan-from-vs-code/running-codeql-queries-at-scale-with-multi-repository-variant-analysis)

## Running the Analysis
* Select the query you want to run.

* Select the variant analysis repositories you want to run the query against and run it.

## Authors
Jonathan Nilsson Cullgert

Rasmus Sjöberg

## License
This project is licensed under the MIT License. See the LICENSE file for details.
