   
var express = require('express');

const mysql = require('mysql2/promise');


let db = null; 
const app = express(); 
app.use(express.json);

app.get('/get-user', async(req,res,next)=> {
    const name = req.body.name;
    
    await db.query("Insert into users (names)",[name]);

    res.json(status:"OK"); 
    next();  
});


async function main(){
    db = await mysql.createConnection({
        host : "localhost", 
        user : "root",
        password: "",
        database: "flutter_nodejs",
        timezone: ,
        charset: , 
    });
    app.listen(8000);
}
main();