using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using UniversityMVCWebApp.APIModel;
using UniversityMVCWebApp.Models;
using UniversityMVCWebApp.Repository;

namespace UniversityMVCWebApp.Controllers
{
    
    public class UniversitiesController : Controller
    {
         Uri baseUri = new Uri("https://localhost:7168/api");
            HttpClient client = new HttpClient();

        List<UniversityViewModel> UniversityList = new List<UniversityViewModel>();
        //private readonly IDataRepository<UniversityModelApi> _universityDataRepository;
        private readonly IMapper _imapper;


        //public UniversitiesController(IDataRepository<UniversityModelApi> universityDataRepository)
        //{
        //    _universityDataRepository = universityDataRepository;
        //    
        //}
        public UniversitiesController(IMapper imapper)
        {
            _imapper = imapper;
        }




        //Details of  the universities
        public IActionResult Index()
            {
                client.BaseAddress = baseUri;
                HttpResponseMessage response = client.GetAsync(baseUri + "/University").Result;
                if (response.IsSuccessStatusCode)
                {
                    string UniversityData = response.Content.ReadAsStringAsync().Result;
                    UniversityList = JsonConvert.DeserializeObject<List<UniversityViewModel>>(UniversityData); ;

                }
                var result = UniversityList.OrderByDescending(e => e.establishedYear).ThenBy(e => e.universityName);
            
            _imapper.Map<UniversityModelApi>(result);
            return View(result);
            return View(UniversityList);
            IEnumerable<UniversityViewModel> university = (IEnumerable<UniversityViewModel>)_universityDataRepository.GetAll();

        }

        //Add the university details
        [Authorize(policy: "writepolicy")]
        public IActionResult Create()
        {

                return View();
        }
        [HttpPost]

            public ActionResult AddUniversity(UniversityViewModel university)
            {
                using (var client = new HttpClient())
                {
                    client.BaseAddress = new Uri("https://localhost:7168/api/University");
                    var postTask = client.PostAsJsonAsync<UniversityViewModel>("University", university);
                    postTask.Wait();
                    var result = postTask.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        return RedirectToAction("Index");
                        //_universityDataRepository.Add(result);
                        // return RedirectToAction(actionName: nameof(Index));
                         //_imapper.Map<UniversityModelApi>(university);
                }
                    return View();
                    }

            }
        //Edit the university details
        [Authorize(policy: "writepolicy")]
        public ActionResult Edit(int id)
        {
                client.BaseAddress = baseUri;
                HttpResponseMessage response = client.GetAsync(baseUri + "/University").Result;
                string data = response.Content.ReadAsStringAsync().Result;
                UniversityList = JsonConvert.DeserializeObject<List<UniversityViewModel>>(data);
                var university = UniversityList.Where(e => e.id == id).FirstOrDefault();
                _imapper.Map<UniversityModelApi>(university);
                return View(university);
        }
        [HttpPost]
        public IActionResult Save(UniversityViewModel university)
        {
           using (var client = new HttpClient())
           {
                    client.BaseAddress = new Uri("https://localhost:7168/api/");
                    var put = client.PutAsJsonAsync($"University?id={university.id}", university);
                    put.Wait();
                    var result = put.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        return RedirectToAction("Index");
                    }

           }
           ModelState.AddModelError(string.Empty, "server error");
            
           return View();

        }
        [HttpDelete]
       // [Authorize(policy: "writepolicy")]
        public IActionResult Delete(int id)
            {
                using (var client = new HttpClient())
                {
                    client.BaseAddress = new Uri("https://localhost:7168/api/University/");
                    var delete = client.DeleteAsync($"{id}");
                    delete.Wait();
                    var result = delete.Result;
                    if (result.IsSuccessStatusCode)
                    {
                        return RedirectToAction("Index");
                    }
                }
                ModelState.AddModelError(string.Empty, "server error");
           // _imapper.Map<UniversityModelApi>(Results);
            return View();

        }
            


    }
}


