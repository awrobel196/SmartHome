using System;
using System.Collections.Generic;

namespace AirMachine.ModelHelpers.AirlyAPIModelHelper
{
    public class AirModelValuesHelper
    {
        public DateTime fromDateTime { get; set; }
        public List<AirModelValuesListHelper> values { get; set; }
        public List<AirModelIndexesHelper> indexes { get; set; }
    }
}