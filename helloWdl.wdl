version 1.0

import "tasks/t1.wdl" as t1
import "scripts/t2.wdl" as t2
import "t3.wdl" as t3

workflow wf {
    input {
        File firstInput
        File secondInput
        
    }
    call t1.t1 as firstSample {
        input:
        in = firstInput
       

    }
    call t1.t1 as secondSample {
        input:
        in = secondInput
      
    }
    call t2.t2 {
        input:
        in = firstSample.out
        
    }
    call t3.t3 {
        input:
        in = secondSample.out
       
    }
}