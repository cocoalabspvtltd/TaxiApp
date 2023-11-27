const apiLogin = 'login';
const apiRegister = 'register';
const apiForgotPassword = 'forgot-password';
const apiVerifyOTP = 'verify-otp';
const apiResetPassword = 'password-reset';

/// [ POST API ]
const roleDetails = '/role-details';

// Vehicle owner
const apiDriverDetails = '/drivers/home';
const apiAddVehicle = '/driver/car/store';
const apiDriverReview = '/driver/reviews/list';
const apiDriverOwnerBookings = '/driver/trip/request/list';
const apiVehicleEdit = '/driver/update';

//Restaurant
const apiGetRestaurant = 'restaurant/list';
const apigetRestaurantDetail = '/restaurant/'; //restaurant/{{id}}/show
const apiEditMyRestaurantEndpint = '/restaurant/update';
const apibookRestaurent = 'restaurant/bookings/store';
const apibookedresturentreview = 'restaurant/reviews/store';
const apibookedhotelreview = 'hotel/reviews/store';
const apiBookedRestaurants = 'restaurant/bookings/user/list';
const apigetOwnerMyRestaurant = 'restaurant/home';
const apiOwnerMyRestaurantAddFoodEndPoint = 'restaurant/food/store';
const apiGetOwnerMyRestaurantBookingListEndPoint = 'restaurant/bookings/list';
const apiGetReviewsOdMyRestaurantListEndpoint = 'restaurant/reviews/list';

/// Hotel

const hotelListEndPoint = "/hotel/list";
const getMyHotelEndPoint = "/hotel/home";
const deleteRoomEndPoint = "/hotel/room";
const addMyHotelEndPoint = "/role-details";
const addRoomEndPoint = "/hotel/room/store";
const editMyHotelEndPoint = "/hotel/update";
const bookHotelEndPoint = "/hotel/booking/store";
const getMyHotelRoomListEndPoint = "/hotel/room/list";
const getMyHotelReviewsEndPoint = "/hotel/reviews/list";
const hotelOwnerBookingListEndPoint = "/hotel/bookings/list";
const userHotelBookingListEndpoint = "/hotel/booking/user/list";

/// trip module
const apiTripCreate = '/trip/store';
const apiTripList = '/trip/list';
const apiCreatePool = '/trip/pool';
const tripPoolInvitesEndpoint = "/trip/pool/invites";
const apiUserOnThisRoute = '/trip';
const apiDriverOnThisRoute = '/drivers/get';

//profile
const uploadprofilepic = '/user/profile-pic';
const profileDetails="/profile-page";

//driver
const driverRequsetList='/driver/trip/request/list';
