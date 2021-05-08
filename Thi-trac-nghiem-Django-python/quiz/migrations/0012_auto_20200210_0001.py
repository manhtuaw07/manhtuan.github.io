# Generated by Django 2.2.7 on 2020-02-09 17:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('quiz', '0011_remove_quiz_draft'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='quiz',
            name='figure',
        ),
        migrations.AddField(
            model_name='question',
            name='figure',
            field=models.ImageField(blank=True, null=True, upload_to='uploads/%Y/%m/%d', verbose_name='Figure'),
        ),
        migrations.AddField(
            model_name='quiz',
            name='draft',
            field=models.BooleanField(blank=True, default=False, help_text='If yes, the quiz is not displayed in the quiz list and can only be taken by users who can edit quizzes.', verbose_name='Draft'),
        ),
    ]