using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace A4___Exercise.Controllers
{
    public class BLAController : Controller
    {
        private readonly IHostingEnvironment _environment;

        public BLAController(IHostingEnvironment hostingEnvironment)
        {
            _environment = hostingEnvironment;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult AttackUnsecured()
        {
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.DtdProcessing = DtdProcessing.Parse;
            settings.MaxCharactersFromEntities = 0;

            var fileName = Path.Combine(_environment.WebRootPath, "XmlFiles") + "\\bla.xml";
            XmlReader reader = XmlReader.Create(fileName, settings);
            
            while (reader.Read())
            {
               if (reader.IsStartElement()){}
               var data = reader.Value;
            }

            return RedirectToAction("Index", "BLA");
        }

        [HttpPost]
        public ActionResult AttackSecured()
        {
            XmlReaderSettings settings = new XmlReaderSettings();
            settings.DtdProcessing = DtdProcessing.Prohibit;
            settings.MaxCharactersFromEntities = 1024;

            var fileName = Path.Combine(_environment.WebRootPath, "XmlFiles") + "\\bla.xml";
            XmlReader reader = XmlReader.Create(fileName, settings);
            
            while (reader.Read())
            {
               if (reader.IsStartElement()){}
               var data = reader.Value;
            }

            return RedirectToAction("Index", "BLA");
        }
    }
}
