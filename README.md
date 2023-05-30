# Meltwater Engineering Killercoda Courses | [![Actions Status](https://github.com/meltwater/foundation-killercoda/workflows/Validate%20Katacoda/badge.svg)](https://github.com/meltwater/foundation-killercoda/actions)

<img align="right" width="200" src="assets/kllr.png">Meltwater has a very complex tech stack, but many of its tools are ubiquitus and can be used / configured generically to provide those curious a base from which to build knowledge.  This library and the scenarios housed here are intended to provide this base knowledge while also serving as a playground or reference for technology refreshment.  Many of these courses may be referenced in https://underthehood.meltwater.com our engineering blog, provide introductory information to new-hires, or be used as a platform for internal knowledge transfer.

## Taking Courses

We are looking to provide training senarios and groupings to help people through not only a current understanding but future-proofing their learning with tracking of the courses they have already taken alongside newer ones as time progresses.  To access our courses, all you should need is a web browser and a good internet connection:

- https://www.killercoda.com/meltwater

## Contributing

Anyone in Meltwater Engineering is welcome to commit new material to this repository, but the following must be adhered to in order to ensure the course is properly published to the main site.  Also, it has been stated multiple times, all trainings posted should be kept to the generic toolset, not Meltwater-specific configurations (unless showcasing an open-sourced project).

### Step 1: Structure

There is a simplistic `structure.json` file that is present at the root of this repo and defines the top-level which can contain any number of courses beneath.  This json file works with the following options:

* `path`: The sub-directory of the course which will contain scenarios
* `title`: Title of the course to appear at the root / index
* `description`: Description of the course to appear at the root / index

```json
{
  "items": [
    {
      "path": "drone-ci",
      "title": "Drone CI",
      "description": "Introduction to continuous improvement drone.io"
    },
    {
      "path": "elastalert",
      "title": "ElastAlert",
      "description": "How to write ElastAlert rules to alert on data in Elasticsearch"
    }
  ]
}
```

### Step 2: Secenarios

Senarios are the brains of your content and can contain lots of nice features:

* [Example Layouts](https://github.com/killercoda/scenario-examples)
* [Quizes](https://github.com/clun/krscenarios/blob/main/queries/quiz.md)
* [Documentation](https://killercoda.com/creators)
* [Migration](https://itnext.io/katacoda-to-killercoda-migration-guide-d21961fc0c9b)
* Much more...

To edit a senario, please be considerate of the repo structure?

```
.
├── structure.json
├── course/
    ├── secenario/
    └── secenario/
        ├── assets/
        ├── index.json
        └── scenario files...
```

To create scenarios, follow the guides or an existing scenario and form a pull-request. This will start a testing proceedure visible on github actions.

### Step 3: Validate & Push

Since you need to be able to try it out online, you can use a personal account to do the testing in and publish here when completed, but the `katacoda scenarios:validate` command will be your friend checking the syntax in json and the file structure you have created.

Once you are satisfied and are observing valid code, give it a push!  This will automatically post the resources into Katacoda (typically within a minute) and you are free to reload scenarios and PLEASE test your changes out?

- https://killercoda.com/meltwater

## Maintianers

This code-base and the Killercoda profile on killercoda.com are and will be maintained for the R&D organization so that there is a consolidated place for code.

- @meltwater-a-team
