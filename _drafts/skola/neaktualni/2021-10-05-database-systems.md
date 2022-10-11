---
title: "Databse systems"
category: "Matfyz"
language: "EN"
latex: true
layout: post
---

WORK IN PROGRESS

- .
{:toc}
---

## Byrocracy
- student duties
	- credit test (> 60% points)
    - exam test
    - attendace is strongly recommended but not mandatory
- Orgamization:
    - WEB: [ms.mff.cuni.cz/~kopecky/teaching/ndbio25/](ms.mff.cuni.cz/~kopecky/teaching/ndbio25/)
    	- examples of final exams
    - KSI WEB: [ksi.mff.cuni.cz](ksi.mff.cuni.cz)

## About course
It is about:

- conceptual data modeling
- relational model
- physical implementation of database managment
- transactional processing
- introduction to database applications
- multimedia and `XML` databases

It is not about:
- data mining
- text databases
- data warehousing, OLAP
- cloud computing

Follow-up courses:
- other topics are subject to follow-up courses
	- Database languages I, II (NDBI001, NDBI006)
	- Databse applications (NDBI026)
	- Oracle adminisstration (NDBI013)
	- Multimedia retrival (NDB)
	- Stochastic methods in databases
	- Searching the web and multimedia databases
	- Retrieval of multimedia content on the web
	- XML technology
	- NoSQL databases

## Intro
- **Databse**
	- logicallu ordered collection of related data instances
	- sef-describing, meta-data stored together with data
- **Databse managment system**
	- general software system for shared acces to database
	- provides mechanism to ensure security, reliability and integrity of the stored data
- **Databse administrator**
	- the necessary human factor

### Why database systems
- means of data sharing and reusability
- unified interface and languages for data definition and data manipulation
- data consistency and correctness
- redundancy elimination (compact storage)

## Basic terminology

- **Model** = modeling language
	- set of constructs you can use to express something
	- e.g., UML model = `{class, schema, atribute}`
	- e.g., relation model = `{relation schema, attribute }`
- **Schema** = modeling language expression
	- instance of a model
	- e.g., relational schema = `{Person(name, email)}`
- **Diagram** = schema visualisation

- **Stakeholder** is any person which is relevant for your application(s)
	- e.g., application user, investor, owner, domain expert, etc.
	- you have to communicate with all stakeholders and balance their requirements when developing a (database) application

- **Conceptual layer**
	- models a part of the real worls relevant for application built on top of your database
		- **real world part** = real-world-entries entries and relationships betweem them
	- different conceptual models (e.g. ER, UML)
- **Logial layer**
	- specifies how conceptual components are represented in database structures
	- different logical models (e.g. relational, object-relational, XML, graph, multimedia, etc. )
- **Physical model**
	- specifies how logical databse astructures are implemented in a specific technological environment
	- data files, index structures (e.g. B+ trees), etc.

## Computational modeling process
Process of creating a conceptual schema of an application (or applications) in a selected
conceptual model on the base of given requirements of various stakeholders.

in fact you do not create only one conceptual schema but multiple

![CMP diagram](/assets/img/database-systems/cmp.png)
///////////image of process

### Step 1: Requirements analysis
Start with requirements of different stakeholders

- Usualy expressed in natural language
- informal discussions, inquries

Identify important types of real-world entities, their characteristicss and types of
relationships between

//////////////////////////////////////////////////

### Step: 2 Model indenfied types
Model your typers using a suitable conceptual data model (i.e., create conceptual data 
schema) and visualise it as a diagram.
You use various tools for modeling, so-called **Case Tools**

Examples:
- Commercial Enterprise Architect, IBM Rational rose
- Academic eXolotio

**Step 2.1: Choose suitable modeling language**\\
//////////////////

**Step 2.2: Create conceptual schema**\\
Expresses your identified types of entries, relationships and their characteristics with
contructicts
///////////////////////

## ER vs. UML
**ER model**\\
Not ////////////////////////////////////////////


| UML 		| ER 		| Real world 		|
|:---------:|:---------:|:-----------------:|
|           |           |                   |
| UML construct<br/> **Atribute of class**: <br/>- name<br/>- cadrinality | ER construct<br/>**Atribute of entry types:**<br/>- name<br/>- cardinality | ///////////////////// |

////////////////////////////tabulky

### Additional constraints
Independetity of 
///////////////////////////

### Coplete example in UML

## Object constraint language
- Language for formal specification of advances integrity constraints.
- Supports invariants, derived values, mothod and post-conditions, etc.
- we focus on intervals
///////////////////////// zbytek slidu

//////////////// obrazek


