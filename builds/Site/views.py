from django.shortcuts import render,redirect,HttpResponseRedirect
from buildApp.models import *
import datetime
from django.contrib import messages
#######################Site###############################
def index(request):
	category = Category_tb.objects.all().filter(deleted_status="False").exclude(category_image="")
	products = Products_tb.objects.all().filter(deleted_status="False").exclude(product_image="").exclude(product_image1="") \
		.exclude(product_image2="").exclude(product_image3="").exclude(product_image_main="").order_by('-id')[:10]
	print("cat",category,products)
	gallery = Gallery_tb.objects.all().filter(delete_status="False").exclude(gallery_type="Gallery").exclude(latest_product="").order_by('-id')[:4]
	data = {'category': category, 'last_products': products, 'gallery': gallery}
	g_ids=[]
	i=0
	c = gallery.count()
	if c >= 4:
		for g in gallery:
			print(gallery.count())
			g_ids.append(g)
		print(g_ids)
		data['img1']=g_ids[0]
		data['img2']=g_ids[1]
		data['img3'] = g_ids[2]
		data['img4'] = g_ids[3]


	# data={'category':category,'last_products':products,'gallery':gallery,'img1':image1,'img2':image2,
	# 	  'img3':image3,'img4':image4}
	return render(request,'site/index.html',data)

def gallery(request):
	gallery =Gallery_tb.objects.all().filter(delete_status="False").exclude(gallery="").order_by('-id')
	data ={'gallery':gallery}
	print(gallery)
	return render(request,'site/gallery.html',data)

def contact(request):
	if request.method == "POST":
		name = request.POST['name']
		email = request.POST['email']
		phone = request.POST['phone']
		subject = request.POST['subject']
		details = request.POST['details']
		current_date = datetime.datetime.now().date()
		check = ContactUs_tb.objects.all().filter(name=name,email=email,phone=phone,subject=subject,details=details)
		if check:
			messages.add_message(request, messages.ERROR, 'Failed! Message  Already Send!!')
			return redirect('contact')
		else:
			add = ContactUs_tb(name=name,email=email,phone=phone,subject=subject,details=details,date=current_date)
			add.save()
			messages.add_message(request, messages.SUCCESS, 'Message Successfully Send!')
			return redirect('contact')
	else:
		return render(request, 'site/contact.html')

def about(request):
    return render(request,'site/about.html')

def blog(request):
    return render(request,'site/blog-details.html')

def catalogue(request):
	products = Products_tb.objects.all().filter(deleted_status="False").exclude(product_image="").exclude(product_image1="") \
		.exclude(product_image2="").exclude(product_image3="").exclude(product_image_main="").order_by('-id')[:10]
	context= {'last_products': products}
	return render(request,'site/catalogue.html',context)

def product(request):
	products=Products_tb.objects.all().filter(deleted_status="False").exclude(product_image="").exclude(product_image1="")\
		.exclude(product_image2="").exclude(product_image3="").exclude(product_image_main="")
	print(products)
	context= {'products':products }
	return render(request,'site/product.html',context)

def productDetails(request,id):
	# ids=request.GET['id']
	ids=id
	fromform=Products_tb.objects.get(id=ids)#id=ids(.order_by('-id'))
	category = fromform.category
	print(category)
	recent = Products_tb.objects.all().filter(deleted_status="False").exclude(id=ids).exclude(product_image="").exclude(product_image1="")\
		.exclude(product_image2="").exclude(product_image3="").exclude(product_image_main="")[:6]
	print(recent)
	context= {'x':fromform,'recent':recent}
	return render(request,'site/productDetails.html',context)

def category_product(request,cat_name,id):

	print(id)
	products=Products_tb.objects.filter(category__id=id).filter(deleted_status="False").order_by('product_name')
	context= {'products':products,'category_name':cat_name }
	return render(request,'site/productTile.html',context)
def productTile(request):
	products=Products_tb.objects.all().filter(deleted_status="False")
	context= {'products':products }
	return render(request,'site/productTile.html',context)
def productSanitaryWare(request):
    return render(request,'site/productSanitaryWare.html')

def productBathFitting(request):
    return render(request,'site/productBathFitting.html')

def productShowerPanel(request):
    return render(request,'site/productShowerPanel.html')

def productJacuzzi(request):
    return render(request,'site/productJacuzzi.html')

def productSpaArtBasin(request):
    return render(request,'site/productSpaArtBasin.html')

def productCabinetLedMirrors(request):
    return render(request,'site/productCabinet&LedMirrors.html')

def tile(request):
    return render(request,'site/tile.html')

def sanitaryware(request):
    return render(request,'site/sanitaryware.html')

def bathroomfitting(request):
    return render(request,'site/bathroomfitting.html')

def showerpanel(request):
    return render(request,'site/showerpanel.html')

def jacuzzi(request):
    return render(request,'site/jacuzzi.html')

def spaartbasin(request):
    return render(request,'site/spaartbasin.html')

def cabinetledmirrors(request):
    return render(request,'site/cabinetledmirrors.html')

def newsLetter(request):
	if request.method == "POST":
		email = request.POST['email']
		check = NewsLetter_tb.objects.all().filter(email=email)
		current_date = datetime.datetime.now().date()		
		if check:
			messages.add_message(request, messages.ERROR, 'Failed!  Email  Already Submitted!!')
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
		else:
			add = NewsLetter_tb(email=email,date=current_date)
			add.save()
			messages.add_message(request, messages.SUCCESS, 'Email Successfully Submitted!')
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
	else:
		return HttpResponseRedirect(request.META.get('HTTP_REFERER'))

def getPrice(request):
	if request.method == "POST":
		ids=request.GET['id']
		pids=Products_tb.objects.get(id=ids)
		name = request.POST['name']
		phone = request.POST['mobile']
		city = request.POST['city']
		details = request.POST['description']
		# product_id = int(request.POST['product_id'])
		check = GetPrice_tb.objects.all().filter(name=name,phone=phone,city=city,product_id=pids,details=details) #,product_id=product_id
		current_date = datetime.datetime.now().date()		
		if check:
			messages.add_message(request, messages.ERROR, 'Failed!  Details  Already Submitted!!')
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
		else:
			add = GetPrice_tb(name=name,phone=phone,city=city,details=details,product_id=pids,date=current_date) #,product_id=product_id
			add.save()
			messages.add_message(request, messages.SUCCESS, 'Details Successfully Submitted!')
			return HttpResponseRedirect(request.META.get('HTTP_REFERER'))
	else:
		return HttpResponseRedirect(request.META.get('HTTP_REFERER'))