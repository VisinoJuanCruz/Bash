pila=()




print(){
    echo ${pila[@]}
}

push(){
    pila=("${pila[@]}" $1)
}

length(){
    echo ${#pila[@]}
}

pop(){
    unset pila[-1]
}


push A
print
push B
print
push C
print
push D
print
push E
print
push F
print
push G
print
push H
print
push I
print
push J
print
pop
print
pop
print
pop
print
length
print


