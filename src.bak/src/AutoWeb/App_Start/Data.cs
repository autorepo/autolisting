﻿using System.Linq;

using AutoMapper;

using AutoWeb.Data;
//using AutoWeb.DataResolvers;
using AutoWeb.Models;

namespace AutoWeb {
    public class DataMapping {
        public static void Step1()
        {
            Mapper.CreateMap<VehicleType, VehicleTypeViewModel>();

        }

        public static void Step2() {

        }
    }
}