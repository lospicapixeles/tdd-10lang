import math

def media(datos):
    if not datos:
        raise ValueError("La lista no puede estar vacía")
    return sum(datos) / len(datos)

def desviacion_estandar(datos):
    if not datos:
        raise ValueError("La lista no puede estar vacía")
    mu = media(datos)
    varianza = sum((x - mu) ** 2 for x in datos) / len(datos)
    return math.sqrt(varianza)
