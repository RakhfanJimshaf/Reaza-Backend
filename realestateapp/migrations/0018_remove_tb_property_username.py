# Generated by Django 4.1.2 on 2023-04-04 08:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('realestateapp', '0017_tb_property_username_alter_tb_feedback_feedback'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='tb_property',
            name='username',
        ),
    ]
