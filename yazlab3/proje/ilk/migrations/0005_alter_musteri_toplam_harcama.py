# Generated by Django 5.0.4 on 2024-12-23 15:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ilk', '0004_alter_musteri_toplam_harcama'),
    ]

    operations = [
        migrations.AlterField(
            model_name='musteri',
            name='toplam_harcama',
            field=models.FloatField(default=0),
        ),
    ]
