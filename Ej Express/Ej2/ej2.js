// Ejercicio 2
// Crear un archivo con el nombre ej2.js
// Levantar un servidor de Express
// Manejar las siguientes rutas:
//OK // Ruta: Raíz del sitio (‘/’) ,Metodo: get, Acción: Mostrar un mensaje de bienvenida
//OK // Ruta: Productos, Método: get, Acción: Mostrar un mensaje que diga: listado de productos
//OK // Ruta: Productos, Método: post, Acción: Mostrar un mensaje que diga: crear un producto
//OK // Ruta: Productos, Método: put, Acción: Mostrar un mensaje que diga: actualizar un producto
//OK // Ruta: Productos, Método: delete, Acción: Mostrar un mensaje que diga: borrar un producto
//OK // Ruta: Usuarios, Metodo: get, Acción: Mostrar un mensaje que diga: listado de usuarios
//OK // Ruta: Usuarios, Método: post, Acción: Mostrar un mensaje que diga: crear un usuario
//OK // Ruta: Usuarios, Metodo: put, Acción: Mostrar un mensaje que diga: actualizar un usuario
//OK // Ruta: Usuarios, Metodo: delete, Acción: Mostrar un mensaje que diga: borrar un usuario
// Utilizar Postman para probar todos los llamados

//1.IMPORTACIONES ---------------------------------
const express = require("express");
const app = express();

//2.MIDDLEWARES -----------------------------------
app.use(express.json())

//3.ENPOINSTS -------------------------------------

app.get("/",(req, res) => {
    res.send("Bienvenid@!!!")
});

app.get("/productos", (req, res) => {
    res.send("Listado de productos")
});

app.post("/productos", (req, res) => {
    res.send("Crear un producto")
});

app.put("/productos", (req, res) => {
    res.send("Actualizar un producto")
});

app.delete("/productos", (req, res) => {
    res.send("Borrar un producto")
});

app.get("/usuarios", (req, res) => {
    res.send("Listado de usuarios")
});

app.post("/usuarios", (req, res) => {
    res.send("Crear un usuario")
});

app.put("/usuarios", (req, res) => {
    res.send("Actualizar un usuario")
});

app.delete("/usuarios", (req, res) => {
    res.send("Borrar un usuario")
})

//4.LISTEN PORT ------------------------------------
app.listen(3000, () => {
    console.log("Levantado servidor en el puerto 3000")
});