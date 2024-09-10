using System;
using System.Diagnostics.CodeAnalysis;

namespace Catalogodo.Clases
{
	public class Categorias
	{
		private int id = 0;
		private string categoria = " ";
        private List<Productos> productos= new List<Productos>();
 
		// propiedades
		public int Id { get => this.id; set => this.id = value; }
		public string Categoria { get => this.categoria; set => this.categoria = value; }
        public List<Productos> Productos { get => this.productos; set => this.productos = value; }
	}
 
	public class Fabricantes
	{
		private int id = 0;
		private string nombre = " ";
		private string contacto = " ";
        private List<Productos> productos= new List<Productos>();
 
		// propiedades
		public int Id { get => this.id; set => this.id = value; }
		public string Nombre { get => this.nombre; set => this.nombre = value; }
		public string Contacto { get => this.contacto; set => this.contacto = value; }
        public List<Productos> Productos { get => this.productos; set => this.productos = value; }
	}

    public class Estados{
        private int id = 0;
        private string nombre = " ";
        private List<Publicaciones> publicaciones = new List<Publicaciones>();
 
        // propiedades
        public int Id { get => this.id; set => this.id = value; }
        public string Nombre { get => this.nombre; set => this.nombre = value; }
        public List<Publicaciones> Publicaciones { get => this.publicaciones; set => this.publicaciones = value; }
    }

    public class Imagenes{
        private int id = 0;
        private Productos? producto = null;
        private string archivo = " ";
        private string informacion = " ";
 
        // propiedades
        public int Id { get => this.id; set => this.id = value; }
        public Productos? Producto { get => this.producto; set => this.producto = value; }
        public string Archivo { get => this.archivo; set => this.archivo = value; }
        public string Informacion { get => this.informacion; set => this.informacion = value; }

    }
    public class Productos
    {
        private int id = 0;
        private string nombre = " ";
        private Categorias? categoria = null;
        private Fabricantes? fabricante = null;
        private double precio = 0.0;
        private int codigo = 0;
        private int cantidad = 0;
        private int costo = 0;
        private List<Imagenes> imagenes = new List<Imagenes>();
        private List<Publicaciones> publicaciones = new List<Publicaciones>();
 
        // propiedades
        public int Id { get => this.id; set => this.id = value; }
        public string Nombre { get => this.nombre; set => this.nombre = value; }
        public Categorias? Categoria { get => this.categoria; set => this.categoria = value; }
        public Fabricantes? Fabricante { get => this.fabricante; set => this.fabricante = value; }
        public double Precio { get => this.precio; set => this.precio = value; }
        public int Codigo { get => this.codigo; set => this.codigo = value; }
        public int Cantidad { get => this.cantidad; set => this.cantidad = value; }
        public int Costo { get => this.costo; set => this.costo = value; }
        public List<Imagenes> Imagenes { get => this.imagenes; set => this.imagenes = value; }
        public List<Publicaciones> Publicaciones { get => this.publicaciones; set => this.publicaciones = value; }
    }

    public class Publicaciones{
        private int id = 0;
        private Productos? producto = null;
        private Estados? estado = null;
        private DateTime? fecha = null;
        private string titulo = " ";
        private string descripcion = " ";
 
        // propiedades
        public int Id { get => this.id; set => this.id = value; }
        public Productos? Producto { get => this.producto; set => this.producto = value; }
        public Estados? Estado { get => this.estado; set => this.estado = value; }
        public DateTime? Fecha { get => this.fecha; set => this.fecha = value; }
        public string Titulo { get => this.titulo; set => this.titulo = value; }
        public string Descripcion { get => this.descripcion; set => this.descripcion = value; }
    }
}