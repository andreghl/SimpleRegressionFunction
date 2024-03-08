# SimpleRegressionFunction
For this project, I attempt to create a function for a simple regression function with one dependent and one independent variable. A simple regression model is an equation of the following form:

$$
\tag{1}
Y_{i} = \alpha + \beta x_{i} \quad i = 1, \dots, n
$$

This function takes two arguments. The first one is the dependent variable, usually denoted by $Y_{i}$, and the second argument is the independent variable $x_{i}$. The coefficient on the independent variable is the average effect of $x_{i}$ on $Y_{i}$ in the population. The coefficient $\alpha$ is simply the intercept of our model. To estimate both of those parameters, I will use *Ordinary Least Squares* to get the best linear predictor for $\mathbb{E}[Y|X]$.

The intercept $\alpha$ is given by the following formula:

$$
\tag{2}
\alpha = \overline{y} - \beta \overline{x}
$$

$\rightarrow$ Note that $\overline{a}$ simply denotes the mean of the random variable $a_{i}$.

The $\beta$ coefficient is given by the covariance between the two variables divided by the variable of the independent variable.

$$
\tag{3}
\beta = \frac {Cov(X,Y)}{Var(X)} 
$$

After computing both estimates, the function ```regress()``` returns them in a list. 
