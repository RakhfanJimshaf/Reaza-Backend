# Generated by Django 4.1.2 on 2023-02-25 09:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('realestateapp', '0014_tb_property_img1_tb_property_img2'),
    ]

    operations = [
        migrations.AddField(
            model_name='tb_property',
            name='img3',
            field=models.ImageField(default='', upload_to='pics/'),
        ),
    ]
