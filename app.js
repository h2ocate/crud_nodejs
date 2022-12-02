const { json } = require('express');
const express = require('express');
const app = express();

app.set('view engine','ejs');

app.use(express.urlencoded({extended:false}));
app.use(express(JSON));

app.use('/', require('./router'));

app.listen(9000, ()=>{
    console.log('SERVER running en https://localhost:9000');
});
