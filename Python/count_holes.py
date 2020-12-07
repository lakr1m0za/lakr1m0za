while True:
    value = input()
    holes = ('0', '4', '6', '8', '9')
    count_holes = 0
    if value.isdigit():    #check for numbers
        if value[0]=='0':
            value = value[1:]
        for i in value:
            if i in holes:
                if i == '8':
                    count_holes += 2
                else:
                    count_holes += 1
    else:
        print("Error, wrong input!\nRe-enter.")
        continue
    print(count_holes)
