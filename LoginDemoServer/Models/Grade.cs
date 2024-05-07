using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace LoginDemoServer.Models;

[Keyless]
public partial class Grade
{
    [Column(TypeName = "datetime")]
    public DateTime? DateofTest { get; set; }

    [Column("subjectName")]
    [StringLength(20)]
    public string? SubjectName { get; set; }

    [Column("Grade")]
    public int Grade1 { get; set; }

    [StringLength(100)]
    public string? Email { get; set; }

    [ForeignKey("Email")]
    public virtual User? EmailNavigation { get; set; }
}
