# Generated by Django 5.0.4 on 2024-12-13 22:16

import django.db.models.deletion
import django.utils.timezone
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Musteri',
            fields=[
                ('musteri_id', models.AutoField(primary_key=True, serialize=False)),
                ('ad', models.CharField(max_length=255)),
                ('kullanici_adi', models.CharField(max_length=255, unique=True)),
                ('sifre', models.CharField(max_length=255)),
                ('is_admin', models.BooleanField(default=False)),
                ('butce', models.FloatField()),
                ('musteri_turu', models.CharField(choices=[('Premium', 'Premium'), ('Standart', 'Standart')], default='Standart', max_length=50)),
                ('toplam_harcama', models.FloatField(default=0)),
            ],
        ),
        migrations.CreateModel(
            name='Urun',
            fields=[
                ('urun_id', models.AutoField(primary_key=True, serialize=False)),
                ('ad', models.CharField(max_length=255)),
                ('stok', models.PositiveIntegerField(default=0)),
                ('fiyat', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='Siparis',
            fields=[
                ('siparis_id', models.AutoField(primary_key=True, serialize=False)),
                ('adet', models.PositiveIntegerField()),
                ('toplam_fiyat', models.FloatField()),
                ('siparis_tarihi', models.DateTimeField(default=django.utils.timezone.now)),
                ('durum', models.CharField(choices=[('Beklemede', 'Beklemede'), ('Tamamlandı', 'Tamamlandı'), ('İptal Edildi', 'İptal Edildi')], default='Beklemede', max_length=50)),
                ('musteri', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='siparisler', to='ilk.musteri')),
                ('urun', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='siparisler', to='ilk.urun')),
            ],
        ),
        migrations.CreateModel(
            name='Log',
            fields=[
                ('log_id', models.AutoField(primary_key=True, serialize=False)),
                ('log_turu', models.CharField(choices=[('Bilgi', 'Bilgi'), ('Uyarı', 'Uyarı'), ('Hata', 'Hata')], max_length=50)),
                ('log_tarihi', models.DateTimeField(default=django.utils.timezone.now)),
                ('detaylar', models.TextField()),
                ('musteri', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='loglar', to='ilk.musteri')),
                ('siparis', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='loglar', to='ilk.siparis')),
            ],
        ),
    ]
