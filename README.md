# Machine Learning
Notes that I take while learning machine learning.

Firstly, machine learning is a subset of AI which includes several specific fields including neural network, natural language processing, and deep learning.

## Definition
There are two common definitions until the moment. One is old, second one is recent.
* (Arthur Samuel, 1959): **Machine Learning is the field of study that gives computer the ability to learn without being explicitly programmed.**
* (Tom M. Mitchell, 1997): **Machine Learning is a computer program is said to learn from experience E with respect to some task T and some performance measure P, if its performance on T, as measured by P, improves with experience E.**

## Examples
* Database mining
  Large datasets from the growth of automation/web
  E.g: Web click data, medical records, biology, engineering
* Applications can be programmed by hands
  E.g: Autonomous helicopter, handwriting recognition, NLP, computer vision
* Self-customzing programs
  E.g: Amazon, Netflix product recommendations
* Understanding human learning (brain, real AI)

## Algorithms
There are two main types of machine learning algorithms
1. Supervised learning: "Right answers" given in the data set.
  * Regression problem type: Predict continuous valued output
  * Classification problem type: Discrete value output
2. Unsupervised learning: "Right answers" not given in the data set.

Other algorithms: Reinforcement learning, recommender systems.

## Model representation
Notation
m : number of training examples
x's : 'input' variable
y's : 'output' variable
(x,y) : single training example
(x(i), y(i)) : i(th) training example

## Hypothesis
The function to map x to y.
The purpose of machine learning in regression problem is to find the best hypothesis.
And if there is more data, it learn and update hypothesis (h) continuously.

## Cost function
It is a function that measures the performance of a Machine Learning model for given data, or the accuracy of our hypothesis function.
Sometimes, this function is otherwise called "Squared Error Function", or "Mean Squared Error".
Sympol: J(θ0, θ1)
![Cos function](https://i.pinimg.com/originals/43/7d/47/437d47ca32f469ded991b6d0194bb8e2.jpg)

## Contour plots
Contour plots (sometimes called Level Plots) are a way to show a three-dimensional surface on a two-dimensional plane. It is used to visualize the cost function.
![Contour plot](http://www.adeveloperdiary.com/wp-content/uploads/2018/11/How-to-visualize-Gradient-Descent-using-Contour-plot-in-Python-adeveloperdiary.com-1.jpg)

## Gradient Descent
An optimization algorithm used to minimize some functions by iteratively moving in the direction of steepest descent as defined by the negative of the gradient. In machine learning, we use gradient descent to update the parameters of our model.

