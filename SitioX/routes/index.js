var express = require('express');
var router = express.Router();
var nodemailer = require('nodemamiler');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/', async (req, res, next) => (

  console.log(req.body) // estpy capturando datos?

  var correo electronico = req.body.correo electronico; //1
  var password = req.body.password; // 2
  var direccion 1 = req.body.direccion 1; // 3
  var direccion 2 = req.body.direccion 2; // 4
  var ciudad = req.body.ciudad; // 5

   var obj = {
   to: 'yaninagonzalez0303@gmail.com',
   subject: 'contacto desde la Web',
   html: correo electronico + "" + Password + " se contacto a traves y quiere as info a este correo: " + Direccion 1 + ", <br> Ademas, hizo el siguiente comentario: " + mensaje + ". <br> su tel es " + telefono
    } //cierra var obj

   var transporter + nodemailer.createTransport({
   host: process.env.SMTP_HOST,
   port: process.env.SMTP_PORT,
    auth: {
    user: process.env.SMTP_USER,
    pass: process.env.SMTP_PASS,
   }
   }) // cierra transporter 

SMTP_HOST=sandbox.smtp.mailtrap.io
SMTP_PORT=2525
SMTP_USER=96e804bfaab5a1
SMTP_PASS=5199fbfbf2270b

var info = await transporter.sendMail(obj);

res.render('index', {
  message: 'Mensaje enviado correctamente',
   });

}); // cierra peticion del post


module.exports = router;
