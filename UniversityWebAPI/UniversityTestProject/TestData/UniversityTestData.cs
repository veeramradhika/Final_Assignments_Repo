using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniversityMVCWebApp.APIModel;

namespace UniversityTestProject.TestData
{
    public class UniversityTestData
    {
        public static IEnumerable<UniversityModelApi> GetTestUniversity()
        {
            return new List<UniversityModelApi>()
            {
                new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007

                },
                 new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                  new UniversityModelApi()
                {
                    Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                   new UniversityModelApi()
                {
                   Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
                    new UniversityModelApi()
                {
                  Id=1,
                    UniversityName="Manisha",
                    Location="vizag",
                    AffiliatedUnder="Andhra",
                    EstablishedYear=2007
                },
            };
        }
    }
}
