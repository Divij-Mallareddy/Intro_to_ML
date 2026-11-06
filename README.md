# Introduction to Machine Learning — Group Assignment

A shared workspace for our six-member group to complete the **Machine Learning (ML:I, ML:II) exercise sheet**.

## Repository structure

```text
Intro_to_ML/
├── assignment_1/
│   ├── README.md
│   ├── main.typ
│   ├── exercises-en-machine-learning-basics1.pdf
│   └── dataset.tsv
└── README.md
```

## Working together

We maintain one shared solution document: `assignment_1/main.typ`.

1. Clone the repository.
2. Before editing, run `git pull origin main`.
3. Create a personal branch (for example, `git switch -c divij-exercise-1`).
4. Edit the shared Typst file. Coordinate with the group before editing the same section.
5. Commit and push your branch, then open a Pull Request into `main`.
6. Review the changes together before merging.

Avoid having multiple people edit the same part of `main.typ` at the same time; this reduces merge conflicts.

## Build the PDF

Install [Typst](https://typst.app/) and, from the `assignment_1` directory, run:

```bash
typst compile main.typ main.pdf
```

The generated PDF is the group's working export. Check the final PDF before submission.

## Group rules

- Keep the exercise sheet and dataset unchanged as source materials.
- Put solutions and explanations in `assignment_1/main.typ`.
- Use clear commit messages.
- Do not commit passwords, API keys, or private personal information.
- The assignment sheet states that the final solutions are submitted as one ZIP file through Moodle; GitHub is our collaboration workspace, not the submission portal.
