from django.db import models

# Create your models here.
class tb_user(models.Model):
	name=models.CharField(max_length=100)
	email=models.CharField(max_length=100)
	pswd=models.CharField(max_length=100)
	address=models.CharField(max_length=500,default='')
	phone=models.CharField(max_length=500,default='')
	status=models.CharField(max_length=100,default='pending')

class tb_admin(models.Model):
	email=models.CharField(max_length=100)
	pswd=models.CharField(max_length=100)
	utype=models.CharField(max_length=100,default='')

class tb_property(models.Model):
	user_id=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True)
	pro_type=models.CharField(max_length=100)
	category=models.CharField(max_length=100,default='')
	location=models.CharField(max_length=100)
	img=models.ImageField(upload_to='pics/',default='')
	area_measure=models.CharField(max_length=200)
	price=models.CharField(max_length=100)
	description=models.CharField(max_length=1000)
	contact=models.CharField(max_length=100)
	status=models.CharField(max_length=100,default='pending')
	#fav_status=models.CharField(max_length=100,default='pending')

class tb_favourites(models.Model):
	user_id=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True)
	property_id=models.ForeignKey(tb_property,on_delete=models.CASCADE, blank=True,null=True)
	fav_status=models.CharField(max_length=100,default='pending')
	pro_type=models.CharField(max_length=100,default='')
	category=models.CharField(max_length=100,default='')
	location=models.CharField(max_length=100,default='')
	img=models.ImageField(upload_to='pics/',default='')
	area_measure=models.CharField(max_length=200,default='')
	price=models.CharField(max_length=100,default='')
	description=models.CharField(max_length=100,default='')
	contact=models.CharField(max_length=100,default='')

class tb_chat(models.Model):
	receiver_id=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True,related_name='frds')
	sender_id=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True)
	send_msg=models.CharField(max_length=500,default='',blank=True)
	reply_msg=models.CharField(max_length=500,default='',blank=True)

class tb_feedback(models.Model):
	user_id=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True)
	feedback=models.CharField(max_length=100,default='')
	date=models.CharField(max_length=100,default='')
	username=models.CharField(max_length=100,default='')
	
class tb_order(models.Model):
	uid=models.ForeignKey(tb_user,on_delete=models.CASCADE, blank=True,null=True)
	property_id=models.ForeignKey(tb_property,on_delete=models.CASCADE, blank=True,null=True)
	date=models.CharField(max_length=100,default='')
	amount=models.CharField(max_length=100,default='')





