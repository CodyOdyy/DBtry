const express = require("express");
const mysql = require("mysql");
const app = express();

app.use(express.json());
const port = process.env.PORT || 8080;
app.listen(port, () => {
    console.log('Bark Bark API listening on port ');
}
    );

app.get("/", async (req,res) => {
    res.json({status: "Bark Bark Ready to roll"})
});

app.get("/stock", async (req,res) => {
   const query = "SELECT * FROM stock";
   pool.query(query, [req.params.stock], (error, results) => {
       if(!results[0]){
           res.json({status: "Not found!!"});
       }else{
           res.json(results[0]);
       }});
    });

    const pool = mysql.createPool({
        user: "root",
        password: "Dilanka123",
        database: "users",
        socketPath: '/cloudsql/${ceremonial-team-348412:us-central1:root}',
        insecureAuth : true

})


