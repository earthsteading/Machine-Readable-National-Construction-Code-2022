# The National Construction Code (aka Building Code of Australia) as machine readable rules?

This repository is an exploration of codifying the [National Construction Code of Australia](https://ncc.abcb.gov.au/) as a set of simple set of [machine readable statements](https://en.wikipedia.org/wiki/Business_rules_engine) which are both human and machine readable, e.g. by utilising the simple syntax of if-this-then-that, any rule within the NCC/BCA (National Construction Code aka Building Code of Australia) can be transformed into a simple grammatical statement which can be understood and read by both human and machine, therby making life easier for humans working with the NCC via machine assistance.

## Why build a database of the National Construction Code which can be understood by both humans and machines?

Disclaimer: please note, the suggestion that the NCC/BCA could be written so that both humans and machines can understand it, is not a proposal for humans (building surveyors, architects, construction workers) to be replaced by a machine.  Rather, by making the NCC a document which can be more easily understood by machines, we also make the building code more easily understood by humans.

  * Scope:  Supplement the ability by the humans involved in construction of buildings (building surveyors, building inspecttors, architects, builder-owners, builders, construction workers) to keep track of multiple building code regulations by enabling machines to simultanesouly track and remind humans about which building code rules need to checked and followed-up.
  * Aim: Build a federally recognised database of the National Construction Code which encodes the Building Code of Australia into simple machine readable rules which can be easily used by humans to help track compliance of their builds.
  * Objectives (on going tasks):
    - [x] transform the National Construction Code (Australia) into a set of simple machine/human readable statements (if-this-then-that) which can be easily actioned by machines in collaboration with humans.
    - [ ] work with other leigslation as code projects to agree semantics and shared ontologies.
    - [ ] build a prototype database rules engine for experimentation and testing
    - [ ] build a prototype web/mobile app for querying the NCC for building surveying checks.
    - [ ] report on findings and future work needed.

## Prototype tools
As a demonstration for the value of a machine readable databasee of the NCC, the simplest version would be a lightweight application (mobile), which enable the NCC to be limited to specific rules to enhance ease of use for human readability. For example the following queries could be run against the database:

 1. Instead of searching through the NCC to find and read all the rules which apply to a class of building, a simple lookup tool could be provided which would show all the rules which apply to a <BuildingClass> and a specific <BuildingMaterial>, e.g. if you wanted to know all the rules which apply to a <column> and <oncreteWalls> in a <Class9b> building, then a machine readable version of the NCC would enable this feature.  This would make it easier for architects and building surveyors to check the legistative rules against each member/feature of the building.
 
 2. Taking this example a step further...
 
## Prototype database 
Coming soon in Q4 2021, a prototype draft version of the database for encoding NCC rules will be published Open Source via this repository.  Stay tuned.

### Reading references
  * https://en.wikipedia.org/wiki/Business_rules_engine
  * https://theconversation.com/csiro-wants-our-laws-turned-into-computer-code-heres-why-thats-a-bad-idea-130131
  * https://en.wikipedia.org/wiki/Machine-readable_data
  * https://www.digital.govt.nz/dmsdocument/95-better-rules-for-government-discovery-report/html
  * https://medium.com/@tjharrop/what-are-machine-readable-laws-8c9f39159cb5
  * https://serviceinnovationlab.github.io/projects/legislation-as-code/
  * https://serviceinnovationlab.github.io/Piccolo/
  * https://openfisca.org/doc/
  * https://openfisca.org/en/countries/
  * http://nsw-rules.herokuapp.com/

