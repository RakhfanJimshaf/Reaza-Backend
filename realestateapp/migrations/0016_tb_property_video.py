# Generated by Django 4.1.2 on 2023-03-07 06:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('realestateapp', '0015_tb_property_img3'),
    ]

    operations = [
        migrations.AddField(
            model_name='tb_property',
            name='video',
            field=models.FileField(default='', upload_to='videos/'),
        ),
    ]
