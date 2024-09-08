// Ejercicio 1
// Crear un archivo con el nombre e1.js
// Levantar un servidor utilizando Express, al levantar el servidor tiene que mostrar un mensaje que diga: 
// `Servidor levantado en el puerto ${puerto}`.

//1.IMPORTACIONES -----------------------------
const express = require("express");
const app = express()

const puerto = 3000

//2. MIDDLEWARES -------------------------------


//3. ENDPOINTS --------------------------------



//4. LISTEN PUERTO ----------------------------
app.listen(puerto, () => {
    console.log(`Servidor levantado en el puerto ${puerto}`)
})

