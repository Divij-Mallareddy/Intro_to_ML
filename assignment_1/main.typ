// Introduction to Machine Learning — Group Assignment 1
// Shared solution document. Add your group's names and solutions below.
// Compile with: typst compile main.typ main.pdf

#set document(
  title: "Introduction to Machine Learning — Assignment 1",
  author: "Group [number] — [six group members]",
)

#set page(paper: "a4", margin: (x: 2.5cm, y: 2.3cm))
#set text(font: "Libertinus Serif", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Introduction to Machine Learning
== Assignment 1

*Course:* Machine Learning (ML:I, ML:II)  
*Group:* [40]  
*Members:* [Add all six names and student IDs]  
*Date:* [12 November]

#v(1em)
#text(size: 9pt, fill: gray)[
  Group working document. Replace every square-bracket placeholder and
  write the group's own reasoning. Keep the exercise numbering aligned
  with the official exercise sheet.
]



Exercise 1: Machine Learning (General)


Exercise 1(a) – Definitions
1. Supervised learning
Supervised learning is a machine learning paradigm in which a model is trained using labelled examples. Each training example contains input data together with the correct target output or class. During training, the model learns a relationship between the inputs and their corresponding outputs. After training, it can use this learned relationship to predict outputs for previously unseen data. Supervised learning is commonly used for classification (predicting a category) and regression (predicting a numerical value).
Example: A model is trained using photographs of plants, where every photograph is labelled with the correct plant species. It learns from these labelled examples and can then predict the species shown in a new photograph.
2. Unsupervised learning
Unsupervised learning is a machine learning paradigm in which a model is given data without predefined target labels. Instead of learning from correct answers, it analyses the data to discover patterns, similarities, clusters, or other underlying structures. The aim is to find useful organisation or information in the data without being told in advance what the groups or patterns should be.
Example: A system analyses YouTube users' watch behaviour and groups users who watch similar types of videos.
The groups are discovered from the behaviour data rather than supplied as labels beforehand.
3. Reinforcement learning
Reinforcement learning is a machine learning paradigm in which an agent learns how to act by interacting with an environment. The agent chooses actions, observes the results, and receives feedback in the form of rewards or penalties. By trying different actions and learning from this feedback, it gradually develops a strategy that aims to maximise the total reward over time. Unlike supervised learning, it is not necessarily given the correct action for every situation.
Example: A computer program learns to play chess by playing games. It can receive a positive reward for winning and a negative reward for losing, and use the outcomes to improve its future moves.
Exercise 1(b) – Identify the learning paradigm
For each task, select one learning paradigm. Where another approach could also be possible, the answer below chooses one reasonable paradigm and explains the assumption behind that choice.
b1. Grouping YouTube accounts by watch behaviour
Learning paradigm: Unsupervised learning
Explanation: The system analyses users' viewing histories and groups accounts according to similarities in their watch behaviour. Because the groups are discovered from the data and are not provided as predefined labels, this is an unsupervised-learning task.
b2. Identifying plants based on pictures
Learning paradigm: Supervised learning
Explanation: A model can be trained using plant pictures that have already been labelled with their correct species.
It learns the visual characteristics associated with each label and uses them to classify new pictures.
b3. A program learning to win at chess
Learning paradigm: Reinforcement learning
Explanation: The program can learn by playing chess and evaluating the outcomes of its actions. Winning can provide a positive reward and losing a negative reward, allowing the program to improve its strategy through experience. b4. A robot learning to walk by feedback
Learning paradigm: Reinforcement learning
Explanation: The robot tries movements, observes their effects, and receives feedback about its performance, such as whether it stays balanced or falls. It can use rewards or penalties to improve its movements over repeated attempts. b5. Facial recognition
Learning paradigm: Supervised learning
Explanation: A typical facial-recognition system is trained on face images associated with known identity labels.
The model learns patterns that distinguish the identities and uses them to recognise or classify faces in new images.
b6. Discovering topics in a large corpus of research papers
Learning paradigm: Unsupervised learning
Explanation: A system can analyse the words and content of many research papers to discover groups of documents that discuss similar subjects. Since the topics are found from the corpus rather than supplied as labels in advance, this is unsupervised learning.

Quick revision: how to distinguish the three paradigms
Paradigm	Key idea	Typical clue
Supervised	Learns from labelled examples with known correct outputs.	Labels, examples with answers, classification, prediction.
Unsupervised	Finds patterns or groups in data without target labels.	Clustering, grouping, discovering topics or structure.
Reinforcement	Learns actions from interaction and reward/penalty feedback.	Trial and error, agent, environment, reward, penalty.



#table(
  columns: (auto, 1fr, 2fr),
  inset: 6pt,
  [*Task*], [*Paradigm*], [*Brief explanation*],
  [b1 — Grouping YouTube accounts by watch behaviour], [], [],
  [b2 — Identifying plants based on pictures], [], [],
  [b3 — A program learning to win at chess], [], [],
  [b4 — A robot learning to walk by feedback], [], [],
  [b5 — Facial recognition], [], [],
  [b6 — Discovering topics in research papers], [], [],
)

= Exercise 2 — Specification of Learning Tasks

[Explain the mapping for each item (a)–(f), using the symbols from the exercise sheet.]

== (a)
[Answer and reasoning.]

== (b)
[Answer and reasoning.]

== (c)
[Answer and reasoning.]

== (d)
[Answer and reasoning.]

== (e)
[Answer and reasoning.]

== (f)
[Answer and reasoning.]

= Exercise 3 — Data Annotation and Feature Engineering

== (a) Annotation
[Summarise the group's annotation process. Include each member's annotation JSON in the final submission ZIP as required.]

== (b) Mapping to the specification diagram
[Answer and reasoning.]

== (c) Feature extraction

[Describe the five features, including the two suggested in the sheet and the three additional features.]

[Document the implementation and CSV output format.]

= Exercise 4 — Rule-Based Learning

== (a)
[Derivation and answer.]

== (b)
[Derivation and answer.]

== (c)
[Recursion formula and explanation.]

= Exercise 5 — Rule-Based Learning (Practice)

== (a) Find-S algorithm
[Show the hypothesis after each example.]

== (b) Candidate-Elimination algorithm
[Show the specific and general boundary sets after each example.]

== (c) Version space
[Give the version space and explain how it was obtained.]

= Exercise 6 — Rule-Based Learning in 2D

== (a) Most general hypothesis
[Answer and reasoning.]

== (b) More-general relation
[Evaluate each of the four statements and justify the result.]

== (c) Minimal specialisations
[Give both hypotheses and justify minimality and consistency.]

= Group contribution and final checks

[Briefly record who reviewed which sections and confirm that all six members' required annotation files are included in the Moodle ZIP.]
