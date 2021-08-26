
import sys
#import PIL
from PIL import Image

def main(image_name):
    image = Image.open(image_name, 'r')
    pixels = list(image.getdata())
	
    mif_name = image_name.split('.')[0] + '.mif'

    mif_file = open(mif_name, 'w+')

    mif_file.write('DEPTH={};\nWIDTH={};\nADDRESS_RADIX=DEC;\nDATA_RADIX=BIN;\nCONTENT\nBEGIN\n\n'.format(len(pixels), 3))
    address = 0
    for i in range(image.size[1]):
        mif_file.write(str(i * image.size[0]) + ": ")
        for j in range(image.size[0]):
            mif_file.write(' ' + three_bit_conversion(pixels[address]))
            address+=1
        mif_file.write(';\n')

    mif_file.write('END;\n')

    mif_file.close()

    image.close()


def three_bit_conversion(rgb):
    bits = []
    for i in range(len(rgb)):
        if rgb[i] > 125:
            bits.append(1)
        else:
            bits.append(0)

    return "{}{}{}".format(bits[0], bits[1], bits[2])


def main_up(image_name):
    image = Image.open(image_name, 'r')
    pixels = list(image.getdata())
	
    mif_name = image_name.split('.')[0] + '.mif'

    mif_file = open(mif_name, 'w+')

    mif_file.write('DEPTH={};\nWIDTH={};\nADDRESS_RADIX=UNS;\nDATA_RADIX=BIN;\nCONTENT\nBEGIN\n\n'.format(len(pixels), 3))
    address = 0
    for i in range(image.size[1]):
        #mif_file.write(str(i * image.size[0]) + ": ")
        for j in range(image.size[0]):
            mif_file.write(str(address)+ ": ")
            mif_file.write(' ' + three_bit_conversion(pixels[address]))
            mif_file.write(';\n')
            address+=1
        #mif_file.write(';\n')

    mif_file.write('END;\n')

    mif_file.close()

    image.close()


if __name__ == '__main__':
    for arg in sys.argv[1:]:
        main(arg)


main_up("32.png")
main_up("33.png")
main_up("34.png")
main_up("35.png")
main_up("36.png")
main_up("37.png")
main_up("38.png")
main_up("39.png")
main_up("40.png")
main_up("41.png")
main_up("42.png")
main_up("43.png")
main_up("44.png")
main_up("45.png")
main_up("46.png")
main_up("47.png")
main_up("48.png")
main_up("49.png")
main_up("50.png")
main_up("51.png")
main_up("52.png")
main_up("53.png")
main_up("54.png")
main_up("55.png")
main_up("56.png")
main_up("57.png")
main_up("58.png")
main_up("59.png")
main_up("60.png")
main_up("61.png")
main_up("62.png")
main_up("63.png")
main_up("64.png")
main_up("65.png")
main_up("66.png")
main_up("67.png")
main_up("68.png")
main_up("69.png")
main_up("70.png")
main_up("71.png")
main_up("72.png")
main_up("73.png")
main_up("74.png")
main_up("75.png")
main_up("76.png")
main_up("77.png")
main_up("78.png")
main_up("79.png")
main_up("80.png")
main_up("81.png")
main_up("82.png")
main_up("83.png")
main_up("84.png")
main_up("85.png")
main_up("86.png")
main_up("87.png")
main_up("88.png")
main_up("89.png")
main_up("90.png")
main_up("91.png")
main_up("92.png")
main_up("93.png")
main_up("94.png")
main_up("95.png")
main_up("96.png")
main_up("97.png")
main_up("98.png")
main_up("99.png")
main_up("100.png")
main_up("101.png")
main_up("102.png")
main_up("103.png")
main_up("104.png")
main_up("105.png")
main_up("106.png")
main_up("107.png")
main_up("108.png")
main_up("109.png")
main_up("110.png")
main_up("111.png")
main_up("112.png")
main_up("113.png")
main_up("114.png")
main_up("115.png")
main_up("116.png")
main_up("117.png")
main_up("118.png")
main_up("119.png")
main_up("120.png")
main_up("121.png")
main_up("122.png")
main_up("123.png")
main_up("124.png")
main_up("125.png")
main_up("126.png")


