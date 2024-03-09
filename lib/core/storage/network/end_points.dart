class EndPoints{
  static const  downloadPrimaryDataEndPoint = "/api/Sync/v1.0/primary-data/download-primary-data",
   primaryDataEndpoint = "/api/Sync/v1.0/primary-data/request-download-primary-data",
   authorizeEndPoint= "/api/oauth/client/v1.0/authorize",
   authorizeMobileNumberEndPoint= "/api/oauth/user/v1.0/authorize",
   userDataEndPoint= "/api/oauth/user/v1.0/me",
   updateUserInfoEndPoint= "/api/oauth/user/v1.0/update-basic-info",
   renewAccessTokenEndPoint= "/api/oauth/user/v1.0/access-token",
   addRideEndPoint = "/api/rides/v1.0/add-ride",
   getRideMakesEndPoint = "/api/rides/v1.0/ride-makes?ride-type=",
   getRidesEndPoint = "/api/rides/v1.0/my-rides",
   getRidesModelsEndPoint = "/api/rides/v1.0/ride-make/###/models";
}