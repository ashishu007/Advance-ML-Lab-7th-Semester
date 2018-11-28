from sklearn.model_selection import cross_val_score
from sklearn.datasets import load_iris
from sklearn.ensemble import AdaBoostClassifier
from sklearn.tree import DecisionTreeClassifier

iris = load_iris()
dt = DecisionTreeClassifier(max_depth=5)

n_est = [10, 25, 50, 75, 100]
scores_list = []

for est in n_est:
    clf = AdaBoostClassifier(n_estimators=est, base_estimator=dt)
    scores = cross_val_score(clf, iris.data, iris.target)
    scores_list.append(scores.mean())

print(n_est, scores_list)