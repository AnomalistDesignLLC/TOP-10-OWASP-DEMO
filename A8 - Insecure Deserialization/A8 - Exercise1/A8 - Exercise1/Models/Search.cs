using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace A8___Exercise1.Models
{
    public class Search
    {
        public string message { get; set; }
        public string keyword { get; set; }
    }
}
