# Generated by Django 3.2.5 on 2022-08-30 07:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('realestateapp', '0003_tb_property_category'),
    ]

    operations = [
        migrations.CreateModel(
            name='tb_favourites',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fav_status', models.CharField(default='pending', max_length=100)),
                ('property_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='realestateapp.tb_property')),
                ('user_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='realestateapp.tb_user')),
            ],
        ),
    ]