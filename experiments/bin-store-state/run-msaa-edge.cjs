(async()=>{const m=await require('./msaa-edge.js')();process.exit(m._sg_msaa_edge_main());})().catch(e=>{console.error(e);process.exit(1);});
