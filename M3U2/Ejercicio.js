var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var inicioRouter = require('./routes/inicio');//routes/inicio.js
var novedadesRouter = require('./routes/novedades'); //routes/novedades.js
var direccionesRouter = require('./routes/direcciones'); //routes/direcciones.js
var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', inicioRouter);
app.use('/novedades', novedadesRouter);
app.use('/direcciones', direccionesRouter);


app.get('/ejercicio', function (req, res) {
    res.send('Hola soy la pagina de Ejercicio')

})

app.get('/promociones', function (req, res) {
    res.send('Hola soy la pagina de promociones')

})

app.get('/ubicacion', function (req, res) {
    res.send('Hola soy la pagina de ubicacion')

})


// catch 404 and forward to error handler
app.use(function (req, res, next) {
    next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render('error1');
});

module.exports = app;
