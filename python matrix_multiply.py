import numpy as np

# two small matrices
A = np.array([[1, 2],
              [3, 4]])

B = np.array([[5, 6],
              [7, 8]])

C = np.dot(A, B)

print("Matrix A:\n", A)
print("Matrix B:\n", B)
print("A x B =\n", C)
