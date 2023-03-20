var pool = require('./bd');

/*sirve para listar las novedades*/
async function getNovedades() {
        var query = 'select * from novedades';
        var rows = await pool.query(query);
        return rows;
}


async function deleteNovedadesById(id) {
        var query = 'delete from novedades where id = ?';
        var rows = await pool.query(query, [id]);
        return rows;

} // cierra delete

async function insertNovedad(obj) {
        try {
        var query = "insert into novedades set ?";
        var rows = await pool.query(query, [obj]);
        return rows;

} catch (error) {
        console.log(error);
        throw error;
} // cierra catch

} //cierra insert

// traigo los datos para modificar una sola novedad
async function getNovedadById(id) {
        var query = "select * from novedades where id=? ";
        var rows = await pool.query(query, [id]);
        return rows[0];

}

async function modificarNovedadesById(obj,id) {
        try {
                var query = "update novedades set ? where id=? ";
                var rows = await pool.query(query, [obj, id]);
                return rows;
        } catch (error) {
            throw error;
        }

} //cierr modi >update



module.exports = { getNovedades, deleteNovedadesById, insertNovedad, getNovedadById, modificarNovedadesById }