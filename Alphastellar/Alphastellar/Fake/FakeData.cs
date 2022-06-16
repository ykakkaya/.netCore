using Alphastellar.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Alphastellar.Fake
{

    public static class FakeData
    {
        public static List<Vehicle> _Vehicle = new List<Vehicle>();



        public static List<Vehicle> GetVehicle()
        {
            Vehicle car1 = new Car() {type="car", ID = 1, color = "blue", headlights = true, wheelswheels = 4 };
            _Vehicle.Add(car1);
            Vehicle car2 = new Car() { type = "car", ID = 2, color = "red", headlights = true, wheelswheels = 4 };
            _Vehicle.Add(car2);
            Vehicle car3 = new Car() { type = "car", ID = 3, color = "white", headlights = false, wheelswheels = 4 };
            _Vehicle.Add(car3);

            Vehicle bus1 = new Buses() { type = "bus", ID = 1, color = "black" };
            _Vehicle.Add(bus1);
            Vehicle bus2 = new Buses() { type = "bus", ID = 2, color = "grey" };
            _Vehicle.Add(bus2);
            Vehicle bus3 = new Buses() { type = "bus", ID = 3, color = "yellow" };
            _Vehicle.Add(bus3);

            Vehicle boat1 = new Boats() { type = "boat", ID = 1, color = "green" };
            _Vehicle.Add(boat1);
            Vehicle boat2 = new Boats() { type = "boat", ID = 2, color = "pink" };
            _Vehicle.Add(boat2);
            Vehicle boat3 = new Boats() { type = "boat", ID = 3, color = "red" };
            _Vehicle.Add(boat3);
            return _Vehicle;

        }










    }


}

