from django import forms
from django.forms.widgets import RadioSelect
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserChangeForm
class QuestionForm(forms.Form):
    def __init__(self, question, *args, **kwargs):
        super(QuestionForm, self).__init__(*args, **kwargs)
        choice_list = [x for x in question.get_answers_list()]
        self.fields["answers"] = forms.ChoiceField(choices=choice_list, widget=RadioSelect)

class loginForm(forms.Form):
    username = forms.CharField(label='Tài khoản',max_length=30)
    email = forms.EmailField(label='Email')
    first_name=forms.CharField(label='Tên người dùng',min_length=6,max_length=30)
    password1 = forms.CharField(label='Mật khẩu',widget=forms.PasswordInput(),min_length=8)
    password2 = forms.CharField(label='Nhập lại mật khẩu',widget=forms.PasswordInput(),min_length=8)

    def save(self):
        User.objects.create_user(username=self.cleaned_data['username'], email=self.cleaned_data['email'],
                                 first_name=self.cleaned_data['first_name'],password=self.cleaned_data['password1'])

class Editprofilrform(UserChangeForm):
    class Meta:
        model= User
        fields={
            'first_name',
            'email'
        }
