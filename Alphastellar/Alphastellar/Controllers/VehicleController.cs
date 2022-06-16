using Alphastellar.Fake;
using Alphastellar.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphastellar.Controllers
{
    
    [Route("[controller]")]
    [ApiController]
    public class VehicleController : ControllerBase
    {

        private List<Vehicle> _Vehicle = FakeData.GetVehicle();
        


        [HttpGet]
        public IActionResult Get()
        {

            return Ok(_Vehicle);
        }

        [HttpGet("{type}")]

        public IActionResult GetVehiclesByType(string type)
        {

            List<Vehicle> _typeVehicle = new List<Vehicle>();
            _typeVehicle = _Vehicle.FindAll(x => x.type.ToUpper() == type.ToUpper());
            if (_typeVehicle != null)
            {
                return Ok(_typeVehicle);
            }
            return NotFound();

        }

        [HttpGet("{type}/{color}")]
        public IActionResult GetVehiclesByColor(string type, string color)
        {

            List<Vehicle> _colorVehicle = new List<Vehicle>();
            _colorVehicle = _Vehicle.FindAll(x => x.type == type && x.color.ToUpper() == color.ToUpper());
            if (_colorVehicle != null)
            {
                return Ok(_colorVehicle);
            }
            return NotFound();

        }
        //[HttpPost("{type}/{id}")]
        //public IActionResult Post(String type,int id)
        //{
        //    var vehicle = _Vehicle.FindAll(x => x.type.ToUpper() == type.ToUpper()&& x =>x.ID==id);
        //    if (vehicle != null)
        //    {
                
        //    }
            
        //}

       


        [HttpDelete("{type}/{id}")]

        public IActionResult DeleteCar(int id, String type)
        {

            var vehicle = _Vehicle.Find(x => x.type == type && x.ID == id);
            if (vehicle != null)
            {
                _Vehicle.Remove(vehicle);
                return Ok();
            }
            return NotFound();

        }
    }
}
