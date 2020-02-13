using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace A8___Demo.Models.ManageViewModels
{
    public class DisplayRecoveryCodesViewModel
    {
        [Required]
        public IEnumerable<string> Codes { get; set; }

    }
}
