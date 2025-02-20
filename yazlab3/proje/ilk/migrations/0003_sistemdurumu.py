# Generated by Django 5.0.4 on 2024-12-23 15:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ilk', '0002_siparis_bekleme_baslangic_siparis_oncelik_skoru'),
    ]

    operations = [
        migrations.CreateModel(
            name='SistemDurumu',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('admin_modu', models.BooleanField(default=False)),
                ('guncellenme_tarihi', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
