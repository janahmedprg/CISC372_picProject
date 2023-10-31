
image:image.c image.h
	gcc -g image.c -o image -lm
ptimage:image_pthreads.c image_pthreads.h
	gcc -g image_pthreads.c -o image -lm -lpthread
mpimage:image_openmp.c image_openmp.h
	gcc -g image_openmp.c -o image -lm -fopenmp
ptDarimage:image_pthreads.c image_pthreads.h
	gcc -std=c99 image_pthreads.c -o image -lm -lpthread
make run:
	./image pic1.jpg edge 8
clean:
	rm -f image output.png