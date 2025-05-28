using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

using MySql.Data.MySqlClient;
using MySql.Data.Types;
using MySql.Data;

namespace isomedGUMO
{
    public class clases
    {


        //creamos la conexión a la base de datos
        //public static MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; Database=isomed; UserID=root; Password=administrador1_;");
        public static MySqlConnection conexion = new MySqlConnection("Server=54.82.236.68; Database=ISOMED; UserID=root; Password=00000;");
        public static MySqlConnection conex;

        public static string cnn; 
        public static DataSet ds = new DataSet();

        public static int nivel;
        public static bool activar = false; 
        public static MySqlCommandBuilder cb;      
        public static MySqlDataAdapter data1;

        public static DataRow reg;
        public static string usuario;

        public static string obtenerCadenaDeConexion()
        //invocamos a la cadena de conexión de app.config
        { return obtenerCadenaDeConexion(); }

        public static string metodo_obtener_var_idSTATUS_OT(string _descripcionSTATUS_OT)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            int var_idSTATUS_OT;
            MySqlCommand command1 = new MySqlCommand("SELECT idSTATUS_OT FROM tableSTATUS_OT WHERE descripcionSTATUS_OT = @descripcionSTATUS_OT", conexion);
            command1.Parameters.AddWithValue("descripcionSTATUS_OT", _descripcionSTATUS_OT);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_idSTATUS_OT = dr1.GetInt32(0);
                    conexion.Close();
                    return var_idSTATUS_OT.ToString();
                }

                else
                {
                    conexion.Close();
                    return "0";
                }
            }
        }


        public static string metodo_obtener_var_idUSUARIO(string _nombre_completoUSUARIO)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            int var_idUSUARIO;
            MySqlCommand command1 = new MySqlCommand("SELECT idUSUARIO FROM tableUSUARIO WHERE nombre_completoUSUARIO = @nombre_completoUSUARIO", conexion);
            command1.Parameters.AddWithValue("nombre_completoUSUARIO", _nombre_completoUSUARIO);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_idUSUARIO = dr1.GetInt32(0);
                    conexion.Close();
                    return var_idUSUARIO.ToString();
                }

                else
                {
                    conexion.Close();
                    return "0";
                }
            }
        }

        public static int metodo_obtener_idTIPOUSUARIO_FK(string _descripcionTIPOUSUARIO)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            int var_idTIPOUSUARIO_FK;
            MySqlCommand command1 = new MySqlCommand("SELECT idTIPOUSUARIO FROM tableTIPOUSUARIO WHERE descripcionTIPOUSUARIO = @descripcionTIPOUSUARIO", conexion);
            command1.Parameters.AddWithValue("descripcionTIPOUSUARIO", _descripcionTIPOUSUARIO);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_idTIPOUSUARIO_FK = dr1.GetInt32(0);
                    conexion.Close();
                    return var_idTIPOUSUARIO_FK;
                }

                else
                {
                    conexion.Close();
                    return 0;
                }
            }
        }


        public static string metodo_obtener_nombreUSUARIO(string _idUsuario)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            string var_nombreUSUARIO;
            MySqlCommand command1 = new MySqlCommand("SELECT nombre_completoUSUARIO FROM tableUSUARIO WHERE idUSUARIO = @idUSUARIO", conexion);
            command1.Parameters.AddWithValue("idUSUARIO", _idUsuario);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_nombreUSUARIO = dr1.GetString(0);
                    conexion.Close();
                    return var_nombreUSUARIO.ToString();
                }

                else
                {
                    conexion.Close();
                    return "Usuario inexistente o problema en la conexión de base de datos";
                }
            }
        }


        public static string validarEmail_Password(string _emailUsuario, string _password)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            int var_idUSUARIO;
            MySqlCommand command1 = new MySqlCommand("SELECT idUSUARIO FROM tableUSUARIO WHERE emailUSUARIO = @emailUSUARIO AND passwordUSUARIO = @passwordUSUARIO", conexion);
            command1.Parameters.AddWithValue("emailUSUARIO", _emailUsuario);
            command1.Parameters.AddWithValue("passwordUSUARIO", _password);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_idUSUARIO = dr1.GetInt32(0);
                    conexion.Close();
                    return var_idUSUARIO.ToString();
                }

                else
                {
                    conexion.Close();
                    return "0";
                }
            }
        }


        public static string metodo_obtener_descripcionTIPOUSUARIO(string _idUsuario)
        // procedimiento para obtener el ID de la categoría basado en su descripción antes de escritura en BD                
        {
            string var_descripcionTIPOUSUARIO;
            MySqlCommand command1 = new MySqlCommand("SELECT descripcionTIPOUSUARIO FROM tableUSUARIO INNER JOIN tableTIPOUSUARIO ON tableUSUARIO.idTIPOUSUARIO_FK = tableTIPOUSUARIO.idTIPOUSUARIO WHERE idUSUARIO = @idUSUARIO", conexion);
            command1.Parameters.AddWithValue("idUSUARIO", _idUsuario);
            conexion.Open();
            using (MySqlDataReader dr1 = command1.ExecuteReader())
            {
                if (dr1.HasRows) // si el DataReader tiene filas, que devuelva el valor                
                {
                    dr1.Read();
                    var_descripcionTIPOUSUARIO = dr1.GetString(0);
                    conexion.Close();
                    return var_descripcionTIPOUSUARIO.ToString();
                }

                else
                {
                    conexion.Close();
                    return "Usuario inexistente o problema en la conexión de base de datos";
                }
            }
        }

        


    }
}