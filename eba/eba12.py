#encoding = utf-8
#PROGRAM WRITTEN BY OGUZ ALP "ALIENOZI" DURAN. 
# https://alienozi.c1.biz for source


import openpyxl
import webbrowser  
import time


datasheet = openpyxl.load_workbook('EBA12.xlsx')
mainsheet = datasheet.get_sheet_by_name("ogrenci_ID")

print ("alienozinin karantina Özel EBA programına hoş geldiniz!")
print ("-------------------------------------------------------")
studentnum = int(input("Kaç tane Öğrenci var? "))
print("Öğrenci Sayısı",  studentnum, "olarak ayarlandı")
input ("EBA'ya girdiniz mi?")

bruh = {
mainsheet.cell(row=i, column=1).value for i in range(2, studentnum+2)

}
print(bruh)

p= 2

for c1 in bruh:
	k1 = c1
	spaget='https://www.eba.gov.tr/ders/proxy/VCollabPlayer_v0.0.626/index.html#/main/studentBasedReportsAssignments?userId='
	pizza='&startDate=1567976400000&endDate=1590441201021&backID=0a862aaf-17e1-adde-6b01-a1e8bf356af6'
	p = p+1
#print(spaget,k1,pizza, sep="")
	myman = spaget + k1 + pizza

	webbrowser.open_new_tab(myman)
	


	continue


print ("İşlem tamadır! İyi Günler. aliensoft enterprises")
#webbrowser.open('https://alienozi.c1.biz')
