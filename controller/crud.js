const conexion = require('../database/db');

exports.save = (req,res)=>{
   const nombreEmpleado = req.body.nombreEmpleado;
   const apellidoEmpleado = req.body.apellidoEmpleado;
   const tipopermiso = req.body.tipopermiso;
   const fecha = req.body.fecha;

    conexion.query('INSERT INTO permiso SET ?',{nombreEmpleado:nombreEmpleado,
        apellidoEmpleado:apellidoEmpleado,
        tipopermiso:tipopermiso,
        fecha:fecha},(error, result)=>{
            if (error) {
                console.log(error);
            }else{
                res.redirect('/');
            }
        });
}

exports.update = (req, res,) =>{
    const id = req.body.id;
    const nombreEmpleado = req.body.nombreEmpleado;
    const apellidoEmpleado = req.body.apellidoEmpleado;
    const tipopermiso = req.body.tipopermiso;
    const fecha = req.body.fecha;
    conexion.query('UPDATE permiso SET ? WHERE id=?',[{nombreEmpleado:nombreEmpleado,
        apellidoEmpleado:apellidoEmpleado,
        tipopermiso:tipopermiso,
        fecha:fecha}, id],(error, result)=>{
            if (error) {
                console.log(error);
            }else{
                res.redirect('/');
            }
        });
}