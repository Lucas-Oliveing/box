#include<stdio.h>

void unique( char * lista){
    char lista2[30];
    int aux = 0;
    for(int i=0; lista[i] != 0; i++){
        for(int j = 0; lista[j] != 0; j++){
            if(lista[i] == lista[j] && i != j && i != 'x')
                lista[j] = 'x';
        }
    }
    for(int i=0; lista[i] != 0; i++){
        if(lista[i] != 'x'){
            lista2[aux] = lista[i];
            aux++;
        }
    }
    lista2[aux] = 0;
    printf("%s", lista2);
}

int main(){
    char lista[30];
    scanf("%[^'\n']", lista);
    unique(lista);
}