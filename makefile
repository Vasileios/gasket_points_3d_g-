LIBPATH += -L"/System/Library/Frameworks/OpenGL.framework/Libraries" -L"/opt/X11/lib/"
#LIBPATH2 += -I"/opt/X11/include/X11/"

##-L"/System/Library/Frameworks/OpenGL.framework/Libraries"

FRAMEWORK = -framework GLUT
FRAMEWORK += -framework OpenGL

COMPILERFLAGS = -Wall
CC = g++
CFLAGS = -I/opt/X11/include $(COMPILERFLAGS)
LIBRARIES = -lGL -lGLU -lm -lobjc -lstdc++ -lX11

OBJECTS = gasket_points_3d.o
All: gasket_points_3d

gasket_points_3d: gasket_points_3d.o $(OBJECTS)
	$(CC) $(FRAMEWORK) $(CFLAGS) -o $@ $(LIBPATH) $(OBJECTS) $(LIBRARIES)

	./gasket_points_3d
