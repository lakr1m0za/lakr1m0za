def count_hole(value):
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
        return("Error, wrong input!\nRe-enter.")
    return(count_holes)

if __name__ == '__main__':
    assert count_hole('08824') == 5
    assert count_hole('3246768764.8964') == "Error, wrong input!\nRe-enter."
    assert count_hole('243f4329234c3t324t32c23r') == "Error, wrong input!\nRe-enter."
    assert count_hole('207174512d320426223.832142wed') == "Error, wrong input!\nRe-enter."
    assert count_hole('\'1\'') == "Error, wrong input!\nRe-enter."
