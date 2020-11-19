from django import forms
from django.contrib import admin
from .models import *
from ckeditor_uploader.widgets import CKEditorUploadingWidget




# Виджет ckeditor
class IntroImagesAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = IntroImagesModel
        fields = '__all__'

# Изображение intro index
@admin.register(IntroImagesModel)
class IntroImagesAdmin(admin.ModelAdmin):
    list_display = ['title']
    form = IntroImagesAdminForm

# Изображение intro index
@admin.register(ImageModel)
class ImagesAdmin(admin.ModelAdmin):
    list_display = ['photo']

# Производственная база CKEditor
class ProductionAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = ProductionModels
        fields = '__all__'

# Производственная база
@admin.register(ProductionModels)
class ProductionAdmin(admin.ModelAdmin):
    list_display = ['title']
    form = ProductionAdminForm

# Производственная база (Изображение)
@admin.register(ImageProductionModel)
class ProductionImageAdmin(admin.ModelAdmin):
    list_display = ['image']

# Блог проекты
class ProjectAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())
    body_post = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = ProjectsModel
        fields = '__all__'

# Блог проекты
@admin.register(ProjectsModel)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ['title', 'publish', 'status']
    form = ProjectAdminForm

# Блог новостей
class NewsAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = NewsModel
        fields = '__all__'

# Блог новостей
@admin.register(NewsModel)
class NewsAdmin(admin.ModelAdmin):
    list_display = ['title', 'publish', 'status']
    form = NewsAdminForm

# Блог продукции
class ProductionBlogAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = ProductionBlogModel
        fields = '__all__'

# Блог продукции
@admin.register(ProductionBlogModel)
class ProductionBlogAdmin(admin.ModelAdmin):
    list_display = ['title', 'publish', 'status']
    form = ProductionBlogAdminForm



# Текст услуги
class ServiceAdminForm(forms.ModelForm):
    body = forms.CharField(widget=CKEditorUploadingWidget())
    body_center = forms.CharField(widget=CKEditorUploadingWidget())
    body_table = forms.CharField(widget=CKEditorUploadingWidget())

    class Meta:
        model = ServiceModel
        fields = '__all__'

# Текст услуги
@admin.register(ServiceModel)
class ServiceAdmin(admin.ModelAdmin):
    list_display = ['title', 'title_table']
    form = ServiceAdminForm

# слайдер услуги
@admin.register(ImageServiceModel)
class ImageServiceAdmin(admin.ModelAdmin):
    list_display = ['image_serv']

# обратная связь
@admin.register(FeedbackModel)
class FeedbackAdmin(admin.ModelAdmin):
    list_display = ['name', 'phone', 'email']

# форма заявки
@admin.register(ServiceFormModel)
class ServiceFormAdmin(admin.ModelAdmin):
    list_display = ['name', 'phone', 'email']

# форма заявки (с организацией)
@admin.register(ApplicationModel)
class ApplicationAdmin(admin.ModelAdmin):
    list_display = ['name', 'phone', 'email', 'organization', 'supply']