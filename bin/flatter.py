import csv, json, sys

def flattenjson( b, delim ):
    val = {}
    for i in b.keys():
        if isinstance( b[i], dict ):
            get = flattenjson( b[i], delim )
            for j in get.keys():
                val[ i + delim + j ] = get[j]
        else:
            val[i] = b[i]

    return val

input = open(sys.argv[1])
data = json.load(input)
input.close()

data = map( lambda x: flattenjson( x, "__" ), data )

columns = [ x for row in data for x in row.keys() ]
columns = list( set( columns ) )

with open( sys.argv[2], 'wb' ) as out_file:
    csv_w = csv.writer( out_file )
    csv_w.writerow( columns )

    for i_r in data:
        csv_w.writerow( map( lambda x: i_r.get( x, "" ), columns ) )

