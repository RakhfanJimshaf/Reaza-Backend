from rest_framework import serializers
from .models import*

class UserSerializer(serializers.ModelSerializer):
	class Meta:
		model=tb_user
		fields='__all__'
class PropertySerializer(serializers.ModelSerializer):
	class Meta:
		model=tb_property
		fields='__all__'

class FavouriteSerializer(serializers.ModelSerializer):
	# level=PropertySerializer(read_only=True)
	class Meta:
		model=tb_favourites
		fields='__all__'

class ChatSerializer(serializers.ModelSerializer):
	class Meta:
		model=tb_chat
		fields='__all__'
class FeedbackSerializer(serializers.ModelSerializer):
	class Meta:
		model=tb_feedback
		fields='__all__'
class OrderSerializer(serializers.ModelSerializer):
	class Meta:
		model=tb_order
		fields='__all__'
