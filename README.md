#Prueba 2 Rails
 ____                  _           ____
|  _ \ _ __ _   _  ___| |__   ___ |___ \
| |_) | '__| | | |/ _ \ '_ \ / _` | __) |
|  __/| |  | |_| |  __/ |_) | (_| |/ __/
|_|   |_|   \__,_|\___|_.__/ \__,_|_____|

Un sitio ecommerce tiene diversas categorías de productos, en cada una de esas cateogorías aparecen los productos junto a sus precios.

##Parte Backend

1. Crear una aplicación llamada tienda con PostgreSQL
2. Se pide hacer el modelo de categorías.
3. Se pide hacer el modelo de productos y relacionarlo con categorías.
4. Se debe utilizar railsroady para dibujar las relaciones.
5. El modelo de producto solo debe aceptar productos con precios.
  - Crear validación
  - Crear test

6. Un producto no puede no tener una cateogría.
  - Crear validación
  - Crear test

7. Agregar datos al seed Construir un seed con 3 categorías
Agregar al menos dos productos a cada categoría del seed
8. Agregar datos a los fixtures
Los mismos datos incorporados en el seed
9. Agregar el campo premium a los productos.
El campo premium por defecto debe ser false
Crear un test que lo valide
10. Se debe agregar el scope premium para seleccionar todos los productos premium
Modificar el fixture para agregar un producto premium
Hacer un test del scope
11. Se debe agregar el scope last _5 para mostrar los últimos 5 productos agregados a la BD
12. Se debe agregar el Scope last_n que recibe como parámetro el número de productos a devolver
13. Borrar en cascada los productos al borrar una categoría
Crear un test que lo valide
14. Al borrar el último producto de una categoría se debe borrar la categoría (hint: ocupar el callback after_destroy)
15. Crear un campo del tipo integer para categoría llamado descuento que debe ir de 0 a 100.
16. Todos los productos de una categoría se les debe aplicar el descuento de la categoría hint: crear un método en el
producto que obtenga el precio con descuento
Parte Front-end
1. Construir el controller de productos con el método index
2. En la vista index mostrar todos los productos
3. cada producto debe aparecer junto con su categoría
4. Crear un formulario para filtrar los productos por su nombre
5. Crear un input distinto para filtrarlos por el precio
6. Bonus si ambos filtros puden utilizarse en conjunto.
7. Crear un link para ir a ver todas las cateogrías
8. Crear un link para borrar una categoría desde el index de categorías
9. La página inicial debe ser la de todos los productos
10. Agregar al layout bootstrap
11. Poner el yield dentro de un container
12. Agregar el navbar y poner dentro de este los links a categorías y a productos.
Deployment
1. Subir a Github
2. Poner las gemas necesarias para heroku
3. crear y Push a heroku
4. Migrar la base de datos de heroku
5. Correr el seed en heroku
6. Probar que todo funcione correctamente
