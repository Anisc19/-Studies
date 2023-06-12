#include <stdio.h>
#include <stdlib.h>

#define TAILLE_MEMOIRE_MAX 100

int memory[TAILLE_MEMOIRE_MAX];

typedef struct {
    int adresse_debut;
    int adresse_fin;
    int taille;
    int is_allocated;
} MemoryBlock;

MemoryBlock memory_blocks[TAILLE_MEMOIRE_MAX];

int num_blocks = 0;

void add_memory_block(int adresse_debut, int taille) {
    if (num_blocks >= TAILLE_MEMOIRE_MAX) {
        printf("\tLe tableau de blocs de le mémoire est plein\n");
        return;
    }
    memory_blocks[num_blocks].adresse_debut = adresse_debut;
    memory_blocks[num_blocks].adresse_fin = adresse_debut + taille - 1;
    memory_blocks[num_blocks].taille = taille;
    memory_blocks[num_blocks].is_allocated = 0;
    num_blocks++;
}

int first_fit_allocate(int taille) {
    for (int i = 0; i < num_blocks; i++) {
        if (!memory_blocks[i].is_allocated && memory_blocks[i].taille >= taille) {
            memory_blocks[i].is_allocated = 1;
            return memory_blocks[i].adresse_debut;
        }
    }
    return -1;
}

void deallocate(int adresse_debut) {
    for (int i = 0; i < num_blocks; i++) {
        if (memory_blocks[i].adresse_debut == adresse_debut) {
            memory_blocks[i].is_allocated = 0;
            return;
        }
    }
    printf("\tErreur: block not found\n");
}
int main() {
    add_memory_block(0, 20);
    add_memory_block(20, 30);
    add_memory_block(50, 50);

    int address1 = first_fit_allocate(10);
    if (address1 != -1) {
        printf("The allocated block with taille 10 at address %d\n", address1);
    }
    int address2 = first_fit_allocate(20);
    if (address2 != -1) {
        printf("The allocated block with taille 20 at address %d\n", address2);
    }
    int address3 = first_fit_allocate(40);
    if (address3 != -1) {
        printf("The allocated block with taille 40 at address %d\n", address3);
    } else {
        printf("\tAllocation failed\n");
    }

    deallocate(address2);

    int address4 = first_fit_allocate(10);
    if (address4 != -1) {
        printf("The allocated block with taille 10 at address %d\n", address4);
    }
    return 0;
}
