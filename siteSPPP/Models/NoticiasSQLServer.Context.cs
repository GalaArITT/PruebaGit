﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace siteSPPP.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class sitio_seplaEntities : DbContext
    {
        public sitio_seplaEntities()
            : base("name=sitio_seplaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BALAZO> BALAZO { get; set; }
        public virtual DbSet<DEPARTAMENTOS> DEPARTAMENTOS { get; set; }
        public virtual DbSet<FOTOS> FOTOS { get; set; }
        public virtual DbSet<INFORMACION> INFORMACION { get; set; }
        public virtual DbSet<INFORMES> INFORMES { get; set; }
        public virtual DbSet<NOTICIAS_SEPLAN> NOTICIAS { get; set; }
        public virtual DbSet<PLANTILLA> PLANTILLA { get; set; }
        public virtual DbSet<SERVIDORESPUBLICOS> SERVIDORESPUBLICOS { get; set; }
        public virtual DbSet<TIPO_INFORME> TIPO_INFORME { get; set; }
        public virtual DbSet<TIPO_PLANTILLA> TIPO_PLANTILLA { get; set; }
        public virtual DbSet<USUARIO> USUARIO { get; set; }
    }
}
