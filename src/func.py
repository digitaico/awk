import Levenshtein as lev 
a = 'clientes.csv'
b = 'ips_rs.csv'

def calc():
    print(lev.distance ('AUDIFARMA SA', 'AUDIIOFARMA SA'))
    print(lev.ratio ('AUDIFARMA SA', 'AUDIIOFARMA SA'))
    print(lev.jaro ('AUDIFARMA SA', 'AUDIIOFARMA SA'))
    print(lev.hamming ('AUDIFARMA SA', 'AUDIIOFARMA SA'))
    print(lev.seqratio (['CAJA', 'COLOMBIANA'], ['CAJA', 'COMPENSACION', 'COLOMBIANA']))


calc()

