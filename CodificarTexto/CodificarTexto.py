
# Completar 8 bits
def complete8Bits(dato):
    
    largoBinario = len(dato)
    while largoBinario != 8:
        dato = "0" + dato
        largoBinario = len(dato)

    return dato

# Completar dato para texto codificado
def encoded_for_memory (textoCodificado, tipoOperacion):
    
    for i in range(len(textoCodificado)):
        
        character_to_ascii = ord(textoCodificado[i]) # convertir caracter a ascii
        int_to_binary = "{0:b}".format(character_to_ascii)

        int_to_binary = complete8Bits(int_to_binary)

        if tipoOperacion == 2:
            dato = "11'h" + str(hex(i*4+12)[2:]) + ": data = 32'b1111_1111_1111_1111_1111_1111_" + int_to_binary + ";"
        else:
            dato = "11'h" + str(hex(i*4+12)[2:]) + ": data = 32'b0000_0000_0000_0000_0000_0000_" + int_to_binary + ";"
        print(dato)

# Codificar a XOR
def encodeToXor(texto, segundo_operando):

    for i in range(len(texto)):
        
        character_to_ascii = ord(texto[i]) # convertir caracter a ascii
        datoXorInt = character_to_ascii ^ segundo_operando # aplicar xor
        datoXorBinary = "{0:b}".format(datoXorInt)  

        datoXorBinary = complete8Bits(datoXorBinary)

        dato = "11'h" + str(hex(i*4+12)[2:]) + ": data = 32'b0000_0000_0000_0000_0000_0000_" + datoXorBinary + ";"
        print(dato)
        
# Codificar a NOT
def encodeToNot(texto):

    for i in range(len(texto)):
        character_to_ascii = ord(texto[i])
        int_to_binary = "{0:b}".format(character_to_ascii)

        int_to_binary = complete8Bits(int_to_binary)

        notBinario = ''
        for j in range(8):
            notBinario = notBinario + str ( int ( not(int(int_to_binary[j]))  ) )

        dato = "11'h" + str(hex(i*4+12)[2:]) + ": data = 32'b1111_1111_1111_1111_1111_1111_" + notBinario + ";"
        print(dato)

# Codificar a SUMA
def encodeToAdd(texto):

    for i in range(len(texto)):
        character_to_ascii = ord(texto[i])
        int_to_binary = "{0:b}".format(character_to_ascii)

        integer_sum = int(int_to_binary, 2) + int('10', 2)
        binary_sum = bin(integer_sum)[2:]

        binary_sum = complete8Bits(binary_sum)
 
        dato = "11'h" + str(hex(i*4+12)[2:]) + ": data = 32'b0000_0000_0000_0000_0000_0000_" + binary_sum + ";"
        print(dato)

# ---------------------
textoDecodificado = "Proyecto Final&"
segundo_operando = 2
encodeToXor(textoDecodificado, segundo_operando)
print("-----------")
encodeToNot(textoDecodificado)
print("-----------")
encodeToAdd(textoDecodificado)
print("-----------")
textoCodificado = "adjeanHio12&"
tipoOperacion = 2
encoded_for_memory(textoCodificado, tipoOperacion)






