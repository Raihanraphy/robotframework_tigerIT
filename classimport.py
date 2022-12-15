def run(val):
    x=val
    x=x.split(':')
    x=str(x[1])
    x=x.replace(" ",'')
    return x
print(run("Username : Admin"))