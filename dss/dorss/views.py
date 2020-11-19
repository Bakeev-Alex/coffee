from django.shortcuts import render, redirect
from .models import *
from .forms import FeedbackForm, ServiceForForm, ApplicationForm
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def index(request):
    image = ImageModel.objects.all()
    text = IntroImagesModel.objects.get()
    post_index = ProjectsModel.published.all()
    production = ProductionModels.objects.get()
    image_product = ImageProductionModel.objects.all()

    sent = False
    if request.method == 'POST':
        form_feedback = FeedbackForm(request.POST)
        if form_feedback.is_valid():
            form_feedback.save()
            return redirect('/')
            sent = True
    else:
        form_feedback = FeedbackForm()

    content = {
        'image': image,
        'text': text,
        'post_index': post_index,
        'production': production,
        'image_product': image_product,
        'form_feedback': form_feedback,
        'sent': sent
    }

    return render(request, 'dorss/index.html', content)




def news(request):
    news_post = NewsModel.objects.all()
    #production_post = ProductionBlogModel.objects.all()
    service_get = ServiceModel.objects.get()

    if request.method == 'POST':
        form_feedback = FeedbackForm(request.POST)
        if form_feedback.is_valid():
            form_feedback.save()
            return redirect('/service')
    else:
        form_feedback = FeedbackForm()

    object_list = ProductionBlogModel.published.all()
    paginator = Paginator(object_list, 3)
    page = request.GET.get('page')
    try:
        posts = paginator.page(page)
    except PageNotAnInteger:
        posts = paginator.page(1)
    except EmptyPage:
        posts = paginator.page(paginator.num_pages)

    content = {'news_post': news_post,
               'service': service_get,
               'form_feedback': form_feedback,
               'production_post': posts
               }


    return render(request, 'dorss/post/news.html', content)


def service(request):
    service_get = ServiceModel.objects.get()
    post_index = ProjectsModel.published.all()
    image_service = ImageServiceModel.objects.all()

    if request.method == 'POST':
        form_feedback = FeedbackForm(request.POST)
        if form_feedback.is_valid():
            form_feedback.save()
            return redirect('/service')
    else:
        form_feedback = FeedbackForm()


    if request.method == 'POST':
        form_service = ServiceForForm(request.POST)
        if form_service.is_valid():
            form_service.save()
            return redirect('/service')
    else:
        form_service = ServiceForForm()

    if request.method == 'POST':
        form_application = ApplicationForm(request.POST)
        if form_application.is_valid():
            form_application.save()
            return redirect('/service')
    else:
        form_application = ApplicationForm()

    content = {
        'service': service_get,
        'post_index': post_index,
        'image_service': image_service,
        'form_feedback': form_feedback,
        'form_service': form_service,
        'form_application': form_application

    }

    return render(request, 'dorss/post/service.html', content)





