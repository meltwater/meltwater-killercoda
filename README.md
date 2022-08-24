<img align="right" width="200" src="https://killercoda.com/img/kc_logo_beta.99b1cc0f.svg">[![Actions Status](https://github.com/meltwater/foundation-katakoda/workflows/Validate%20Katacoda/badge.svg)](https://github.com/meltwater/foundation-katakoda/actions)

# Foundation Killercoda Courseware

The Foundation Mission seeks to provide Meltwater engineering teams a Paved Road of tools and services across the full Software Development Life Cycle, so that ultimately they only need to solve problems specific to their domain.  This repository will house some of the standard toolsets used inside Meltwater for others to see and share.

## Taking Courses

We are looking to provide training senarios and groupings to help people through not only a current understanding but future-proofing their learning with tracking of the courses they have already taken alongside newer ones as time progresses.  To access our courses, all you should need is a web browser and a good internet connection:

- https://killercoda.com/mw-fou

## Contributing

While we are looking to work with forks and take pull requests, we would ask your patience while we figure this out in our current sprint where we will be focusing on the first set of courses.

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

To create scenarios, follow the guides or an existing scenario and form a pull-request. This will start a testing proceedure visible on github actions.  Another option while available is to download and install the [Katacoda CLI](https://www.katacoda.com/cli) which is deliverd as a node package.  Here are some of the most useful commands from using it so far:

* `katacoda scenarios:create`: This will create a templatized scenario (think about how many steps you will have first)
* `katacoda scenarios:demo`: If you are like me and just wana see some code, this is your command, will generate a fully executable demo
* `katacoda scenarios:add`: Will add steps and assets to a katacoda scenario
* `katacoda scenarios:remove`: Will remove steps from a scenario
* `katacoda scenarios:validate`: super useful in figuring out if you have officially lost your marbles while creating the thing.

### Step 3: Validate & Push

Since you need to be able to try it out online, you can use a personal account to do the testing in and publish here when completed, but the `katacoda scenarios:validate` command will be your friend checking the syntax in json and the file structure you have created.

Once you are satisfied and are observing valid code, give it a push!  This will automatically post the resources into Katacoda (typically within a minute) and you are free to reload scenarios and PLEASE test your changes out?

- https://killercoda.com/mw-fou

## Maintianers

This code-base and the Killercoda profile on killercoda.com are and will be maintained as a mission so that there is a consolidated place for code.

- @meltwater-foundation
