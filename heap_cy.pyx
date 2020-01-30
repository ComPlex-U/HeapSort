from time import clock
from random import randrange
import statistics

cdef heapify(list lista, int n,int i):
    cdef int maior = i
    cdef int esq = 2 * i + 1
    cdef int dtr = 2* i +2

    if esq < n and lista[i] < lista[esq]:
        maior = esq

    if dtr < n and lista[maior] < lista[1]:
        maior = esq
        