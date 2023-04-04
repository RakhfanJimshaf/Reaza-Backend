from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.decorators import api_view
from .models import*
from .serializers import*
from rest_framework import status
from django.conf import settings
from django.conf.urls.static import static 
from django.http import HttpResponseRedirect,HttpResponse
from datetime import date
from datetime import datetime
from django.db.models import Q
from django.db import connection
from django.http import JsonResponse


# Create your views here.

@api_view(['POST'])
def registerData(request):
	serializer = UserSerializer(data=request.data)
	if serializer.is_valid():
		serializer.save()
		return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)  
	else:
		return Response({"status": "error", "data": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)
@api_view(['POST'])
def loginData(request):
	data = request.data
	email = data.get("email")
	pswd = data.get("pswd")	
	chk=tb_user.objects.filter(email=email,pswd=pswd)
	print("----------",chk)
	if chk:
		for x in chk:
			request.session['id']=x.id
			name=x.name
			email=x.email
			pswd=x.pswd
			return Response({"status":"success","id":x.id,"name":name,"email":email,"pswd":pswd}, status=status.HTTP_200_OK)
	else:
		return Response({"status": "error"})
@api_view(['POST'])
def profileData(request):
	data = request.data
	user_id = data.get("user_id")
	aa=tb_user.objects.all().filter(id=user_id)
	serializer = UserSerializer(aa, many=True)
	print("-----------data---",data)
	return Response(serializer.data)
@api_view(['POST'])
def Editprofile(request):
	data=request.data
	user_id=data.get("user_id")
	if request.method=="POST":
		email=data.get("email")
		pswd=data.get("pswd")
		address=data.get("address")
		phone=data.get("phone")
		aa=tb_user.objects.all().filter(id=user_id).update(email=email,pswd=pswd,address=address,phone=phone)
		return Response({"status":"success"})
	else:
		return Response({"status":"error"})
@api_view(['POST'])
def addProperty(request):
	serializer = PropertySerializer(data=request.data)
	if serializer.is_valid():
		serializer.save()
		return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)  
	else:
		return Response({"status": "error", "data": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)
@api_view(['POST'])
def getMypropertyData(request):
	data = request.data
	user_id = data.get("user_id")
	aa=tb_property.objects.all().filter(user_id=user_id)
	serializer = PropertySerializer(aa, many=True)
	return Response(serializer.data)
@api_view(['POST'])
def deleteProperty(request):
	data=request.data
	property_id=data.get("property_id")
	aa=tb_property.objects.all().filter(id=property_id).delete()
	return Response({"status":"success"})
@api_view(['POST'])
def editProperty(request):
	data=request.data
	if request.method=="POST":
		property_id=data.get("property_id")
		price=data.get("price")
		description=data.get("description")
		contact=data.get("contact")
		aa=tb_property.objects.all().filter(id=property_id).update(price=price,description=description,contact=contact)
		bb=tb_property.objects.all().filter(id=property_id)
		serializer=PropertySerializer(bb,many=True)
		return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)
	else:
		return Response({"status": "error", "data": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)
@api_view(['POST'])
def getAllproperty(request):
	data=request.data
	user_id=data.get("user_id")
	aa=tb_property.objects.all().exclude(user_id=user_id)
	serializer = PropertySerializer(aa, many=True)
	data = []
	for x in aa:
		name = x.user_id.name
		# data.append({'name': name})
	for obj in serializer.data:
		name = obj.pop('name', name)  # remove the 'name' key from the object
		obj['name'] = name  # add the 'name' variable to the object
		data.append(obj)
	  # add the name as a separate dictionary to the data list
	return Response({'data': data})

@api_view(['POST'])
def addFavourites(request):
	data=request.data
	user_id=data.get("user_id")
	pro_id=data.get("pro_id")
	bb=tb_favourites.objects.all().filter(user_id=user_id,property_id=pro_id,fav_status='added')
	if bb:
		print("-----------exist--------")
		return Response({"status": "Already Liked"})
	else:
		uid=tb_user.objects.get(id=user_id)
		pid=tb_property.objects.get(id=pro_id)
		ppp=tb_property.objects.all().filter(id=pro_id)
		for x in ppp:
			pro_type=x.pro_type
			category=x.category
			location=x.location
			img=x.img
			area_measure=x.area_measure
			price=x.price
			description=x.description
			contact=x.contact
		aa=tb_favourites(user_id=uid,property_id=pid,fav_status='added',pro_type=pro_type,category=category,location=location,img=img,area_measure=area_measure,price=price,description=description,contact=contact).save()
		return Response({"status": "success"})

@api_view(['POST'])
def favList(request):
	data=request.data
	user_id=data.get("user_id")
	fav=tb_favourites.objects.all().filter(user_id=user_id)
	serializer=FavouriteSerializer(fav,many=True)
	return Response(serializer.data)
@api_view(['POST'])
def deleteFavlist(request):
	data=request.data
	# favid=data.get("fav_id")
	pro_id=data.get("pro_id")
	fav=tb_favourites.objects.all().filter(property_id=pro_id).delete()
	return Response({"status":"success"})

@api_view(['POST'])
def addFeedback(request):
	data=request.data
	if request.method=="POST":
		user_id=data.get("user_id")
		feedback=data.get("feedback")
		uid=tb_user.objects.get(id=user_id)
		uname=tb_user.objects.all().filter(id=user_id)
		for x in uname:
			name=x.name
		tdate=date.today()
		aa=tb_feedback(user_id=uid,feedback=feedback,date=tdate,username=name).save()
		return Response({"status": "success"})
	else:
		return Response({"status": "success"})
@api_view(['POST'])
def viewFeedback(request):
	data=request.data
	user_id=data.get("user_id")
	aa=tb_feedback.objects.all()
	serializer=FeedbackSerializer(aa,many=True)
	return Response(serializer.data)
	
@api_view(['POST'])
def orderitem(request):
	data=request.data
	user_id=data.get("user_id")
	property_id=data.get("property_id")
	amount=data.get("amount")
	if request.method=="POST":
		tdate=date.today()
		uid=tb_user.objects.get(id=user_id)
		pid=tb_property.objects.get(id=property_id)
		aa=tb_order(uid=uid,property_id=pid,date=tdate,amount=amount).save()
		return Response({"status": "success"})
	else:
		return Response({"status": "error"})






@api_view(['POST'])
def getpropertyData(request):
	data = request.data
	user_id = data.get("user_id")
	aa=tb_favourites.objects.all().exclude(user_id=user_id)
	sqlQuery='SELECT * FROM `realestateapp_tb_property` LEFT JOIN `realestateapp_tb_favourites` ON `realestateapp_tb_property`.`id` = `realestateapp_tb_favourites`.`property_id_id` WHERE `realestateapp_tb_favourites`.`user_id_id`='+str(user_id)+''
	# sqlQuery='SELECT CONCAT( '[', GROUP_CONCAT(JSON_OBJECT('pro_type',pro_type,'category',category,'location',location,'img',img,'area_measure',area_measure,'price',price,'description',description,'contact',contact)),']')FROM `realestateapp_tb_property` LEFT JOIN `realestateapp_tb_favourites` ON `realestateapp_tb_property`.`id` = `realestateapp_tb_favourites`.`property_id_id` WHERE `realestateapp_tb_favourites`.`user_id_id` = '2';'
	# sqlQuery='SELECT CONCAT('[', GROUP_CONCAT(JSON_OBJECT ('pro_type', pro_type,'category',category,'location',location,'img',img)), ']')FROM `realestateapp_tb_property` LEFT JOIN `realestateapp_tb_favourites` ON `realestateapp_tb_property`.`id`=`realestateapp_tb_favourites`.`property_id_id`'
	cursor=connection.cursor()
	data = cursor.execute(sqlQuery)
	row = cursor.fetchone()
	result = {'data':row}
	# fav = tb_user.objects.raw(sqlQuery)
	# print("----",fav)
	# return JsonResponse(result, safe=True)
	return HttpResponse(row, content_type='application/json')



#-------------------------------------------------------
#-------------CHAT--------------------------------------

@api_view(['POST'])
def UserList(request):
	data=request.data
	user_id=data.get("user_id")
	aa=tb_user.objects.all().exclude(id=user_id)
	serializer = UserSerializer(aa, many=True)
	return Response(serializer.data)
@api_view(['POST'])
def chat(request):
	data=request.data
	if request.method=="POST":
		sender_id=data.get("sender_id")
		receiver_id=data.get("receiver_id")
		send_msg=data.get("send_msg")
		sid=tb_user.objects.get(id=sender_id)
		rid=tb_user.objects.get(id=receiver_id)
		aa=tb_chat(sender_id=sid,receiver_id=rid,send_msg=send_msg).save()
		return Response({"status": "success"})
	else:
		return Response({"status": "error"})
@api_view(['POST'])
def viewChat(request):
	data=request.data
	sender_id=data.get("sender_id")
	receiver_id=data.get("receiver_id")
	aa=tb_chat.objects.all().filter(sender_id=sender_id,receiver_id=receiver_id)
	serializer = ChatSerializer(aa, many=True)
	return Response(serializer.data)

#-------------------------------------------------------
#-------------ADMIN-------------------------------------
def admin_login(request):
	if request.method=="POST":
		email=request.POST['email']
		pswd=request.POST['pswd']
		aa=tb_admin.objects.all().filter(email=email,pswd=pswd,utype='admin')
		if aa:
			for x in aa:
				request.session['id']=x.id
				return HttpResponseRedirect('/admin_home/')
				# return render(request,'admin_home.html')
		else:
			return render(request,'admin_login.html')
	else:
		return render(request,'admin_login.html')
def admin_home(request):
	return render(request,'admin_home.html')
def admin_userlist(request):
	var=tb_user.objects.all()
	return render(request,'admin_userlist.html',{'var':var})
def admin_deleteUser(request):
	ii=request.GET['id']
	var=tb_user.objects.all().filter(id=ii).delete()
	return HttpResponseRedirect('/admin_userlist/')
def admin_propertylist(request):
	var=tb_property.objects.all()
	return render(request,'admin_propertylist.html',{'var':var})
def admin_deleteProperty(request):
	ii=request.GET['id']
	var=tb_property.objects.all().filter(id=ii).delete()
	return HttpResponseRedirect('/admin_propertylist/')
def admin_feedback(request):
	# myid=request.session['id']
	var=tb_feedback.objects.all()
	return render(request,'admin_feedback.html',{'var':var})
def logout(request):
	if request.session.has_key('id'):
		del request.session['id']
		logout(request)
		return HttpResponseRedirect('/login/')



# class home(object):
# 	"""docstring for home"""
# 	def __init__(self, arg):
# 		super(home, self).__init__()
# 		self.arg = arg
		