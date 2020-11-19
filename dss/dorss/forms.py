from .models import FeedbackModel, ServiceFormModel, ApplicationModel
from django.forms import *

class FeedbackForm(ModelForm):
    class Meta:
        model = FeedbackModel
        fields = '__all__'

        widgets = {
            'name': TextInput(attrs={
                'type': 'text',
                'class': 'input-group__input',
                'placeholder': 'Сергеев Михаил',
                'required': True
            }),
            'phone': TextInput(attrs={
                'type': 'tel',
                'class': 'input-group__input',
                'placeholder': '8 (954) 342-11-23',
                'required': True
            }),
            'email': EmailInput(attrs={
                'type': 'email',
                'class': 'input-group__input',
                'placeholder': 'adret1224@mail.ru'
            }),
            'body': Textarea(attrs={
                'class': 'input-group__input',
                'placeholder': 'Текст вопроса'
            }),
        }

class ServiceForForm(ModelForm):
    class Meta:
        model = ServiceFormModel
        fields = '__all__'

        widgets = {
            'name': TextInput(attrs={
                'type': 'text',
                'class': 'input-group__input',
                'placeholder': 'Сергеев Михаил',
                'required': True
            }),
            'phone': TextInput(attrs={
                'type': 'tel',
                'class': 'input-group__input',
                'placeholder': '8 (954) 342-11-23',
                'required': True
            }),
            'email': EmailInput(attrs={
                'type': 'email',
                'class': 'input-group__input',
                'placeholder': 'adret1224@mail.ru'
            }),
            'service_name': TextInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Текст вопроса'
            }),
            'comment': Textarea(attrs={
                'class': 'input-group__textarea',
                'placeholder': 'Текст комментария'
            }),
        }

class ApplicationForm(ModelForm):
    class Meta:
        model = ApplicationModel
        fields = '__all__'

        widgets = {
            'name': TextInput(attrs={
                'type': 'text',
                'class': 'input-group__input',
                'placeholder': 'Сергеев Михаил',
                'required': True
            }),
            'phone': TextInput(attrs={
                'type': 'tel',
                'class': 'input-group__input',
                'placeholder': '8 (954) 342-11-23',
                'required': True
            }),
            'email': EmailInput(attrs={
                'type': 'email',
                'class': 'input-group__input',
                'placeholder': 'adret1224@mail.ru'
            }),
            'organization': TextInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Наименование организации',
                'required': True
            }),
            'organization_object': TextInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Наименование объекта',
                'required': True
            }),
            'variety': TextInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Вид асфальта или битума',
                'required': True
            }),
            'quantity': NumberInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Количество',
                'required': True
            }),
            'supply': DateInput(attrs={
                'class': 'input-group__input',
                'placeholder': 'Предполагаемый срок поставки',
                'required': True
            }),
            'comment': Textarea(attrs={
                'class': 'input-group__textarea',
                'placeholder': 'Текст комментария'
            }),
        }