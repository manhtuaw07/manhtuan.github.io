from django.conf.urls import url
from .views import QuizListView, CategoriesListView,\
    ViewQuizListByCategory, QuizUserProgressView, QuizMarkingList,\
    QuizMarkingDetail, QuizDetailView, QuizTake, register,aboutapp,home,TNapp,edit_profile,search,index,progress2
from django.urls import path
from django.contrib.auth import views as auth_views

urlpatterns = [
                        url(regex=r'^$', view=home, name='home'),
                        url(regex=r'^index/$', view=index, name='index'),
                        url(regex=r'^Upindex/$', view=edit_profile, name='Upindex'),
                        path('login/',register,name="login"),
                        path('logout/',auth_views.LoginView.as_view(template_name="logout.html"), name="logout"),
                        path('page/',auth_views.LogoutView.as_view(next_page='/'),name='page'),
                        path('about/',aboutapp,name='about'),
                        path('tn/',TNapp,name='tn'),

                        path('password_change_done/',
                             auth_views.PasswordChangeDoneView.as_view(template_name='LoginMK/Change_password_done.html'),
                             name='password_change_done'),

                        path('Change_password/', auth_views.PasswordChangeView.as_view(template_name='LoginMK/Change_password.html'),
                             name='password_change'),

                        path('search/',search),

                        url(regex=r'^quizzes/$', view=QuizListView.as_view(),name='quiz_index'),

                       url(regex=r'^category/$',
                           view=CategoriesListView.as_view(),
                           name='quiz_category_list_all'),

                       url(regex=r'^category/(?P<category_name>[\w|\W-]+)/$',
                           view=ViewQuizListByCategory.as_view(),
                           name='quiz_category_list_matching'),

                       path('progress2/',progress2),
                       url(regex=r'^progress/$',
                           view=QuizUserProgressView.as_view(),
                           name='quiz_progress'),

                       url(regex=r'^marking/$',
                           view=QuizMarkingList.as_view(),
                           name='quiz_marking'),

                       url(regex=r'^marking/(?P<pk>[\d.]+)/$',
                           view=QuizMarkingDetail.as_view(),
                           name='quiz_marking_detail'),

                       #  passes variable 'quiz_name' to quiz_take view
                       url(regex=r'^(?P<slug>[\w-]+)/$',
                           view=QuizDetailView.as_view(),
                           name='quiz_start_page'),

                       url(regex=r'^(?P<quiz_name>[\w-]+)/take/$',
                           view=QuizTake.as_view(),
                           name='quiz_question'),
]