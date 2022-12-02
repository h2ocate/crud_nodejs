const mysql = require('mysql');

const conexion = mysql.createConnection({
    host:'localhost',
    port: '3307',
    user:'root',
    password:'12345',
    database:'Permisos'
});
conexion.connect((error)=>{
    if (error) {
        console.error("error en la conexion" + error);
        return  
    }
   console.log("Conexion exitosa");
})
module.exports = conexion;