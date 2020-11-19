from django.db import models
from django.utils import timezone




# Отображение блока Intro (самый верх)
class ImageModel(models.Model):
    photo = models.ImageField(upload_to='intro/%Y/')

    class Meta:
        verbose_name_plural = 'Изображение верхнего блока'


class IntroImagesModel(models.Model):
    title = models.CharField(max_length=250, blank=True)
    body = models.TextField(blank=True)

    def __str__(self):
        return '%s %s' % (self.title, self.body)

    class Meta:
        verbose_name_plural = 'Контент верхнего блока'

# Отображение блока Production (производственная база)
class ProductionModels(models.Model):
    title = models.CharField(max_length=250, blank=True)
    body = models.TextField(blank=True)
    title_body = models.CharField(max_length=250, blank=True)

    class Meta:
        verbose_name_plural = 'Раздел Production'

    def __str__(self):
        return '%s %s' % (self.title, self.body)


# Отображение блока Production (производственная база) картинки в блоке
class ImageProductionModel(models.Model):
    image = models.ImageField(upload_to='production/%Y/', blank=True)

    class Meta:
        verbose_name_plural = 'Слайдер Production'



# Отображение блока projects (выполненые проекты)
class PublishedManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(status='published')

# Отображение блока projects (выполненые проекты)
class ProjectsModel(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250, unique_for_date='publish')
    body = models.TextField('Текст статьи')
    image = models.ImageField(upload_to='project/%Y/')
    publish = models.DateTimeField(default=timezone.now)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='published')
    title_image = models.CharField('Заголовок картинок', max_length=250, blank=True)
    body_post = models.TextField('Текст на картинке', blank=True)

    class Meta:
        ordering = ('-publish',)
        verbose_name_plural = 'Проекты на главной странице'

    def __str__(self):
        return '%s %s' % (self.title, self.body)

    objects = models.Manager()
    published = PublishedManager()

"""
    def get_absolute_url(self):
        return reverse('project_detail', args=[self.id])
"""




# Отображение блока news (выполненые проекты)
class NewsModel(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250, unique_for_date='publish')
    body = models.TextField('Текст новости')
    image = models.ImageField(upload_to='news/%Y/')
    title_image = models.CharField('Заголовок картинок', max_length=250, blank=True)
    publish = models.DateTimeField(default=timezone.now)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='published')


    class Meta:
        ordering = ('-publish',)
        verbose_name_plural = 'Страница новостей'

    def __str__(self):
        return '%s %s' % (self.title, self.body)

    objects = models.Manager()
    published = PublishedManager()


# Отображение блока news (выполненые проекты)
class ProductionBlogModel(models.Model):
    STATUS_CHOICES = (
        ('draft', 'Draft'),
        ('published', 'Published'),
    )
    title = models.CharField(max_length=250)
    slug = models.SlugField(max_length=250, unique_for_date='publish')
    body = models.TextField('Текст новости')
    image = models.ImageField(upload_to='news/%Y/')
    publish = models.DateTimeField(default=timezone.now)
    status = models.CharField(max_length=10, choices=STATUS_CHOICES, default='published')


    class Meta:
        ordering = ('-publish',)
        verbose_name_plural = 'Производственная база Блог'

    def __str__(self):
        return '%s %s' % (self.title, self.body)

    objects = models.Manager()
    published = PublishedManager()


class ServiceModel(models.Model):
    title = models.CharField(max_length=250)
    price = models.CharField(max_length=100, blank=True)
    body = models.TextField()
    body_center = models.TextField(blank=True)
    title_project = models.CharField(max_length=200)
    title_table = models.CharField(max_length=250, blank=True)
    body_table = models.TextField(blank=True)

    class Meta:
        verbose_name_plural = 'Страница сервис'

    def __str__(self):
        return self.title

class ImageServiceModel(models.Model):
    image_serv = models.FileField(upload_to='service/%Y/')

    class Meta:
        verbose_name_plural = 'Изображения service'

class FeedbackModel(models.Model):
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=50)
    email = models.EmailField()
    body = models.TextField()

    class Meta:
        verbose_name_plural = 'Обратная связь'

class ServiceFormModel(models.Model):
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=50)
    email = models.EmailField()
    service_name = models.CharField(max_length=250)
    comment = models.TextField()

    class Meta:
        verbose_name_plural = 'Заказать услугу'

class ApplicationModel(models.Model):
    name = models.CharField('Имя', max_length=100)
    phone = models.CharField('Телефон', max_length=50)
    email = models.EmailField('Email', )
    organization = models.CharField('Организация', max_length=200)
    organization_object = models.CharField('Объект', max_length=200)
    variety = models.CharField('Вид покрытия', max_length=200)
    quantity = models.DecimalField('Количество', max_digits=10, decimal_places=2)
    supply = models.DateField('Срок поставки', max_length=200)
    comment = models.TextField('Коментарий')

    class Meta:
        verbose_name_plural = 'Заказать услугу с покрытием'