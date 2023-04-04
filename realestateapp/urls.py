from django.contrib import admin
from django.urls import path
from .import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    
    # path('',views.getData),
    path('api_registerData/',views.registerData),
    path('api_loginData/',views.loginData),
    path('api_addProperty/',views.addProperty),
    path('api_getMypropertyData/',views.getMypropertyData),
    path('api_addFavourites/',views.addFavourites),
    path('api_favList/',views.favList),
    path('api_profileData/',views.profileData),
    path('api_Editprofile/',views.Editprofile),
    path('api_addFeedback/',views.addFeedback),
    path('api_viewFeedback/',views.viewFeedback),
    path('api_getAllproperty/',views.getAllproperty),
    path('api_deleteProperty/',views.deleteProperty),
    path('api_editProperty/',views.editProperty),
    path('api_getpropertyData/',views.getpropertyData),
    path('api_deleteFavlist/',views.deleteFavlist),
    path('api_orderitem/',views.orderitem),

    
    #--------------------------------------------------
    path('api_UserList/',views.UserList),
    path('api_chat/',views.chat),
    path('api_viewChat/',views.viewChat),
    
    #----------------ADMIN-----------------------------
    path('',views.admin_login),
    path('login/',views.admin_login),
    path('admin_home/',views.admin_home),
    path('admin_userlist/',views.admin_userlist),
    path('admin_propertylist/',views.admin_propertylist),
    path('admin_feedback/',views.admin_feedback),
    path('admin_deleteUser/',views.admin_deleteUser),
    path('admin_deleteProperty/',views.admin_deleteProperty),
    path('logout/',views.logout),
  
]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
    urlpatterns += static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)