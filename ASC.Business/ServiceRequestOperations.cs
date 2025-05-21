using ASC.Business.Interfaces;
using ASC.DataAccess;
using ASC.DataAccess.Interfaces;
using ASC.Model.Model;
using ASC.Model.Queries;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ASC.Business
{
    public class ServiceRequestOperations : IServiceRequestOperations
    {
        private readonly IUniOfWork _unitofwork;
        public ServiceRequestOperations(IUniOfWork unitOfWork)
        {
            _unitofwork = unitOfWork;
        }

        public async Task CreateServiceRequestAsync(ServiceRequest request)
        {
            using (_unitofwork)
            {
                await _unitofwork.Respository<ServiceRequest>().AddAsync(request);
                _unitofwork.CommitTransaction();
            }
        }
        public ServiceRequest UpdateServiceRequest(ServiceRequest request)
        {
            using (_unitofwork)
            {
                _unitofwork.Respository<ServiceRequest>().Update(request);
                _unitofwork.CommitTransaction();
                return request;
            }
        }
        public async Task<ServiceRequest> UpdateServiceRequestStatusAsync(string rowKey, string parrtitionKey, string status)
        {
            using (_unitofwork)
            {
                var serviceRequest = await _unitofwork.Respository<ServiceRequest>().FindAsync(parrtitionKey, rowKey);
                if (serviceRequest == null)
                {
                    throw new NullReferenceException();
                }
                serviceRequest.Status = status;
                _unitofwork.Respository<ServiceRequest>().Update(serviceRequest);
                _unitofwork.CommitTransaction();
                return serviceRequest;
            }
        }
        public async Task<List<ServiceRequest>> GetServiceRequestsByRequestedDateAndStatus(DateTime? requestedDate,
          List<string> status = null,
          string email = "",
          string serviceEngineerEmail = "")
        {
            var query = Queries.GetDashboardQuery<ServiceRequest>(requestedDate, status, email, serviceEngineerEmail);
            var serviceRequests = await _unitofwork.Respository<ServiceRequest>().FindAllByQuery(query);
            return serviceRequests.ToList();
        }
    }
}
