iris

# Crear un dataset local
flowers = iris
flowers$Species <- NULL
head(flowers)

# Convertir el dataset en una matriz
# flowers_matrix <- as.matrix(flowers)

# Implementar el algoritmo kmeans
k = kmeans(flowers, 3)
k
