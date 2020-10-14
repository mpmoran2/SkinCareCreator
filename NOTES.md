Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

Your models must:

✔ Include at least one has_many, at least one belongs_to, and at least two has_many :through relationships

✘ Include a many-to-many relationship implemented with has_many :through associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

✘Your models must include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

✘You must include at least one class level ActiveRecord scope method. a. Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as .where and .order) rather than native ruby methods (such as #find_all or #sort).

✘Your application must provide standard user authentication, including signup, login, logout, and passwords.

✘Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

✘You must include and make use of a nested resource with the appropriate RESTful URLs.

✘ You must include a nested new route with form that relates to the parent resource

✘ You must include a nested index or show route

✘Your forms should correctly display validation errors.

a. Your fields should be enclosed within a fields_with_errors class

b. Error messages describing the validation failures must be present within the view.

✘Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

✘ Logic present in your controllers should be encapsulated as methods in your models.

✘ Your views should use helper methods and partials when appropriate.

✘ Follow patterns in the Rails Style Guide and the Ruby Style Guide.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.

# Feature Requests
* scope method: filter routines by product, time, day(am/pm) and/or skintype
* model method: return duration of routine based on day and/or product
* view helper method: converts seconds to min/sec
* helper method: user log in to view 

# To-Do ✔ ✘
## Products
# Controllers
* index ✔
* new ✔
* create ✔
* edit ✘
* update ✘
* destroy ✘
# Model ✔
* belongs_to :user ✔
* has_many :steps ✔
* has_many :routines, through: :steps ✔
# Routes✔
* get '/products', to: 'asanas#index' ✔
# Migrations/db ✔
* brand
* name
* use_for
* skintype
# Views ✔
* index ✔
#

## Routines
# Controllers
* index ✔
* new ✔
* create ✔
* edit 
* update
* destroy
# Model ✔
* belongs_to :user ✔
* has_many :steps ✔
* has_many :products, throug: :steps✔
# Routes
* get '/routines', to: 'routines#index' ✔
* get '/routines/new', to: 'routines#new' ✔
* post '/routines', to: 'routines#create' ✔
* get '/routines/edit', to: 'routines#edit'
* post '/routines', to: 'routines#update'
# Migrations/db✔
# Views✔
* index ✔
* new ✔
#


## Steps
# Controllers
* new ✔
* create✔
* index✔
* edit
* destroy
# Model✔
* belongs_to :routine✔
* belongs_to :product✔
# Routes✔
* get '/routines/:routine_id/steps', to: 'steps#index' ✔
* get '/routines/:routine_id/steps/new', to: 'steps#new' ✔
* post '/steps'. to: 'steps#create' ✔
# Migrations/db ✔
# Views ✔
* new => nested in routine ✔
* index => nested in routine ✔
* edit
* create
#

## Users
# Controllers
* profile
* signup
# Model
* has_many :routines
* has_many :products 
# Routes
* get '/signup', to: 'userw#new'
* post '/signup', to: 'userw#create'
* get '/profile', to: 'users#profile'
* get '/welcome', to: 'user#welcome'
# Migrations/db ✔
* name ✔
* password ✔
* age✔
* gender✔
* skintype✔
# Views
* sign up form
* welcome page
#

## Sessions
# Controllers
* login
# Routes
* get '/login', to: 'sessions#login'
* post '/login', to: 'sessions#login'
* get '/logout', to: 'sessions#logout'
# Migrations/db
# Views
* login form
* profile 
#











