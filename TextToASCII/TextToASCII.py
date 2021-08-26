#Int to N-bits
get_bin = lambda x, n: format(x, 'b').zfill(n)

#Read file and return an list with ASCII values.
def fileToASCII(filename):
    inputFile=open(filename,"rb")
    text=inputFile.read()
    inputFile.close()
    ascii_list=[]
    for c in text:
        #print(c)
        ascii_list.append(c)
    return ascii_list



#File that create an EncodeFile with xor operation
def encodeFile_with_xor(filename, ascii_list,xor_value):
    
    outputFile=open(filename,"w")
    out_list=[]
    for value in ascii_list:
        x=value^xor_value
        out_list.append(x)
        outputFile.write(get_bin(x,32)+" ")
    outputFile.close()
    return out_list


#Encodefile that ascii value plus 2
def encodeFile_with_adder(filename, ascii_list):
    
    outputFile=open(filename,"w")
    out_list=[]
    for value in ascii_list:
        x=value+2
        out_list.append(x)
        outputFile.write(get_bin(x,32)+" ")
    outputFile.close()
    return out_list


#Original file in Bin notation
def fileToBin(filename,ascii_list):
    outputFile=open(filename,"w")
    for c in ascii_list:
        outputFile.write(get_bin(c,32)+" ")
    return 1


def main():
    inputFile=fileToASCII("FileWithoutEncode.txt")
    fileToBin("FileWithoutEncodeInBin.txt",inputFile)
    encodeFile_with_xor("textEncodeXor.txt",inputFile,101)
    encodeFile_with_xor("textEncodeAdder.txt",inputFile,101)
    print("Succesful!")

main()

