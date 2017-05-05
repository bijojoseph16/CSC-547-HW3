#import threading
import subprocess
import sys

def menu():
	print '-------------------------------------------------------------------------------------------'
	print 'Welcome to the Managment Node. Please select the option from the menu below to go ahead:\n'
	print '1.Get Stats'
	print '2.Get memory intensive containers'
	print '3.Get CPU intensive containers'
	print '4.Exit\n'
	selection = raw_input('Enter the selection: ')
	return selection


def Listen_always():
	while True:
		
		option = menu()
		if option == '4':
			sys.exit(0)
		machine_number = raw_input('Which machine do u want to go ahead with:\n1.CoreOs1\n2.CoreOs2\n')
		#input_user = raw_input('Do you want to get stats(y/n): ')
		
		if option =='1':
			if machine_number == '1':
				#print 'hello'
				p=subprocess.call(['./tt.sh'])
			elif machine_number =='2':
				p=subprocess.call(['./tt1.sh'])
		elif option =='2':
			if machine_number == '1':
				ContainerNumbers = raw_input('Enter the number of containers to be spanned: ')
				p=subprocess.call(['./memory.sh',ContainerNumbers])
				q=subprocess.call(['./memory_start.sh', ContainerNumbers])


def main():
	Listen_always()

if __name__ == '__main__':
	main()
