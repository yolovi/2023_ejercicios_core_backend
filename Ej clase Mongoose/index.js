const express = require("express")
const { dbConnection } = require("./config/config")
const app = express()
const PORT = 3000

dbConnection()

//listen
app.listen(PORT, () => console.log(`Servidor levantado en el puerto ${PORT}`))

