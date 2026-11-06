// Introduction to Machine Learning — Group Assignment 1
// Shared solution document. Add your group's names and solutions below.
// Compile with: typst compile main.typ main.pdf

#set document(
  title: "Introduction to Machine Learning — Assignment 1",
  author: "Group [40] — [Mallareddy Divij Reddy, Nousheen Shaik, Sai Purnesh K, Koushik Jampula, Varsha]",
)

#set page(paper: "a4", margin: (x: 2.5cm, y: 2.3cm))
#set text(font: "Libertinus Serif", size: 11pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

= Introduction to Machine Learning
== Assignment 1

*Course:* Machine Learning (ML:I, ML:II)  
*Group:* [40]  
*Members:* [Mallareddy Divij Reddy, Nousheen Shaik, Sai Purnesh K, Koushik Jampula, Varsha]  
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

Quick revision: how to distinguish the three paradigms
Paradigm	Key idea	Typical clue
Supervised	Learns from labelled examples with known correct outputs.	Labels, examples with answers, classification, prediction.
Unsupervised	Finds patterns or groups in data without target labels.	Clustering, grouping, discovering topics or structure.
Reinforcement	Learns actions from interaction and reward/penalty feedback.	Trial and error, agent, environment, reward, penalty.



#table(
  columns: (auto, 1fr, 2fr),
  inset: 6pt,
  [*Task*], [*Paradigm*], [*Brief explanation*],
  [b1 — Grouping YouTube accounts by watch behaviour], [Unsupervised learning], [ The system analyses users' viewing histories and groups accounts according to similarities in their watch behaviour. Because the groups are discovered from the data and are not provided as predefined labels, this is an unsupervised-learning task.],
  [b2 — Identifying plants based on pictures], [Supervised learning], [ A model can be trained using plant pictures that have already been labelled with their correct species.],
  [b3 — A program learning to win at chess], [Reinforcement learning], [The program can learn by playing chess and evaluating the outcomes of its actions. Winning can provide a positive reward and losing a negative reward, allowing the program to improve its strategy through experience.],
  [b4 — A robot learning to walk by feedback], [Reinforcement learning], [ The robot tries movements, observes their effects, and receives feedback about its performance, such as whether it stays balanced or falls. It can use rewards or penalties to improve its movements over repeated attempts.],
  [b5 — Facial recognition], [Supervised learning], [ A typical facial-recognition system is trained on face images associated with known identity labels.
The model learns patterns that distinguish the identities and uses them to recognise or classify faces in new images.],
  [b6 — Discovering topics in research papers], [Unsupervised learning], A system can analyse the words and content of many research papers to discover groups of documents that discuss similar subjects. Since the topics are found from the corpus rather than supplied as labels in advance, this is unsupervised learning.[],
)

= Exercise 2 — Specification of Learning Tasks

[Explain the mapping for each item (a)–(f), using the symbols from the exercise sheet.]

== (a)
A cellar containing hundreds of wine bottles (O)

== (b)
A table containing measured wine features	(X)

== (c)
A professional sommelier who rates wines	(gamma(o))

== (d)
A laboratory instrument measuring chemical features	(alpha(o))

== (e)
The set	(C)

== (f)
The machine learning model predicting quality	(y(x))

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

The Find-S algorithm starts with the most specific hypothesis. It updates the
hypothesis using positive examples and ignores negative examples.

#table(
  columns: (auto, auto, 1fr),
  inset: 6pt,
  align: (center, center, left),
  [*Step*], [*Example*], [*Hypothesis $θ$*],
  [0], [—], [`(⊥, ⊥, ⊥, ⊥)`],
  [1], [`x₁ (+)`], [`(Monday, no, easygoing, evening)`],
  [2], [`x₂ (−)`], [`(Monday, no, easygoing, evening)`],
  [3], [`x₃ (−)`], [`(Monday, no, easygoing, evening)`],
  [4], [`x₄ (+)`], [`(Monday, no, easygoing, ?)`],
)

Examples $x_2$ and $x_3$ are negative, so Find-S ignores them. At step 4,
only the time of day differs from the current hypothesis, so that attribute
is generalised to `?`.

*Result:* `θ = (Monday, no, easygoing, ?)`.

== (b) Candidate-Elimination algorithm

