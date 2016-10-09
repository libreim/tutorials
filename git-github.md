# Tutorial paso a paso para empezar con Git

1. **Regístrate**, si no lo has hecho ya, en [GitHub](https://github.com/)  
    *Algunas alternativas a GitHub son Gitlab y Bitbucket, pero ya que estamos todos aquí...*

1. Activa la verificación en dos pasos  
    *Este paso es opcional pero recomendable. Puedes utilizar la aplicación libre [FreeOTP](https://fedorahosted.org/freeotp/) para configurar la verificación.*

1. [Crea un **nuevo repositorio**](https://github.com/new)  
    *Inícialo con un README cuando se te dé la opción.*

1. Crea una **copia local** en tu ordenador  
	~~~sh
	git clone https://github.com/tu_usuario/tu_repo.git
	cd tu_repo
	~~~

1. Crea y **modifica** archivos  
    ~~~sh
	echo "Hello world" > test.txt
	echo "Repositorio de prueba. Modificaciones por $(whoami)" >> README.md
	~~~

1. Añade los cambios a un **nuevo commit***  
    ~~~sh
    git add test.txt README.md
    git commit -m "Pequeñas modificaciones

    Añade un nuevo archivo y una aclaración en el Readme."
    ~~~

1. Manda los nuevos cambios al remoto  
    ~~~sh
    git push origin master
    ~~~

1. Lee [nuestro manual](http://tux.ugr.es/dgiim/blog/2014/02/23/manualgit/) para saber qué estás haciendo.

(*) Si no has usado git nunca, puede que tengas que configurarlo por primera vez antes de crear un commit. Para ello, ejecuta los siguientes comandos indicando tu nombre y tu email (el asociado a tu cuenta de GitHub):

~~~sh
git config --global user.name  "Mi nombre"
git config --global user.email "micorreo@example.org"
~~~
