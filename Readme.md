# GitHub Jobs API


### Introduction
Contains automation test framework bassed on Jbehave BDDs for The GitHub Jobs API

### Requirements
- Java 1.8
- Install maven.

### Getting Started

  - Clone repository
  - Go to directory, where pom.xml resides.
  - Then type:
mvn clean install -Dapp.storiesToRun="/***/***" for full run or
mvn clean install -Dapp.storiesToRun="***" -Dapp.metaTag="+smokeTest" for somke test

## Project Scope 
- Search for GitHub job openings throw apis
- List all job openings
- Assert that the third party can retrieve all jobs passed on 
    - Location
    - Full Time Job
    - Part Time Job
    - Job Description
- Support Pagination

 
