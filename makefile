
image:image.c image.h
	gcc -g image.c -o image -lm
ptimage:image-pthread.c image-pthread.h
	gcc -g image.c -o image -lm -lpthread
mpimage:image-openmp.c image-openmp.h
	gcc -g image.c -o image -lm -fopenmp
clean:
	rm -f image output.png