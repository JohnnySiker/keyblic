var express = require('express');
var router = express.Router();


var MongoClient = require('mongodb').MongoClient;
var db;

MongoClient.connect('mongodb://siker:r5o0o0t6@ds061355.mlab.com:61355/ezmoney',function (err,database) {
  if (err) {
    throw err;
  }else{
  	db = database;
  }
})


/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/login',function (req,res,next) {

	var user ={name:req.param("name"),password:req.param("name")}
	db.collection("Usuario",function (err,collection) {
		if (!err) {
			addObject(collection,user);
		}else{
			console.log("Error con la collection");
			console.log(err);
		}
	})
})

function getUser() {
	
}


router.get('/registro',function (req,res,next) {
	var user ={name:req.param("name"),lastname:req.param("lastname"),birthday:req.param("birthday"),phone:req.param("phone"),mail:req.param("mail"),password:req.param("password")}
	
	if (req.param("fbAuth")) {
		user['fbAuth'] = req.param("fbAuth")
	}

	console.log(user);
	res.send(user);
	/*
	db.collection("User",function (err,collection) {
		if (!err) {
			addObject(collection,user);
		}else{
			console.log("Error con la collection");
			console.log(err);
		}
	})*/
})

function addObject(collection,object) {
	collection.insert(object,function (err,result) {
		if (!err) {
			console.log("Objeto Insertado");
			console.log(result);
		}else{
			console.log("Error insertando objeto");
			console.log(err);
		}
	})
}



module.exports = router;
