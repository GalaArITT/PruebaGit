
//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
public partial class INFORMES
{

    public int IDINFORME { get; set; }

    public Nullable<int> IDTIPO { get; set; }

    public Nullable<int> IDUSUARIO { get; set; }

    public string NOMFREINFORME { get; set; }

    public byte[] ARCHIVOINFORME { get; set; }



    public virtual TIPO_INFORME TIPO_INFORME { get; set; }

    public virtual USUARIO USUARIO { get; set; }

}

}
