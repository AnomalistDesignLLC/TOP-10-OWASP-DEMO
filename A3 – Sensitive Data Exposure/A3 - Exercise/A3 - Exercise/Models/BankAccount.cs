using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace A3___Exercise.Models
{
    public class BankAccount
    {
        [Key]
        public int? BankAccountId { get; set; }

        [Required(ErrorMessage = "Enter Bank Account Name")]
        [RegularExpression("[a-zA-Z ]+$",ErrorMessage = "Invalid characters")]
        [StringLength(50, ErrorMessage = "Only 50 Characters are Allowed")]
        public string Name { get; set; }
    }
}