Candidate Elimination maintains two boundaries: the most specific hypotheses
($S$) and the most general hypotheses ($G$) that are consistent with the
examples seen so far.

#table(
  columns: (auto, auto, 1fr, 1fr),
  inset: 5pt,
  align: (center, center, left, left),
  [*Step*], [*Example*], [*$S_k$*], [*$G_k$*],
  [0], [—], [`{(⊥, ⊥, ⊥, ⊥)}`], [`{(?, ?, ?, ?)}`],
  [1], [`x₁ (+)`], [`{(Monday, no, easygoing, evening)}`], [`{(?, ?, ?, ?)}`],
  [2], [`x₂ (−)`], [`{(Monday, no, easygoing, evening)}`], [`{(?, ?, easygoing, ?)}`],
  [3], [`x₃ (−)`], [`{(Monday, no, easygoing, evening)}`], [
    `{(Monday, ?, easygoing, ?), (?, no, easygoing, ?), (?, ?, easygoing, evening)}`
  ],
  [4], [`x₄ (+)`], [`{(Monday, no, easygoing, ?)}`], [
    `{(Monday, ?, easygoing, ?), (?, no, easygoing, ?)}`
  ],
)

*Explanation of the updates:*

- *Step 2:* The general hypothesis `(?, ?, ?, ?)` accepts the negative example
  $x_2$, so it must be specialised. Only `Mood = easygoing` still covers the
  first positive example. The other possible specialisations would reject
  that positive example.
- *Step 3:* The hypothesis `(?, ?, easygoing, ?)` accepts the negative example
  $x_3$. It is specialised in three ways while still covering the first
  positive example: `Weekday = Monday`, `Mother = no`, or `Time = evening`.
- *Step 4:* The hypothesis `(?, ?, easygoing, evening)` does not cover the new
  positive example $x_4$, so it is removed. The specific boundary is
  generalised by changing the time attribute to `?`.

The final boundaries are:

- $S = \{(Monday, no, easygoing, ?)\}$
- $G = \{(Monday, ?, easygoing, ?), (?, no, easygoing, ?)\}$

== (c) Version space

The version space contains every hypothesis that is at least as general as
an element of the specific boundary and at least as specific as an element
of the general boundary. Here, each hypothesis in $G$ differs from the
hypothesis in $S$ in only one attribute. Therefore, there are no additional
intermediate hypotheses.

#table(
  columns: (1fr),
  inset: 7pt,
  align: center,
  [`(Monday, no, easygoing, ?)` — specific boundary hypothesis],
  [`(Monday, ?, easygoing, ?)` — general boundary hypothesis],
  [`(?, no, easygoing, ?)` — general boundary hypothesis],
)

Thus, the version space is:

`H_D = {(Monday, no, easygoing, ?), (Monday, ?, easygoing, ?), (?, no, easygoing, ?)}`

= Exercise 6 — Rule-Based Learning in 2D

== (a) Most general hypothesis
Most general hypothesis

The coordinate range is from 1 to 10.

Therefore, the most general rectangle covers the entire coordinate space:
\[
\boxed{h_{g0}=(1,1,10,10)}
\]

== (b) More-general relation
Given relationship	Answer	Explanation
(1,2,3,4) ≥g (1,1,4,4)	False	The second rectangle extends outside the first.
(2,3,6,7) ≥g (3,4,5,7)	True	The second rectangle is completely inside the first.
(1,1,2,8) ≥g (1,1,3,3)	False	The second rectangle extends to x = 3.
(3,3,9,9) ≥g (1,1,1,1)	False	The rectangles do not overlap.

== (c) Minimal specialisations
Given:
\[
h=(2,3,5,7)
\]

Negative example:
\[
x=(2,7),\quad c=0
\]

First, check whether the point is inside the rectangle:
\[
2\leq2\leq5
\]

\[
3\leq7\leq7
\]

Yes! The point is inside, but it belongs to class 0. We must shrink the rectangle so that it no longer contains this point.

There are two minimal ways:

Option 1: Increase the lower x-coordinate from 2 to 3.
\[
\boxed{h_1=(3,3,5,7)}
\]

Option 2: Decrease the upper y-coordinate from 7 to 6.
\[
\boxed{h_2=(2,3,5,6)}
\]

