//Heavily modified test_list.c to create a list stress test benchmark
#include "minunit.h"
#include <stdio.h>
#include <stdlib.h>
#include "list.c"

#define N 2000
list_item * item;
list l;

void reset_list(void)
{
        list_item* X = NULL;
        for (list_item* i = l.head; i != NULL;) {
                if(i == NULL) break;
                X = i->next;
                free(i);
                i = NULL;
                if(X != NULL){
        		i = X; 
        	}else{
        		break;
        	}
        }
        l.head = NULL;
        return;
}
int main(void)
{
        printf("---=[ List tests\n");
        l.head = NULL;
        int i = 0;
	  while(i<100000000){
	  	++i;
		reset_list();
		list_item* X, *Y, *Z;
		Y = NULL;
		Z = NULL;
			for (size_t i = 0; i < N-1; i++){
				X = (list_item*) malloc(sizeof(list_item));
				if(i == N/2) Z = X;
				if(i == N/4) Y = X;
				X->value = i+1;
				//if(i == 0) insert_before(&l, NULL, item);
				insert_before(&l, NULL, X);
		        }
		remove_elegant(&l, X);
		remove_elegant(&l, Y);
		remove_elegant(&l, Z);
        }
        reset_list();
        printf("---=[ End of List tests\n");
        return 0;
}
