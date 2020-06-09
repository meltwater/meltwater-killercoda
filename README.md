<img align="right" width="200" src="https://www.katacoda.com/images/logos/katacoda/logo-1.png">[![Actions Status](https://github.com/meltwater/foundation-katakoda/workflows/Validate%20Katacoda/badge.svg)](https://github.com/meltwater/foundation-katakoda/actions)

# Foundation Katacoda Courseware

The Foundation Mission seeks to provide Meltwater engineering teams a Paved Road of tools and services across the full Software Development Life Cycle, so that ultimately they only need to solve problems specific to their domain.  This repository will house some of the standard toolsets used inside Meltwater for others to see and share.

## Taking Courses

We are looking to provide training senarios and groupings to help people through not only a current understanding but future-proofing their learning with tracking of the courses they have already taken alongside newer ones as time progresses.  To access our courses, all you should need is a web browser and a good internet connection:

- https://www.katacoda.com/mw-fou

## Contributing

While we are looking to work with forks and take pull requests, we would ask your patience while we figure this out in our current sprint where we will be focusing on the first set of courses.

### Step 1: Pathways

Pathways are found at the root level of this repository and can really be called anything you want them to as defined by JSON, but in reality, it equates to a hierarchy of course material based on the technologies we are sharing.  The top-level can contain as many courses (or senarios) as needed and tey can even be in multiple locations or other katacoda users even:

* `courses`: Collection of scenarios that will make up the course.
* `pathway_id`: Name of the scenario owner account. This is likely to be your username.
* `course_id`: The ID of the scenario, created based on the directory name. If scenario is in a sub-course then include the directory name.
* `id`: The ID of the scenario. If the scenario is in a sub-course, the directory name should not be included.
* `title`: Title of the scenario to appear on the pathway layout
* `description`: Description of the scenario to appear on the pathway layout

```json
{
  "title": "Drone CI/CD",
  "description": "CI/CD with Drone.io will ensure students are comfortable with both the local exec and web experience of v1.x of the drone toolkit",
  "courses": [
    {
      "course_id": "drone-lab-101",
      "title": "Drone 101: Introduction",
      "description": "Introduction to continuous improvement and continuous delivery with drone.io"
    },
    {
      "course_id": "drone-lab-102",
      "title": "Drone 102: Pipeline Testing",
      "description": "Build a pipeline to construct a docker container that will host a static website"
    }
  ]
}
```

### Step 2: Secenarios

Senarios are the brains of your content and can contain lots of nice features:

* [Multiple Layouts](https://www.katacoda.com/docs/scenarios/layouts) to help present your information properly
* [Markdown Enhancements](https://www.katacoda.com/docs/scenarios/markdown-syntax) to help format and minimize error
* [Verifications](https://www.katacoda.com/docs/scenarios/index-json) to ensure the activities were done correctly
* Much more...

To edit a senario, please be considerate of the repo structure?

```
.
├── profile-pathway.json
├── service/
│   ├── secenario/
│   └── secenario/
│       ├── assets/
│       ├── index.json
│       └── scenario files...
└── service-pathway.json
```

To create scenarios, it is highly recommended to download and install the [Katacoda CLI](https://www.katacoda.com/cli) which is deliverd as a node package.  Here are some of the most useful commands from using it so far:

* `katacoda scenarios:create`: This will create a templatized scenario (think about how many steps you will have first)
* `katacoda scenarios:demo`: If you are like me and just wana see some code, this is your command, will generate a fully executable demo
* `katacoda scenarios:add`: Will add steps and assets to a katacoda scenario
* `katacoda scenarios:remove`: Will remove steps from a scenario
* `katacoda scenarios:validate`: super useful in figuring out if you have officially lost your marbles while creating the thing.

### Step 3: Add To Profile Pathway

This is the main pathway that houses the main course listing and senario listing for the account, if you don't add your course here, you won't find it online :-) For now, I would not place any loose scenarios, try placing them into some type of learning tree or course tree that can be built on?  Just a thought, then we don't end up with a pile of garbage but a nice clean page that we can send out with various learning tracks.

Some helpful things to check stuff out at this level:

* `katacoda validate:all`: Will validate the entire repo down to making sure step markdown is properly defined.

### Step 4: Validate & Push

Since you need to be able to try it out online, you can use a personal account to do the testing in and publish here when completed, but the `katacoda scenarios:validate` command will be your friend checking the syntax in json and the file structure you have created.

Once you are satisfied and are observing valid code, give it a push!  This will automatically post the resources into Katacoda (typically within a minute) and you are free to reload scenarios and PLEASE test your changes out?

- https://www.katacoda.com/mw-fou

## Maintianers

This code-base and the Katacoda profile on katacoda.com are and will be maintained as a mission so that there is a consolidated place for code.

- @meltwater-foundation
