# Generated by Django 3.2.5 on 2022-08-26 05:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='tb_user',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
                ('pswd', models.CharField(max_length=100)),
                ('address', models.CharField(default='', max_length=500)),
                ('phone', models.CharField(default='', max_length=500)),
                ('status', models.CharField(default='pending', max_length=100)),
            ],
        ),
    ]
