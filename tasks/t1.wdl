version 1.0

task t1 {
    input {
        File in
       
    }
    command <<<
        sed -n '2,5p' ~{in} > samplet1out.txt
    >>>
    output {
        File out = "samplet1out.txt"
    }    
}
