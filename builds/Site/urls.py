"""buildmart URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls import path
from .views import *
from .views import *
urlpatterns = [

    ##############################################Site#################################################
    path('', index, name='index'),
    path('gallery/', gallery, name='gallery'),
    path('contact/', contact, name='contact'),
    path('about/', about, name='about'),
    path('blog/', blog, name='blog'),
    path('showroom/', catalogue, name='catalogue'),
    path('product/', product, name='product'),
    path('productDetails/<int:id>', productDetails, name='productDetails'),
    path('products/<str:cat_name>/<int:id>', category_product, name='categorry_products'),

    path('productTile/', productTile, name='productTile'),
    path('productSanitaryWare/', productSanitaryWare, name='productSanitaryWare'),
    path('productBathFitting/', productBathFitting, name='productBathFitting'),
    path('productShowerPanel/', productShowerPanel, name='productShowerPanel'),
    path('productJacuzzi/', productJacuzzi, name='productJacuzzi'),
    path('productSpaArtBasin/', productSpaArtBasin, name='productSpaArtBasin'),
    path('productCabinetLedMirrors/', productCabinetLedMirrors, name='productCabinetLedMirrors'),
    path('tile/', tile, name='tile'),
    path('sanitaryware/', sanitaryware, name='sanitaryware'),
    path('bathroomfitting/', bathroomfitting, name='bathroomfitting'),
    path('showerpanel/', showerpanel, name='showerpanel'),
    path('jacuzzi/', jacuzzi, name='jacuzzi'),
    path('spaartbasin/', spaartbasin, name='spaartbasin'),
    path('cabinetledmirrors/', cabinetledmirrors, name='cabinetledmirrors'),
    


    path('newsLetter/', newsLetter, name='newsLetter'),
    path('getPrice/', getPrice, name='getPrice'),
    









]
