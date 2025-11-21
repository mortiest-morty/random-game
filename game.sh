random_num(){
    local nach=1
    local end=100
    echo $((RANDOM % (end - nach + 1) + nach))
}
