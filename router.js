const express = require('express');
const router = express.Router();

const conexion = require('./database/db');
//MOSTRAR REGISTOS
router.get('/', (req, res) => {
  conexion.query("SELECT * FROM permiso", (error, results) => {
        if (error) {
            throw error;
        } else {
            res.render('index',{results:results});
        }
    });
})

//AGREGAR REGISTROS
router.get('/create',(req,res)=>{
    res.render('create');
})
const crud = require('./controller/crud');
router.post('/save', crud.save);

//Editar Registros
router.get('/edit/:id',(req,res)=>{
    const id = req.params.id;
    conexion.query('SELECT * FROM permiso WHERE id=?', [id], (error,results)=>{
        if (error) {
            throw error;
        } else {
            res.render('edit',{permiso:results[0]});
        }
    })
})

router.post('/update', crud.update);

//ELIMINAR REGISTROS 
router.get('/delete/:id',(req,res)=>{
    const id = req.params.id;
    conexion.query('DELETE FROM permiso WHERE id=?', [id], (error,results)=>{
        if (error) {
            throw error;
        } else {
            res.redirect('/');
        }
    })
})
module.exports = router;