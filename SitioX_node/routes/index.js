var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;



/* GET-home page. */
router.get('/', async function (req, res, next) {

  var novedades = await novedadesModel.getNovedades();

  novedades = novedades.splice(0, 5); //seleccionamos los primeros 5 elementos del array

  novedades = novedades.map(novedad => {
    if (novedad.img_id) {
        const imagen = cloudinary.url(novedad.img_id, {
        width: 460,
        crop: 'fill'
      })
      return {
        ...novedad, //titulo,subtitulo, y cuerpo
        imagen // imagen
      }
    } else {
      return {
        ...novedad, //titulo,subtitulo, y cuerpo
        imagen: '/images/noimage.jpg'

      }
   
    }
 
  });
      res.render('index', {
        novedades
      });

  });

 router.post('/', async (req, res, next) => {

  console.log(req.body) // estoy capturando datos?

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.tel;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'yaninagonzalez0303@gmail.com',
    subject: 'Contacto de la Web',
    html: nombre + " " + apellido + " se contactó a través y quiere más información a este correo: " + email + ".<br> Ademas, hizo el siguiente comentario: " + mensaje + ".<br> su tel es " + telefono
  } // cierra var obj

  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  }) //cierra transporter

  var info = await transporter.sendMail(obj);

  res.render('index', {
    message: 'Mensaje ennviado correctamente',
  });

}); // cierra peticion del POST




module.exports = router;
