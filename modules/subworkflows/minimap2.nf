// Include dependencies
if (params.distance == 'near'){
    include {minimap2_near as minimap2} from '../processes/minimap2'
} else if (params.distance == 'medium'){
    include {minimap2_medium as minimap2} from '../processes/minimap2'
} else if (params.distance == 'far') {
    include {minimap2_far as minimap2} from '../processes/minimap2'
} else if (params.distance == 'custom') {
    include {minimap2_custom as minimap2} from '../processes/minimap2'
}
include {axtchain; chainMerge; chainNet; liftover; chain2maf} from "../processes/postprocess"

// Create minimap2 alignments workflow
workflow MINIMAP2 {
    take:
        pairspath_ch
        tgt_lift
        src_lift
        twoBitS
        twoBitT
        twoBitSN
        twoBitTN  

    main:
        // Run minimap2
        minimap2(pairspath_ch, tgt_lift, src_lift)  
        axtchain( minimap2.out.al_files_ch, twoBitS, twoBitT)   

        // 
        chainMerge( axtchain.out.collect() )
        chainNet( chainMerge.out, twoBitS, twoBitT, twoBitSN, twoBitTN )
        chain2maf( chainNet.out[0], twoBitS, twoBitT, twoBitSN, twoBitTN )

    emit:
        chainNet.out.liftover_ch
        chainNet.out.netfile_ch
}
