#include <stdio.h>
#include <stdlib.h>

#define TAILLE_QUEUE_MAX 100

int queue[TAILLE_QUEUE_MAX];
int devant = 0, arriere = 0;
void enqueue(int valeur) {
    if ((arriere + 1) % TAILLE_QUEUE_MAX == devant) {
        printf("Queue is full!\n");
        return;
    }
    queue[arriere] = valeur;
    arriere = (arriere + 1) % TAILLE_QUEUE_MAX;
}
int dequeue() {
    if (devant == arriere) {
        printf("Queue is empty!\n");
        return -1;
    }
    int valeur = queue[devant];
    devant = (devant + 1) % TAILLE_QUEUE_MAX;
    return valeur;
}
int main() {
    enqueue(1);
    enqueue(2);
    enqueue(3);
    printf("%d\n", dequeue()); 
    printf("%d\n", dequeue()); 
    printf("%d\n", dequeue()); 
    printf("%d\n", dequeue()); 
    return 0;
}
